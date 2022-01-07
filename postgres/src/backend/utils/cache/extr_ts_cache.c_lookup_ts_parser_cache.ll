; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_lookup_ts_parser_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_lookup_ts_parser_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@TSParserCacheHash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Tsearch parser cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@TSPARSEROID = common dso_local global i32 0, align 4
@InvalidateTSCacheCallBack = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@lastUsedParser = common dso_local global %struct.TYPE_8__* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cache lookup failed for text search parser %u\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"text search parser %u has no prsstart method\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"text search parser %u has no prstoken method\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"text search parser %u has no prsend method\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @lookup_ts_parser_cache(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i32*, i32** @TSParserCacheHash, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = call i32 @MemSet(%struct.TYPE_8__* %5, i32 0, i32 56)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 56, i32* %14, align 4
  %15 = load i32, i32* @HASH_ELEM, align 4
  %16 = load i32, i32* @HASH_BLOBS, align 4
  %17 = or i32 %15, %16
  %18 = call i32* @hash_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 4, %struct.TYPE_8__* %5, i32 %17)
  store i32* %18, i32** @TSParserCacheHash, align 8
  %19 = load i32, i32* @TSPARSEROID, align 4
  %20 = load i32, i32* @InvalidateTSCacheCallBack, align 4
  %21 = load i32*, i32** @TSParserCacheHash, align 8
  %22 = call i32 @PointerGetDatum(i32* %21)
  %23 = call i32 @CacheRegisterSyscacheCallback(i32 %19, i32 %20, i32 %22)
  %24 = load i32, i32* @CacheMemoryContext, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %11
  %27 = call i32 (...) @CreateCacheMemoryContext()
  br label %28

28:                                               ; preds = %26, %11
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastUsedParser, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastUsedParser, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastUsedParser, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastUsedParser, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %2, align 8
  br label %190

45:                                               ; preds = %38, %32, %29
  %46 = load i32*, i32** @TSParserCacheHash, align 8
  %47 = bitcast i64* %3 to i8*
  %48 = load i32, i32* @HASH_FIND, align 4
  %49 = call i64 @hash_search(i32* %46, i8* %47, i32 %48, i32* null)
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %4, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %187, label %58

58:                                               ; preds = %53, %45
  %59 = load i32, i32* @TSPARSEROID, align 4
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @ObjectIdGetDatum(i64 %60)
  %62 = call i32 @SearchSysCache1(i32 %59, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @HeapTupleIsValid(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @GETSTRUCT(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %7, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @OidIsValid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %79, %70
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @OidIsValid(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @elog(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @OidIsValid(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @elog(i32 %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = icmp eq %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i32*, i32** @TSParserCacheHash, align 8
  %108 = bitcast i64* %3 to i8*
  %109 = load i32, i32* @HASH_ENTER, align 4
  %110 = call i64 @hash_search(i32* %107, i8* %108, i32 %109, i32* %8)
  %111 = inttoptr i64 %110 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @Assert(i32 %115)
  br label %117

117:                                              ; preds = %106, %103
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = call i32 @MemSet(%struct.TYPE_8__* %118, i32 0, i32 56)
  %120 = load i64, i64* %3, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 11
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @ReleaseSysCache(i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 10
  %155 = load i32, i32* @CacheMemoryContext, align 4
  %156 = call i32 @fmgr_info_cxt(i32 %152, i32* %154, i32 %155)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 8
  %162 = load i32, i32* @CacheMemoryContext, align 4
  %163 = call i32 @fmgr_info_cxt(i32 %159, i32* %161, i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 6
  %169 = load i32, i32* @CacheMemoryContext, align 4
  %170 = call i32 @fmgr_info_cxt(i32 %166, i32* %168, i32 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @OidIsValid(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %117
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* @CacheMemoryContext, align 4
  %183 = call i32 @fmgr_info_cxt(i32 %179, i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %176, %117
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %53
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %188, %struct.TYPE_8__** @lastUsedParser, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %189, %struct.TYPE_8__** %2, align 8
  br label %190

190:                                              ; preds = %187, %43
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %191
}

declare dso_local i32 @MemSet(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @fmgr_info_cxt(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
