; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_lookup_rowtype_tupdesc_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_lookup_rowtype_tupdesc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }

@RECORDOID = common dso_local global i64 0, align 8
@TYPECACHE_TUPDESC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type %s is not composite\00", align 1
@RecordCacheArrayLen = common dso_local global i64 0, align 8
@RecordCacheArray = common dso_local global %struct.TYPE_11__** null, align 8
@CurrentSession = common dso_local global %struct.TYPE_13__* null, align 8
@tupledesc_id_counter = common dso_local global i64 0, align 8
@RecordIdentifierArray = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"record type has not been registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i64, i64, i32)* @lookup_rowtype_tupdesc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @lookup_rowtype_tupdesc_internal(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @RECORDOID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %17 = call %struct.TYPE_10__* @lookup_type_cache(i64 %15, i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @format_type_be(i64 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %25, %22, %14
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %4, align 8
  br label %121

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = icmp uge i64 %38, 0
  br i1 %39, label %40, label %111

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @RecordCacheArrayLen, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @RecordCacheArray, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @RecordCacheArray, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 %52
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %4, align 8
  br label %121

55:                                               ; preds = %44, %40
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CurrentSession, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %110

60:                                               ; preds = %55
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CurrentSession, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_12__* @dshash_find(i32 %63, i64* %6, i32 0)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %9, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %109

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CurrentSession, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @dsa_get_address(i32 %70, i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %10, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @ensure_record_cache_typmod_slot_exists(i64 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @RecordCacheArray, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %86, i64 %87
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, -1
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load i64, i64* @tupledesc_id_counter, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* @tupledesc_id_counter, align 8
  %97 = load i64*, i64** @RecordIdentifierArray, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CurrentSession, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = call i32 @dshash_release_lock(i32 %102, %struct.TYPE_12__* %103)
  %105 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @RecordCacheArray, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %105, i64 %106
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %4, align 8
  br label %121

109:                                              ; preds = %60
  br label %110

110:                                              ; preds = %109, %55
  br label %111

111:                                              ; preds = %110, %37
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @ereport(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %111
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %121

121:                                              ; preds = %120, %67, %50, %33
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %122
}

declare dso_local %struct.TYPE_10__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local %struct.TYPE_12__* @dshash_find(i32, i64*, i32) #1

declare dso_local i64 @dsa_get_address(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ensure_record_cache_typmod_slot_exists(i64) #1

declare dso_local i32 @dshash_release_lock(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
