; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_indexing.c_CatalogIndexInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_indexing.c_CatalogIndexInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_19__**, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i32*, i32 }
%struct.TYPE_20__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@TTSOpsHeapTuple = common dso_local global i32 0, align 4
@NIL = common dso_local global i64 0, align 8
@UNIQUE_CHECK_YES = common dso_local global i32 0, align 4
@UNIQUE_CHECK_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @CatalogIndexInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CatalogIndexInsert(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %17 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = call i64 @HeapTupleIsHeapOnly(%struct.TYPE_20__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %14, align 4
  br label %131

28:                                               ; preds = %2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %14, align 4
  br label %131

35:                                               ; preds = %28
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %37, align 8
  store %struct.TYPE_18__** %38, %struct.TYPE_18__*** %7, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %40, align 8
  store %struct.TYPE_19__** %41, %struct.TYPE_19__*** %10, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %8, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = call i32 @RelationGetDescr(%struct.TYPE_18__* %45)
  %47 = call i32* @MakeSingleTupleTableSlot(i32 %46, i32* @TTSOpsHeapTuple)
  store i32* %47, i32** %9, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ExecStoreHeapTuple(%struct.TYPE_20__* %48, i32* %49, i32 0)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %125, %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %51
  %56 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %56, i64 %58
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %15, align 8
  %61 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %61, i64 %63
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %16, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  br label %125

71:                                               ; preds = %55
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NIL, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NIL, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @Assert(i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @FormIndexDatum(%struct.TYPE_19__* %104, i32* %105, i32* null, i32* %20, i32* %23)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %71
  %118 = load i32, i32* @UNIQUE_CHECK_YES, align 4
  br label %121

119:                                              ; preds = %71
  %120 = load i32, i32* @UNIQUE_CHECK_NO, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %124 = call i32 @index_insert(%struct.TYPE_18__* %107, i32* %20, i32* %23, i32* %109, %struct.TYPE_18__* %110, i32 %122, %struct.TYPE_19__* %123)
  br label %125

125:                                              ; preds = %121, %70
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %51

128:                                              ; preds = %51
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @ExecDropSingleTupleTableSlot(i32* %129)
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %128, %34, %27
  %132 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %14, align 4
  switch i32 %133, label %135 [
    i32 0, label %134
    i32 1, label %134
  ]

134:                                              ; preds = %131, %131
  ret void

135:                                              ; preds = %131
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @HeapTupleIsHeapOnly(%struct.TYPE_20__*) #2

declare dso_local i32* @MakeSingleTupleTableSlot(i32, i32*) #2

declare dso_local i32 @RelationGetDescr(%struct.TYPE_18__*) #2

declare dso_local i32 @ExecStoreHeapTuple(%struct.TYPE_20__*, i32*, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @FormIndexDatum(%struct.TYPE_19__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @index_insert(%struct.TYPE_18__*, i32*, i32*, i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #2

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
