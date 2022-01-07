; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_accum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_ts_accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32, %struct.TYPE_12__*, i32)* @ts_accum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @ts_accum(i32 %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.TYPE_13__* @DatumGetTSVector(i32 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_12__* @MemoryContextAllocZero(i32 %17, i32 4)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24, %21
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @DatumGetPointer(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_13__*
  %37 = icmp ne %struct.TYPE_13__* %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = call i32 @pfree(%struct.TYPE_13__* %39)
  br label %41

41:                                               ; preds = %38, %32, %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %4, align 8
  br label %81

43:                                               ; preds = %24
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %54, %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %48

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 1
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @insertStatEntry(i32 %66, %struct.TYPE_12__* %67, %struct.TYPE_13__* %68, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @chooseNextStatEntry(i32 %74, %struct.TYPE_12__* %75, %struct.TYPE_13__* %76, i32 0, i32 %77, i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %4, align 8
  br label %81

81:                                               ; preds = %57, %41
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %82
}

declare dso_local %struct.TYPE_13__* @DatumGetTSVector(i32) #1

declare dso_local %struct.TYPE_12__* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_13__*) #1

declare dso_local i32 @insertStatEntry(i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @chooseNextStatEntry(i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
