; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mpirq.c_mp_irq_wake_all.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mpirq.c_mp_irq_wake_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (i32)* }

@mp_irq_obj_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_irq_wake_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %46, %0
  %6 = load i64, i64* %1, align 8
  %7 = load i32, i32* @mp_irq_obj_list, align 4
  %8 = call { i64, i64* } @MP_STATE_PORT(i32 %7)
  %9 = bitcast %struct.TYPE_6__* %2 to { i64, i64* }*
  %10 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i64* } %8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i64* } %8, 1
  store i64* %13, i64** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %6, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %5
  %18 = load i32, i32* @mp_irq_obj_list, align 4
  %19 = call { i64, i64* } @MP_STATE_PORT(i32 %18)
  %20 = bitcast %struct.TYPE_6__* %4 to { i64, i64* }*
  %21 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i64* } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i64* } %19, 1
  store i64* %24, i64** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %1, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %17
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  br label %45

45:                                               ; preds = %35, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %1, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %1, align 8
  br label %5

49:                                               ; preds = %5
  ret void
}

declare dso_local { i64, i64* } @MP_STATE_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
