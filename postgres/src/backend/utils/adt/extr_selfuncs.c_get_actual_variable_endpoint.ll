; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_actual_variable_endpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_actual_variable_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@InvalidBuffer = common dso_local global i64 0, align 8
@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@RecentGlobalXmin = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no data returned for index-only scan\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"unexpected recheck indication from btree\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"found unexpected null value in index \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32*, i32, i32*)* @get_actual_variable_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_actual_variable_endpoint(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %28 = load i64, i64* @InvalidBuffer, align 8
  store i64 %28, i64* %22, align 8
  %29 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %24, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %25, align 8
  %33 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* @RecentGlobalXmin, align 4
  %38 = call i32 @InitNonVacuumableSnapshot(i32 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.TYPE_7__* @index_beginscan(i32 %39, i32 %40, i32* %20, i32 1, i32 0)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %21, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @index_rescan(%struct.TYPE_7__* %44, i32 %45, i32 1, i32* null, i32 0)
  br label %47

47:                                               ; preds = %63, %9
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @index_getnext_tid(%struct.TYPE_7__* %48, i32 %49)
  store i32* %50, i32** %23, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %110

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %23, align 8
  %55 = call i32 @ItemPointerGetBlockNumber(i32* %54)
  %56 = call i32 @VM_ALL_VISIBLE(i32 %53, i32 %55, i64* %22)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @index_fetch_heap(%struct.TYPE_7__* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %47

64:                                               ; preds = %58
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @ExecClearTuple(i32* %65)
  br label %67

67:                                               ; preds = %64, %52
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ERROR, align 4
  %74 = call i32 (i32, i8*, ...) @elog(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @ERROR, align 4
  %82 = call i32 (i32, i8*, ...) @elog(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @index_deform_tuple(i32 %86, i32 %89, i32* %32, i32* %35)
  %91 = getelementptr inbounds i32, i32* %35, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @RelationGetRelationName(i32 %96)
  %98 = call i32 (i32, i8*, ...) @elog(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %83
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @MemoryContextSwitchTo(i32 %100)
  store i32 %101, i32* %27, align 4
  %102 = getelementptr inbounds i32, i32* %32, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @datumCopy(i32 %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %18, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %27, align 4
  %109 = call i32 @MemoryContextSwitchTo(i32 %108)
  store i32 1, i32* %19, align 4
  br label %110

110:                                              ; preds = %99, %47
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* @InvalidBuffer, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i64, i64* %22, align 8
  %116 = call i32 @ReleaseBuffer(i64 %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %119 = call i32 @index_endscan(%struct.TYPE_7__* %118)
  %120 = load i32, i32* %19, align 4
  %121 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %121)
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @InitNonVacuumableSnapshot(i32, i32) #2

declare dso_local %struct.TYPE_7__* @index_beginscan(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @index_rescan(%struct.TYPE_7__*, i32, i32, i32*, i32) #2

declare dso_local i32* @index_getnext_tid(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @VM_ALL_VISIBLE(i32, i32, i64*) #2

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #2

declare dso_local i32 @index_fetch_heap(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @ExecClearTuple(i32*) #2

declare dso_local i32 @elog(i32, i8*, ...) #2

declare dso_local i32 @index_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i32 @MemoryContextSwitchTo(i32) #2

declare dso_local i32 @datumCopy(i32, i32, i32) #2

declare dso_local i32 @ReleaseBuffer(i64) #2

declare dso_local i32 @index_endscan(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
