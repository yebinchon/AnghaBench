; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mpirq.c_mp_irq_find.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mpirq.c_mp_irq_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64* }

@mp_irq_obj_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @mp_irq_find(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @mp_irq_obj_list, align 4
  %11 = call { i64, i64* } @MP_STATE_PORT(i32 %10)
  %12 = bitcast %struct.TYPE_5__* %5 to { i64, i64* }*
  %13 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %12, i32 0, i32 0
  %14 = extractvalue { i64, i64* } %11, 0
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %12, i32 0, i32 1
  %16 = extractvalue { i64, i64* } %11, 1
  store i64* %16, i64** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %9, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %8
  %21 = load i32, i32* @mp_irq_obj_list, align 4
  %22 = call { i64, i64* } @MP_STATE_PORT(i32 %21)
  %23 = bitcast %struct.TYPE_5__* %7 to { i64, i64* }*
  %24 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %23, i32 0, i32 0
  %25 = extractvalue { i64, i64* } %22, 0
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %23, i32 0, i32 1
  %27 = extractvalue { i64, i64* } %22, 1
  store i64* %27, i64** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %2, align 8
  br label %46

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %8

45:                                               ; preds = %8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %47
}

declare dso_local { i64, i64* } @MP_STATE_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
