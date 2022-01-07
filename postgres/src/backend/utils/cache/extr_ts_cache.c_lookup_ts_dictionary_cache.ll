; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_lookup_ts_dictionary_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_lookup_ts_dictionary_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@TSDictionaryCacheHash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Tsearch dictionary cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@TSDICTOID = common dso_local global i32 0, align 4
@InvalidateTSCacheCallBack = common dso_local global i32 0, align 4
@TSTEMPLATEOID = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@lastUsedDictionary = common dso_local global %struct.TYPE_9__* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cache lookup failed for text search dictionary %u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"text search dictionary %u has no template\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"cache lookup failed for text search template %u\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"text search template %u has no lexize method\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"TS dictionary\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@Anum_pg_ts_dict_dictinitoption = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @lookup_ts_dictionary_cache(i64 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %16 = load i32*, i32** @TSDictionaryCacheHash, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = call i32 @MemSet(%struct.TYPE_9__* %5, i32 0, i32 48)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 48, i32* %21, align 4
  %22 = load i32, i32* @HASH_ELEM, align 4
  %23 = load i32, i32* @HASH_BLOBS, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @hash_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 8, %struct.TYPE_9__* %5, i32 %24)
  store i32* %25, i32** @TSDictionaryCacheHash, align 8
  %26 = load i32, i32* @TSDICTOID, align 4
  %27 = load i32, i32* @InvalidateTSCacheCallBack, align 4
  %28 = load i32*, i32** @TSDictionaryCacheHash, align 8
  %29 = call i32 @PointerGetDatum(i32* %28)
  %30 = call i32 @CacheRegisterSyscacheCallback(i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* @TSTEMPLATEOID, align 4
  %32 = load i32, i32* @InvalidateTSCacheCallBack, align 4
  %33 = load i32*, i32** @TSDictionaryCacheHash, align 8
  %34 = call i32 @PointerGetDatum(i32* %33)
  %35 = call i32 @CacheRegisterSyscacheCallback(i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* @CacheMemoryContext, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %18
  %39 = call i32 (...) @CreateCacheMemoryContext()
  br label %40

40:                                               ; preds = %38, %18
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lastUsedDictionary, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lastUsedDictionary, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lastUsedDictionary, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lastUsedDictionary, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %2, align 8
  br label %229

57:                                               ; preds = %50, %44, %41
  %58 = load i32*, i32** @TSDictionaryCacheHash, align 8
  %59 = bitcast i64* %3 to i8*
  %60 = load i32, i32* @HASH_FIND, align 4
  %61 = call i64 @hash_search(i32* %58, i8* %59, i32 %60, i32* null)
  %62 = inttoptr i64 %61 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %4, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = icmp eq %struct.TYPE_9__* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %226, label %70

70:                                               ; preds = %65, %57
  %71 = load i32, i32* @TSDICTOID, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @ObjectIdGetDatum(i64 %72)
  %74 = call i32 @SearchSysCache1(i32 %71, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @HeapTupleIsValid(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %78, %70
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @GETSTRUCT(i32 %83)
  %85 = inttoptr i64 %84 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %8, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @OidIsValid(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @elog(i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %91, %82
  %96 = load i32, i32* @TSTEMPLATEOID, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ObjectIdGetDatum(i64 %99)
  %101 = call i32 @SearchSysCache1(i32 %96, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @HeapTupleIsValid(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* @ERROR, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @elog(i32 %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %105, %95
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @GETSTRUCT(i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %9, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @OidIsValid(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @ERROR, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @elog(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %120, %111
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = icmp eq %struct.TYPE_9__* %127, null
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load i32*, i32** @TSDictionaryCacheHash, align 8
  %131 = bitcast i64* %3 to i8*
  %132 = load i32, i32* @HASH_ENTER, align 4
  %133 = call i64 @hash_search(i32* %130, i8* %131, i32 %132, i32* %11)
  %134 = inttoptr i64 %133 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %4, align 8
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  %140 = load i32, i32* @CacheMemoryContext, align 4
  %141 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %142 = call i32 @AllocSetContextCreate(i32 %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @NameStr(i32 %146)
  %148 = call i32 @MemoryContextCopyAndSetIdentifier(i32 %143, i32 %147)
  br label %163

149:                                              ; preds = %126
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @MemoryContextSetIdentifier(i32 %153, i32* null)
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @MemoryContextReset(i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @NameStr(i32 %160)
  %162 = call i32 @MemoryContextCopyAndSetIdentifier(i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %149, %129
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = call i32 @MemSet(%struct.TYPE_9__* %164, i32 0, i32 48)
  %166 = load i64, i64* %3, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 4
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @OidIsValid(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %163
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @MemoryContextSwitchTo(i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* @TSDICTOID, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @Anum_pg_ts_dict_dictinitoption, align 4
  %190 = call i32 @SysCacheGetAttr(i32 %187, i32 %188, i32 %189, i32* %14)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i32*, i32** @NIL, align 8
  store i32* %194, i32** %12, align 8
  br label %198

195:                                              ; preds = %182
  %196 = load i32, i32* %13, align 4
  %197 = call i32* @deserialize_deflist(i32 %196)
  store i32* %197, i32** %12, align 8
  br label %198

198:                                              ; preds = %195, %193
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = call i32 @PointerGetDatum(i32* %202)
  %204 = call i32 @OidFunctionCall1(i64 %201, i32 %203)
  %205 = call i32 @DatumGetPointer(i32 %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @MemoryContextSwitchTo(i32 %208)
  br label %210

210:                                              ; preds = %198, %163
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @ReleaseSysCache(i32 %211)
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @ReleaseSysCache(i32 %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 6
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @fmgr_info_cxt(i64 %217, i32* %219, i32 %222)
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 3
  store i32 1, i32* %225, align 8
  br label %226

226:                                              ; preds = %210, %65
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %227, %struct.TYPE_9__** @lastUsedDictionary, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %228, %struct.TYPE_9__** %2, align 8
  br label %229

229:                                              ; preds = %226, %55
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %230
}

declare dso_local i32 @MemSet(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextCopyAndSetIdentifier(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @MemoryContextSetIdentifier(i32, i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @deserialize_deflist(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @OidFunctionCall1(i64, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @fmgr_info_cxt(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
