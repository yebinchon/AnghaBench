; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_mask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HEAP_XACT_MASK = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@MASK_MARKER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_mask(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @mask_page_lsn_and_checksum(i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @mask_page_hint_bits(i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @mask_unused_space(i64 %18)
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %103, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @PageGetMaxOffsetNumber(i64 %22)
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %106

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PageGetItemId(i64 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @ItemIdGetOffset(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @ItemIdIsNormal(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %25
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = call i32 @HeapTupleHeaderXminFrozen(%struct.TYPE_10__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @HEAP_XACT_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %63

50:                                               ; preds = %37
  %51 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %50, %43
  %64 = load i32, i32* @MASK_MARKER, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = call i64 @HeapTupleHeaderIsSpeculative(%struct.TYPE_10__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ItemPointerSet(i32* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %63
  br label %80

80:                                               ; preds = %79, %25
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @ItemIdHasStorage(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ItemIdGetLength(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @MAXALIGN(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* @MASK_MARKER, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @memset(i8* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %84
  br label %102

102:                                              ; preds = %101, %80
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %20

106:                                              ; preds = %20
  ret void
}

declare dso_local i32 @mask_page_lsn_and_checksum(i64) #1

declare dso_local i32 @mask_page_hint_bits(i64) #1

declare dso_local i32 @mask_unused_space(i64) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i64 @ItemIdGetOffset(i32) #1

declare dso_local i64 @ItemIdIsNormal(i32) #1

declare dso_local i32 @HeapTupleHeaderXminFrozen(%struct.TYPE_10__*) #1

declare dso_local i64 @HeapTupleHeaderIsSpeculative(%struct.TYPE_10__*) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i32) #1

declare dso_local i64 @ItemIdHasStorage(i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
