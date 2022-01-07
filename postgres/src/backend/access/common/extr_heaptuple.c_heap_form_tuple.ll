; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_form_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_form_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@MaxTupleAttributeNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TOO_MANY_COLUMNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"number of columns (%d) exceeds limit (%d)\00", align 1
@HeapTupleHeaderData = common dso_local global i32 0, align 4
@t_bits = common dso_local global i32 0, align 4
@HEAPTUPLESIZE = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @heap_form_tuple(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_TOO_MANY_COLUMNS, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = call i32 @ereport(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %3
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i32, i32* @HeapTupleHeaderData, align 4
  %48 = load i32, i32* @t_bits, align 4
  %49 = call i32 @offsetof(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @BITMAPLEN(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @MAXALIGN(i32 %58)
  store i32 %59, i32* %9, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @heap_compute_data_size(%struct.TYPE_12__* %60, i32* %61, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @HEAPTUPLESIZE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i64 @palloc0(i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %7, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = bitcast %struct.TYPE_14__* %72 to i8*
  %74 = load i32, i32* @HEAPTUPLESIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = bitcast i8* %76 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %8, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = call i32 @ItemPointerSetInvalid(i32* %84)
  %86 = load i32, i32* @InvalidOid, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_13__* %89, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_13__* %92, i32 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_13__* %97, i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = call i32 @ItemPointerSetInvalid(i32* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @HeapTupleHeaderSetNatts(%struct.TYPE_13__* %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = bitcast %struct.TYPE_13__* %114 to i8*
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %57
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  br label %129

128:                                              ; preds = %57
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i32* [ %127, %124 ], [ null, %128 ]
  %131 = call i32 @heap_fill_tuple(%struct.TYPE_12__* %111, i32* %112, i32* %113, i8* %118, i32 %119, i32* %121, i32* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %132
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @BITMAPLEN(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @heap_compute_data_size(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetNatts(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @heap_fill_tuple(%struct.TYPE_12__*, i32*, i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
