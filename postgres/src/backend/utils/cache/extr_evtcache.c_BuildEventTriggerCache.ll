; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_evtcache.c_BuildEventTriggerCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_evtcache.c_BuildEventTriggerCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@EventTriggerCacheContext = common dso_local global i32* null, align 8
@CacheMemoryContext = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"EventTriggerCache\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@EVENTTRIGGEROID = common dso_local global i32 0, align 4
@InvalidateEventCacheCallback = common dso_local global i32 0, align 4
@ETCS_REBUILD_STARTED = common dso_local global i64 0, align 8
@EventTriggerCacheState = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Event Trigger Cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@EventTriggerRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@EventTriggerNameIndexId = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@TRIGGER_DISABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"ddl_command_start\00", align 1
@EVT_DDLCommandStart = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ddl_command_end\00", align 1
@EVT_DDLCommandEnd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"sql_drop\00", align 1
@EVT_SQLDrop = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"table_rewrite\00", align 1
@EVT_TableRewrite = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_evttags = common dso_local global i32 0, align 4
@pg_qsort_strcmp = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@EventTriggerCache = common dso_local global i32* null, align 8
@ETCS_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @BuildEventTriggerCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildEventTriggerCache() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = load i32*, i32** @EventTriggerCacheContext, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32*, i32** @EventTriggerCacheContext, align 8
  %20 = call i32 @MemoryContextResetAndDeleteChildren(i32* %19)
  br label %33

21:                                               ; preds = %0
  %22 = load i32*, i32** @CacheMemoryContext, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @CreateCacheMemoryContext()
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** @CacheMemoryContext, align 8
  %28 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %29 = call i32* @AllocSetContextCreate(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32* %29, i32** @EventTriggerCacheContext, align 8
  %30 = load i32, i32* @EVENTTRIGGEROID, align 4
  %31 = load i32, i32* @InvalidateEventCacheCallback, align 4
  %32 = call i32 @CacheRegisterSyscacheCallback(i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i32*, i32** @EventTriggerCacheContext, align 8
  %35 = call i32* @MemoryContextSwitchTo(i32* %34)
  store i32* %35, i32** %3, align 8
  %36 = load i64, i64* @ETCS_REBUILD_STARTED, align 8
  store i64 %36, i64* @EventTriggerCacheState, align 8
  %37 = call i32 @MemSet(%struct.TYPE_11__* %1, i32 0, i32 16)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i32 4, i32* %39, align 4
  %40 = load i32*, i32** @EventTriggerCacheContext, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load i32, i32* @HASH_ELEM, align 4
  %43 = load i32, i32* @HASH_BLOBS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @HASH_CONTEXT, align 4
  %46 = or i32 %44, %45
  %47 = call i32* @hash_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 32, %struct.TYPE_11__* %1, i32 %46)
  store i32* %47, i32** %2, align 8
  %48 = load i32, i32* @EventTriggerRelationId, align 4
  %49 = load i32, i32* @AccessShareLock, align 4
  %50 = call i32 @relation_open(i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @EventTriggerNameIndexId, align 4
  %52 = load i32, i32* @AccessShareLock, align 4
  %53 = call i32 @index_open(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @systable_beginscan_ordered(i32 %54, i32 %55, i32* null, i32 0, i32* null)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %160, %103, %74, %33
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ForwardScanDirection, align 4
  %60 = call i32 @systable_getnext_ordered(i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @HeapTupleIsValid(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %161

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @GETSTRUCT(i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %8, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRIGGER_DISABLED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %57

75:                                               ; preds = %65
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @NameStr(i32 %78)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @EVT_DDLCommandStart, align 4
  store i32 %84, i32* %10, align 4
  br label %107

85:                                               ; preds = %75
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @EVT_DDLCommandEnd, align 4
  store i32 %90, i32* %10, align 4
  br label %106

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @EVT_SQLDrop, align 4
  store i32 %96, i32* %10, align 4
  br label %105

97:                                               ; preds = %91
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @EVT_TableRewrite, align 4
  store i32 %102, i32* %10, align 4
  br label %104

103:                                              ; preds = %97
  br label %57

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %83
  %108 = call %struct.TYPE_13__* @palloc0(i32 24)
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %11, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @Anum_pg_event_trigger_evttags, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @RelationGetDescr(i32 %121)
  %123 = call i32 @heap_getattr(i32 %119, i32 %120, i32 %122, i32* %13)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = call i32 @DecodeTextArrayToCString(i32 %127, i32* %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @pg_qsort_strcmp, align 4
  %140 = call i32 @qsort(i32 %135, i32 %138, i32 8, i32 %139)
  br label %141

141:                                              ; preds = %126, %107
  %142 = load i32*, i32** %2, align 8
  %143 = load i32, i32* @HASH_ENTER, align 4
  %144 = call %struct.TYPE_14__* @hash_search(i32* %142, i32* %10, i32 %143, i32* %15)
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %152 = call i32 @lappend(i32 %150, %struct.TYPE_13__* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  br label %160

155:                                              ; preds = %141
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %157 = call i32 @list_make1(%struct.TYPE_13__* %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %147
  br label %57

161:                                              ; preds = %64
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @systable_endscan_ordered(i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @AccessShareLock, align 4
  %166 = call i32 @index_close(i32 %164, i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @AccessShareLock, align 4
  %169 = call i32 @relation_close(i32 %167, i32 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = call i32* @MemoryContextSwitchTo(i32* %170)
  %172 = load i32*, i32** %2, align 8
  store i32* %172, i32** @EventTriggerCache, align 8
  %173 = load i64, i64* @EventTriggerCacheState, align 8
  %174 = load i64, i64* @ETCS_REBUILD_STARTED, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %161
  %177 = load i64, i64* @ETCS_VALID, align 8
  store i64 %177, i64* @EventTriggerCacheState, align 8
  br label %178

178:                                              ; preds = %176, %161
  ret void
}

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32*) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i32* @AllocSetContextCreate(i32*, i8*, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32 @MemSet(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @index_open(i32, i32) #1

declare dso_local i32 @systable_beginscan_ordered(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext_ordered(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @palloc0(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @DecodeTextArrayToCString(i32, i32*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @hash_search(i32*, i32*, i32, i32*) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @list_make1(%struct.TYPE_13__*) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

declare dso_local i32 @index_close(i32, i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
