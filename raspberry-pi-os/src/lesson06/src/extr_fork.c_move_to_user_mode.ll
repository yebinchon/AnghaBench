; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/src/lesson06/src/extr_fork.c_move_to_user_mode.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/src/lesson06/src/extr_fork.c_move_to_user_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i64, i32, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@PSR_MODE_EL0t = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_to_user_mode(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %11 = call %struct.pt_regs* @task_pt_regs(%struct.TYPE_6__* %10)
  store %struct.pt_regs* %11, %struct.pt_regs** %8, align 8
  %12 = load i32, i32* @PSR_MODE_EL0t, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 2, %18
  %20 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %23 = call i64 @allocate_user_page(%struct.TYPE_6__* %22, i32 0)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @memcpy(i64 %28, i64 %29, i64 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_pgd(i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %26
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.TYPE_6__*) #1

declare dso_local i64 @allocate_user_page(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @set_pgd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
