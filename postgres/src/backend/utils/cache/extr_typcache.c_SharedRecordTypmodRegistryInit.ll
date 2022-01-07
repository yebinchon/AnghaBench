; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_SharedRecordTypmodRegistryInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_SharedRecordTypmodRegistryInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_22__*, i32*, i32* }
%struct.TYPE_22__ = type { i32, i8*, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i8*, %struct.TYPE_23__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }

@CurrentSession = common dso_local global %struct.TYPE_16__* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@srtr_record_table_params = common dso_local global i32 0, align 4
@srtr_typmod_table_params = common dso_local global i32 0, align 4
@NextRecordTypmod = common dso_local global i64 0, align 8
@RecordCacheArray = common dso_local global %struct.TYPE_20__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot create duplicate shared record typmod\00", align 1
@shared_record_typmod_registry_detach = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SharedRecordTypmodRegistryInit(%struct.TYPE_22__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = call i32 (...) @IsParallelWorker()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CurrentSession, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CurrentSession, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CurrentSession, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* @TopMemoryContext, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @dshash_create(i32* %42, i32* @srtr_record_table_params, i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @dshash_create(i32* %45, i32* @srtr_typmod_table_params, i32* null)
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MemoryContextSwitchTo(i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i8* @dshash_get_hash_table_handle(i32* %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i8* @dshash_get_hash_table_handle(i32* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* @NextRecordTypmod, align 8
  %60 = call i32 @pg_atomic_init_u32(i32* %58, i64 %59)
  store i64 0, i64* %10, align 8
  br label %61

61:                                               ; preds = %121, %3
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @NextRecordTypmod, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %124

65:                                               ; preds = %61
  %66 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @RecordCacheArray, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %66, i64 %67
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %15, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %71 = icmp eq %struct.TYPE_20__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %121

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i8* @share_tupledesc(i32* %74, %struct.TYPE_20__* %75, i64 %76)
  store i8* %77, i8** %14, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = call %struct.TYPE_21__* @dshash_find_or_insert(i32* %78, %struct.TYPE_23__* %80, i32* %16)
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %11, align 8
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @ERROR, align 4
  %86 = call i32 @elog(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %73
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = bitcast %struct.TYPE_23__* %89 to i8*
  %93 = bitcast %struct.TYPE_23__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load i8*, i8** %14, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %99 = call i32 @dshash_release_lock(i32* %97, %struct.TYPE_21__* %98)
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %103, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call %struct.TYPE_21__* @dshash_find_or_insert(i32* %104, %struct.TYPE_23__* %13, i32* %16)
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %87
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i8* %112, i8** %116, align 8
  br label %117

117:                                              ; preds = %108, %87
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %120 = call i32 @dshash_release_lock(i32* %118, %struct.TYPE_21__* %119)
  br label %121

121:                                              ; preds = %117, %72
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %61

124:                                              ; preds = %61
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CurrentSession, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CurrentSession, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** @CurrentSession, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  store %struct.TYPE_22__* %131, %struct.TYPE_22__** %133, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @shared_record_typmod_registry_detach, align 4
  %136 = call i32 @on_dsm_detach(i32* %134, i32 %135, i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsParallelWorker(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @dshash_create(i32*, i32*, i32*) #1

declare dso_local i8* @dshash_get_hash_table_handle(i32*) #1

declare dso_local i32 @pg_atomic_init_u32(i32*, i64) #1

declare dso_local i8* @share_tupledesc(i32*, %struct.TYPE_20__*, i64) #1

declare dso_local %struct.TYPE_21__* @dshash_find_or_insert(i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dshash_release_lock(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @on_dsm_detach(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
