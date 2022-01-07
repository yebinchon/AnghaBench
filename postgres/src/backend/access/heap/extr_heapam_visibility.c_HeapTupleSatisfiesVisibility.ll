; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesVisibility.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesVisibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HeapTupleSatisfiesVisibility(i32 %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %46 [
    i32 131, label %11
    i32 129, label %16
    i32 134, label %21
    i32 128, label %26
    i32 133, label %31
    i32 132, label %36
    i32 130, label %41
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @HeapTupleSatisfiesMVCC(i32 %12, %struct.TYPE_10__* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @HeapTupleSatisfiesSelf(i32 %17, %struct.TYPE_10__* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @HeapTupleSatisfiesAny(i32 %22, %struct.TYPE_10__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @HeapTupleSatisfiesToast(i32 %27, %struct.TYPE_10__* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @HeapTupleSatisfiesDirty(i32 %32, %struct.TYPE_10__* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @HeapTupleSatisfiesHistoricMVCC(i32 %37, %struct.TYPE_10__* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @HeapTupleSatisfiesNonVacuumable(i32 %42, %struct.TYPE_10__* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41, %36, %31, %26, %21, %16, %11
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @HeapTupleSatisfiesMVCC(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @HeapTupleSatisfiesSelf(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @HeapTupleSatisfiesAny(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @HeapTupleSatisfiesToast(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @HeapTupleSatisfiesDirty(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @HeapTupleSatisfiesHistoricMVCC(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @HeapTupleSatisfiesNonVacuumable(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
