; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_assign_record_type_typmod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_assign_record_type_typmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@RECORDOID = common dso_local global i64 0, align 8
@RecordCacheHash = common dso_local global i32* null, align 8
@record_type_typmod_hash = common dso_local global i32 0, align 4
@record_type_typmod_compare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Record information cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_COMPARE = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@NextRecordTypmod = common dso_local global i32 0, align 4
@RecordCacheArray = common dso_local global %struct.TYPE_12__** null, align 8
@tupledesc_id_counter = common dso_local global i64 0, align 8
@RecordIdentifierArray = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assign_record_type_typmod(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RECORDOID, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32*, i32** @RecordCacheHash, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = call i32 @MemSet(%struct.TYPE_14__* %7, i32 0, i32 16)
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 8, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32 8, i32* %20, align 4
  %21 = load i32, i32* @record_type_typmod_hash, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @record_type_typmod_compare, align 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @HASH_ELEM, align 4
  %26 = load i32, i32* @HASH_FUNCTION, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HASH_COMPARE, align 4
  %29 = or i32 %27, %28
  %30 = call i32* @hash_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 64, %struct.TYPE_14__* %7, i32 %29)
  store i32* %30, i32** @RecordCacheHash, align 8
  %31 = load i32, i32* @CacheMemoryContext, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = call i32 (...) @CreateCacheMemoryContext()
  br label %35

35:                                               ; preds = %33, %17
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32*, i32** @RecordCacheHash, align 8
  %38 = bitcast %struct.TYPE_12__** %2 to i8*
  %39 = load i32, i32* @HASH_ENTER, align 4
  %40 = call i64 @hash_search(i32* %37, i8* %38, i32 %39, i32* %5)
  %41 = inttoptr i64 %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %104

57:                                               ; preds = %44, %36
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %59, align 8
  %60 = load i32, i32* @CacheMemoryContext, align 4
  %61 = call i32 @MemoryContextSwitchTo(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = call %struct.TYPE_12__* @find_or_make_matching_shared_tupledesc(%struct.TYPE_12__* %62)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = call %struct.TYPE_12__* @CreateTupleDescCopy(%struct.TYPE_12__* %67)
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %4, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @NextRecordTypmod, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @NextRecordTypmod, align 4
  %73 = sext i32 %71 to i64
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %57
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ensure_record_cache_typmod_slot_exists(i64 %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @RecordCacheArray, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %82, i64 %85
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %89, align 8
  %90 = load i64, i64* @tupledesc_id_counter, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* @tupledesc_id_counter, align 8
  %92 = load i64*, i64** @RecordIdentifierArray, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 %91, i64* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @MemoryContextSwitchTo(i32 %102)
  br label %104

104:                                              ; preds = %76, %49
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_12__* @find_or_make_matching_shared_tupledesc(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @CreateTupleDescCopy(%struct.TYPE_12__*) #1

declare dso_local i32 @ensure_record_cache_typmod_slot_exists(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
