; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_get_container.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_get_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { %struct.module* }
%struct.module = type { %struct.TYPE_2__, %struct.module* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.module* (%struct.process*, %struct.module*)* @module_get_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.module* @module_get_container(%struct.process* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.process*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.module*, align 8
  store %struct.process* %0, %struct.process** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.process*, %struct.process** %4, align 8
  %8 = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 0
  %9 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %9, %struct.module** %6, align 8
  br label %10

10:                                               ; preds = %50, %2
  %11 = load %struct.module*, %struct.module** %6, align 8
  %12 = icmp ne %struct.module* %11, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = load %struct.module*, %struct.module** %6, align 8
  %15 = load %struct.module*, %struct.module** %5, align 8
  %16 = icmp ne %struct.module* %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.module*, %struct.module** %6, align 8
  %19 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.module*, %struct.module** %5, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %21, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %17
  %28 = load %struct.module*, %struct.module** %6, align 8
  %29 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.module*, %struct.module** %6, align 8
  %33 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = load %struct.module*, %struct.module** %5, align 8
  %38 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.module*, %struct.module** %5, align 8
  %42 = getelementptr inbounds %struct.module, %struct.module* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = icmp sge i64 %36, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = load %struct.module*, %struct.module** %6, align 8
  store %struct.module* %48, %struct.module** %3, align 8
  br label %55

49:                                               ; preds = %27, %17, %13
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.module*, %struct.module** %6, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 1
  %53 = load %struct.module*, %struct.module** %52, align 8
  store %struct.module* %53, %struct.module** %6, align 8
  br label %10

54:                                               ; preds = %10
  store %struct.module* null, %struct.module** %3, align 8
  br label %55

55:                                               ; preds = %54, %47
  %56 = load %struct.module*, %struct.module** %3, align 8
  ret %struct.module* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
