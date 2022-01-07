; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_lookup_type_cache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_lookup_type_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_20__, i64, i64, %struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TypeCacheHash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Type information cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@TypeCacheRelCallback = common dso_local global i32 0, align 4
@CLAOID = common dso_local global i32 0, align 4
@TypeCacheOpcCallback = common dso_local global i32 0, align 4
@CONSTROID = common dso_local global i32 0, align 4
@TypeCacheConstrCallback = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"type with OID %u does not exist\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"type \22%s\22 is only a shell\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@firstDomainTypeEntry = common dso_local global %struct.TYPE_21__* null, align 8
@TYPECACHE_EQ_OPR = common dso_local global i32 0, align 4
@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_GT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_CMP_PROC = common dso_local global i32 0, align 4
@TYPECACHE_EQ_OPR_FINFO = common dso_local global i32 0, align 4
@TYPECACHE_CMP_PROC_FINFO = common dso_local global i32 0, align 4
@TYPECACHE_BTREE_OPFAMILY = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_BTREE_OPCLASS = common dso_local global i32 0, align 4
@BTREE_AM_OID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@TCFLAGS_CHECKED_EQ_OPR = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_LT_OPR = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_GT_OPR = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_CMP_PROC = common dso_local global i32 0, align 4
@TYPECACHE_HASH_OPFAMILY = common dso_local global i32 0, align 4
@TYPECACHE_HASH_PROC = common dso_local global i32 0, align 4
@TYPECACHE_HASH_PROC_FINFO = common dso_local global i32 0, align 4
@TYPECACHE_HASH_EXTENDED_PROC = common dso_local global i32 0, align 4
@TYPECACHE_HASH_EXTENDED_PROC_FINFO = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_HASH_OPCLASS = common dso_local global i32 0, align 4
@HASH_AM_OID = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_HASH_PROC = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_HASH_EXTENDED_PROC = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@HTEqualStrategyNumber = common dso_local global i32 0, align 4
@ARRAY_EQ_OP = common dso_local global i64 0, align 8
@RECORD_EQ_OP = common dso_local global i64 0, align 8
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@ARRAY_LT_OP = common dso_local global i64 0, align 8
@RECORD_LT_OP = common dso_local global i64 0, align 8
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@ARRAY_GT_OP = common dso_local global i64 0, align 8
@RECORD_GT_OP = common dso_local global i64 0, align 8
@BTORDER_PROC = common dso_local global i32 0, align 4
@F_BTARRAYCMP = common dso_local global i64 0, align 8
@F_BTRECORDCMP = common dso_local global i64 0, align 8
@HASHSTANDARD_PROC = common dso_local global i32 0, align 4
@F_HASH_ARRAY = common dso_local global i64 0, align 8
@F_HASH_RANGE = common dso_local global i64 0, align 8
@HASHEXTENDED_PROC = common dso_local global i32 0, align 4
@F_HASH_ARRAY_EXTENDED = common dso_local global i64 0, align 8
@F_HASH_RANGE_EXTENDED = common dso_local global i64 0, align 8
@TYPECACHE_TUPDESC = common dso_local global i32 0, align 4
@TYPTYPE_COMPOSITE = common dso_local global i64 0, align 8
@TYPECACHE_RANGE_INFO = common dso_local global i32 0, align 4
@TYPTYPE_RANGE = common dso_local global i64 0, align 8
@TYPECACHE_DOMAIN_BASE_INFO = common dso_local global i32 0, align 4
@TYPECACHE_DOMAIN_CONSTR_INFO = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @lookup_type_cache(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32*, i32** @TypeCacheHash, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = call i32 @MemSet(%struct.TYPE_21__* %7, i32 0, i32 216)
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 8, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  store i32 216, i32* %24, align 4
  %25 = load i32, i32* @HASH_ELEM, align 4
  %26 = load i32, i32* @HASH_BLOBS, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @hash_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 64, %struct.TYPE_21__* %7, i32 %27)
  store i32* %28, i32** @TypeCacheHash, align 8
  %29 = load i32, i32* @TypeCacheRelCallback, align 4
  %30 = call i32 @CacheRegisterRelcacheCallback(i32 %29, i32 0)
  %31 = load i32, i32* @CLAOID, align 4
  %32 = load i32, i32* @TypeCacheOpcCallback, align 4
  %33 = call i32 @CacheRegisterSyscacheCallback(i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* @CONSTROID, align 4
  %35 = load i32, i32* @TypeCacheConstrCallback, align 4
  %36 = call i32 @CacheRegisterSyscacheCallback(i32 %34, i32 %35, i32 0)
  %37 = load i32, i32* @TYPEOID, align 4
  %38 = load i32, i32* @TypeCacheConstrCallback, align 4
  %39 = call i32 @CacheRegisterSyscacheCallback(i32 %37, i32 %38, i32 0)
  %40 = load i32, i32* @CacheMemoryContext, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %21
  %43 = call i32 (...) @CreateCacheMemoryContext()
  br label %44

44:                                               ; preds = %42, %21
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32*, i32** @TypeCacheHash, align 8
  %47 = bitcast i64* %3 to i8*
  %48 = load i32, i32* @HASH_FIND, align 4
  %49 = call i64 @hash_search(i32* %46, i8* %47, i32 %48, i32* null)
  %50 = inttoptr i64 %49 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %5, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = icmp eq %struct.TYPE_21__* %51, null
  br i1 %52, label %53, label %155

53:                                               ; preds = %45
  %54 = load i32, i32* @TYPEOID, align 4
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @ObjectIdGetDatum(i64 %55)
  %57 = call i32 @SearchSysCache1(i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @HeapTupleIsValid(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = call i32 @ereport(i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %61, %53
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @GETSTRUCT(i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %9, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @NameStr(i32 %82)
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = call i32 @ereport(i32 %77, i32 %84)
  br label %86

86:                                               ; preds = %76, %68
  %87 = load i32*, i32** @TypeCacheHash, align 8
  %88 = bitcast i64* %3 to i8*
  %89 = load i32, i32* @HASH_ENTER, align 4
  %90 = call i64 @hash_search(i32* %87, i8* %88, i32 %89, i32* %6)
  %91 = inttoptr i64 %90 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = call i32 @MemSet(%struct.TYPE_21__* %97, i32 0, i32 216)
  %99 = load i64, i64* %3, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 30
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 29
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 28
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 27
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 26
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 25
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 24
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 23
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %86
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** @firstDomainTypeEntry, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 22
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %150, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** @firstDomainTypeEntry, align 8
  br label %152

152:                                              ; preds = %147, %86
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @ReleaseSysCache(i32 %153)
  br label %155

155:                                              ; preds = %152, %45
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %158 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @TYPECACHE_CMP_PROC, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @TYPECACHE_EQ_OPR_FINFO, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @TYPECACHE_BTREE_OPFAMILY, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %156, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %221

172:                                              ; preds = %155
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @TCFLAGS_CHECKED_BTREE_OPCLASS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %221, label %179

179:                                              ; preds = %172
  %180 = load i64, i64* %3, align 8
  %181 = load i32, i32* @BTREE_AM_OID, align 4
  %182 = call i64 @GetDefaultOpClass(i64 %180, i32 %181)
  store i64 %182, i64* %10, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i64 @OidIsValid(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load i64, i64* %10, align 8
  %188 = call i8* @get_opclass_family(i64 %187)
  %189 = ptrtoint i8* %188 to i64
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 4
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i8* @get_opclass_input_type(i64 %192)
  %194 = ptrtoint i8* %193 to i64
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 5
  store i64 %194, i64* %196, align 8
  br label %203

197:                                              ; preds = %179
  %198 = load i64, i64* @InvalidOid, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 5
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 4
  store i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %197, %186
  %204 = load i32, i32* @TCFLAGS_CHECKED_EQ_OPR, align 4
  %205 = load i32, i32* @TCFLAGS_CHECKED_LT_OPR, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @TCFLAGS_CHECKED_GT_OPR, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @TCFLAGS_CHECKED_CMP_PROC, align 4
  %210 = or i32 %208, %209
  %211 = xor i32 %210, -1
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* @TCFLAGS_CHECKED_BTREE_OPCLASS, align 4
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %203, %172, %155
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %224 = load i32, i32* @TYPECACHE_EQ_OPR_FINFO, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %222, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %221
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @TCFLAGS_CHECKED_EQ_OPR, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %245, label %235

235:                                              ; preds = %228
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @InvalidOid, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i32, i32* @TYPECACHE_HASH_OPFAMILY, align 4
  %243 = load i32, i32* %4, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %241, %235, %228, %221
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @TYPECACHE_HASH_PROC, align 4
  %248 = load i32, i32* @TYPECACHE_HASH_PROC_FINFO, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @TYPECACHE_HASH_EXTENDED_PROC, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @TYPECACHE_HASH_EXTENDED_PROC_FINFO, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @TYPECACHE_HASH_OPFAMILY, align 4
  %255 = or i32 %253, %254
  %256 = and i32 %246, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %303

258:                                              ; preds = %245
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @TCFLAGS_CHECKED_HASH_OPCLASS, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %303, label %265

265:                                              ; preds = %258
  %266 = load i64, i64* %3, align 8
  %267 = load i32, i32* @HASH_AM_OID, align 4
  %268 = call i64 @GetDefaultOpClass(i64 %266, i32 %267)
  store i64 %268, i64* %11, align 8
  %269 = load i64, i64* %11, align 8
  %270 = call i64 @OidIsValid(i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %265
  %273 = load i64, i64* %11, align 8
  %274 = call i8* @get_opclass_family(i64 %273)
  %275 = ptrtoint i8* %274 to i64
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 6
  store i64 %275, i64* %277, align 8
  %278 = load i64, i64* %11, align 8
  %279 = call i8* @get_opclass_input_type(i64 %278)
  %280 = ptrtoint i8* %279 to i64
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 7
  store i64 %280, i64* %282, align 8
  br label %289

283:                                              ; preds = %265
  %284 = load i64, i64* @InvalidOid, align 8
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 7
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 6
  store i64 %284, i64* %288, align 8
  br label %289

289:                                              ; preds = %283, %272
  %290 = load i32, i32* @TCFLAGS_CHECKED_HASH_PROC, align 4
  %291 = load i32, i32* @TCFLAGS_CHECKED_HASH_EXTENDED_PROC, align 4
  %292 = or i32 %290, %291
  %293 = xor i32 %292, -1
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* @TCFLAGS_CHECKED_HASH_OPCLASS, align 4
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %289, %258, %245
  %304 = load i32, i32* %4, align 4
  %305 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %306 = load i32, i32* @TYPECACHE_EQ_OPR_FINFO, align 4
  %307 = or i32 %305, %306
  %308 = and i32 %304, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %407

310:                                              ; preds = %303
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @TCFLAGS_CHECKED_EQ_OPR, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %407, label %317

317:                                              ; preds = %310
  %318 = load i64, i64* @InvalidOid, align 8
  store i64 %318, i64* %12, align 8
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @InvalidOid, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %317
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 5
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 5
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @BTEqualStrategyNumber, align 4
  %335 = call i64 @get_opfamily_member(i64 %327, i64 %330, i64 %333, i32 %334)
  store i64 %335, i64* %12, align 8
  br label %336

336:                                              ; preds = %324, %317
  %337 = load i64, i64* %12, align 8
  %338 = load i64, i64* @InvalidOid, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %358

340:                                              ; preds = %336
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @InvalidOid, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %346, label %358

346:                                              ; preds = %340
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 6
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 7
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 7
  %355 = load i64, i64* %354, align 8
  %356 = load i32, i32* @HTEqualStrategyNumber, align 4
  %357 = call i64 @get_opfamily_member(i64 %349, i64 %352, i64 %355, i32 %356)
  store i64 %357, i64* %12, align 8
  br label %358

358:                                              ; preds = %346, %340, %336
  %359 = load i64, i64* %12, align 8
  %360 = load i64, i64* @ARRAY_EQ_OP, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %368

362:                                              ; preds = %358
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %364 = call i32 @array_element_has_equality(%struct.TYPE_21__* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %368, label %366

366:                                              ; preds = %362
  %367 = load i64, i64* @InvalidOid, align 8
  store i64 %367, i64* %12, align 8
  br label %379

368:                                              ; preds = %362, %358
  %369 = load i64, i64* %12, align 8
  %370 = load i64, i64* @RECORD_EQ_OP, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %378

372:                                              ; preds = %368
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %374 = call i32 @record_fields_have_equality(%struct.TYPE_21__* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %372
  %377 = load i64, i64* @InvalidOid, align 8
  store i64 %377, i64* %12, align 8
  br label %378

378:                                              ; preds = %376, %372, %368
  br label %379

379:                                              ; preds = %378, %366
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 8
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* %12, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %379
  %386 = load i64, i64* @InvalidOid, align 8
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 19
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 0
  store i64 %386, i64* %389, align 8
  br label %390

390:                                              ; preds = %385, %379
  %391 = load i64, i64* %12, align 8
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 8
  store i64 %391, i64* %393, align 8
  %394 = load i32, i32* @TCFLAGS_CHECKED_HASH_PROC, align 4
  %395 = load i32, i32* @TCFLAGS_CHECKED_HASH_EXTENDED_PROC, align 4
  %396 = or i32 %394, %395
  %397 = xor i32 %396, -1
  %398 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, %397
  store i32 %401, i32* %399, align 8
  %402 = load i32, i32* @TCFLAGS_CHECKED_EQ_OPR, align 4
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 8
  br label %407

407:                                              ; preds = %390, %310, %303
  %408 = load i32, i32* %4, align 4
  %409 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %468

412:                                              ; preds = %407
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @TCFLAGS_CHECKED_LT_OPR, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %468, label %419

419:                                              ; preds = %412
  %420 = load i64, i64* @InvalidOid, align 8
  store i64 %420, i64* %13, align 8
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %421, i32 0, i32 4
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @InvalidOid, align 8
  %425 = icmp ne i64 %423, %424
  br i1 %425, label %426, label %438

426:                                              ; preds = %419
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 4
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 5
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %433, i32 0, i32 5
  %435 = load i64, i64* %434, align 8
  %436 = load i32, i32* @BTLessStrategyNumber, align 4
  %437 = call i64 @get_opfamily_member(i64 %429, i64 %432, i64 %435, i32 %436)
  store i64 %437, i64* %13, align 8
  br label %438

438:                                              ; preds = %426, %419
  %439 = load i64, i64* %13, align 8
  %440 = load i64, i64* @ARRAY_LT_OP, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %448

442:                                              ; preds = %438
  %443 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %444 = call i32 @array_element_has_compare(%struct.TYPE_21__* %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %442
  %447 = load i64, i64* @InvalidOid, align 8
  store i64 %447, i64* %13, align 8
  br label %459

448:                                              ; preds = %442, %438
  %449 = load i64, i64* %13, align 8
  %450 = load i64, i64* @RECORD_LT_OP, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %458

452:                                              ; preds = %448
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %454 = call i32 @record_fields_have_compare(%struct.TYPE_21__* %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %458, label %456

456:                                              ; preds = %452
  %457 = load i64, i64* @InvalidOid, align 8
  store i64 %457, i64* %13, align 8
  br label %458

458:                                              ; preds = %456, %452, %448
  br label %459

459:                                              ; preds = %458, %446
  %460 = load i64, i64* %13, align 8
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 21
  store i64 %460, i64* %462, align 8
  %463 = load i32, i32* @TCFLAGS_CHECKED_LT_OPR, align 4
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %463
  store i32 %467, i32* %465, align 8
  br label %468

468:                                              ; preds = %459, %412, %407
  %469 = load i32, i32* %4, align 4
  %470 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %529

473:                                              ; preds = %468
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @TCFLAGS_CHECKED_GT_OPR, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %529, label %480

480:                                              ; preds = %473
  %481 = load i64, i64* @InvalidOid, align 8
  store i64 %481, i64* %14, align 8
  %482 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %482, i32 0, i32 4
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @InvalidOid, align 8
  %486 = icmp ne i64 %484, %485
  br i1 %486, label %487, label %499

487:                                              ; preds = %480
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 4
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 5
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %494, i32 0, i32 5
  %496 = load i64, i64* %495, align 8
  %497 = load i32, i32* @BTGreaterStrategyNumber, align 4
  %498 = call i64 @get_opfamily_member(i64 %490, i64 %493, i64 %496, i32 %497)
  store i64 %498, i64* %14, align 8
  br label %499

499:                                              ; preds = %487, %480
  %500 = load i64, i64* %14, align 8
  %501 = load i64, i64* @ARRAY_GT_OP, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %509

503:                                              ; preds = %499
  %504 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %505 = call i32 @array_element_has_compare(%struct.TYPE_21__* %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %503
  %508 = load i64, i64* @InvalidOid, align 8
  store i64 %508, i64* %14, align 8
  br label %520

509:                                              ; preds = %503, %499
  %510 = load i64, i64* %14, align 8
  %511 = load i64, i64* @RECORD_GT_OP, align 8
  %512 = icmp eq i64 %510, %511
  br i1 %512, label %513, label %519

513:                                              ; preds = %509
  %514 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %515 = call i32 @record_fields_have_compare(%struct.TYPE_21__* %514)
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %513
  %518 = load i64, i64* @InvalidOid, align 8
  store i64 %518, i64* %14, align 8
  br label %519

519:                                              ; preds = %517, %513, %509
  br label %520

520:                                              ; preds = %519, %507
  %521 = load i64, i64* %14, align 8
  %522 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %522, i32 0, i32 20
  store i64 %521, i64* %523, align 8
  %524 = load i32, i32* @TCFLAGS_CHECKED_GT_OPR, align 4
  %525 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %525, i32 0, i32 3
  %527 = load i32, i32* %526, align 8
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 8
  br label %529

529:                                              ; preds = %520, %473, %468
  %530 = load i32, i32* %4, align 4
  %531 = load i32, i32* @TYPECACHE_CMP_PROC, align 4
  %532 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %533 = or i32 %531, %532
  %534 = and i32 %530, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %603

536:                                              ; preds = %529
  %537 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %537, i32 0, i32 3
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @TCFLAGS_CHECKED_CMP_PROC, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %603, label %543

543:                                              ; preds = %536
  %544 = load i64, i64* @InvalidOid, align 8
  store i64 %544, i64* %15, align 8
  %545 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %545, i32 0, i32 4
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @InvalidOid, align 8
  %549 = icmp ne i64 %547, %548
  br i1 %549, label %550, label %562

550:                                              ; preds = %543
  %551 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %552 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %551, i32 0, i32 4
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %554, i32 0, i32 5
  %556 = load i64, i64* %555, align 8
  %557 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %557, i32 0, i32 5
  %559 = load i64, i64* %558, align 8
  %560 = load i32, i32* @BTORDER_PROC, align 4
  %561 = call i64 @get_opfamily_proc(i64 %553, i64 %556, i64 %559, i32 %560)
  store i64 %561, i64* %15, align 8
  br label %562

562:                                              ; preds = %550, %543
  %563 = load i64, i64* %15, align 8
  %564 = load i64, i64* @F_BTARRAYCMP, align 8
  %565 = icmp eq i64 %563, %564
  br i1 %565, label %566, label %572

566:                                              ; preds = %562
  %567 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %568 = call i32 @array_element_has_compare(%struct.TYPE_21__* %567)
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %572, label %570

570:                                              ; preds = %566
  %571 = load i64, i64* @InvalidOid, align 8
  store i64 %571, i64* %15, align 8
  br label %583

572:                                              ; preds = %566, %562
  %573 = load i64, i64* %15, align 8
  %574 = load i64, i64* @F_BTRECORDCMP, align 8
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %576, label %582

576:                                              ; preds = %572
  %577 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %578 = call i32 @record_fields_have_compare(%struct.TYPE_21__* %577)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %582, label %580

580:                                              ; preds = %576
  %581 = load i64, i64* @InvalidOid, align 8
  store i64 %581, i64* %15, align 8
  br label %582

582:                                              ; preds = %580, %576, %572
  br label %583

583:                                              ; preds = %582, %570
  %584 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %584, i32 0, i32 9
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* %15, align 8
  %588 = icmp ne i64 %586, %587
  br i1 %588, label %589, label %594

589:                                              ; preds = %583
  %590 = load i64, i64* @InvalidOid, align 8
  %591 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %591, i32 0, i32 18
  %593 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i32 0, i32 0
  store i64 %590, i64* %593, align 8
  br label %594

594:                                              ; preds = %589, %583
  %595 = load i64, i64* %15, align 8
  %596 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %597 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %596, i32 0, i32 9
  store i64 %595, i64* %597, align 8
  %598 = load i32, i32* @TCFLAGS_CHECKED_CMP_PROC, align 4
  %599 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %599, i32 0, i32 3
  %601 = load i32, i32* %600, align 8
  %602 = or i32 %601, %598
  store i32 %602, i32* %600, align 8
  br label %603

603:                                              ; preds = %594, %536, %529
  %604 = load i32, i32* %4, align 4
  %605 = load i32, i32* @TYPECACHE_HASH_PROC, align 4
  %606 = load i32, i32* @TYPECACHE_HASH_PROC_FINFO, align 4
  %607 = or i32 %605, %606
  %608 = and i32 %604, %607
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %698

610:                                              ; preds = %603
  %611 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* @TCFLAGS_CHECKED_HASH_PROC, align 4
  %615 = and i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %698, label %617

617:                                              ; preds = %610
  %618 = load i64, i64* @InvalidOid, align 8
  store i64 %618, i64* %16, align 8
  %619 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %620 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %619, i32 0, i32 6
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @InvalidOid, align 8
  %623 = icmp ne i64 %621, %622
  br i1 %623, label %624, label %658

624:                                              ; preds = %617
  %625 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %626 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %625, i32 0, i32 8
  %627 = load i64, i64* %626, align 8
  %628 = call i64 @OidIsValid(i64 %627)
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %646

630:                                              ; preds = %624
  %631 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %631, i32 0, i32 8
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %635 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %634, i32 0, i32 6
  %636 = load i64, i64* %635, align 8
  %637 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %638 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %637, i32 0, i32 7
  %639 = load i64, i64* %638, align 8
  %640 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %641 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %640, i32 0, i32 7
  %642 = load i64, i64* %641, align 8
  %643 = load i32, i32* @HTEqualStrategyNumber, align 4
  %644 = call i64 @get_opfamily_member(i64 %636, i64 %639, i64 %642, i32 %643)
  %645 = icmp eq i64 %633, %644
  br i1 %645, label %646, label %658

646:                                              ; preds = %630, %624
  %647 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %648 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %647, i32 0, i32 6
  %649 = load i64, i64* %648, align 8
  %650 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %650, i32 0, i32 7
  %652 = load i64, i64* %651, align 8
  %653 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %654 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %653, i32 0, i32 7
  %655 = load i64, i64* %654, align 8
  %656 = load i32, i32* @HASHSTANDARD_PROC, align 4
  %657 = call i64 @get_opfamily_proc(i64 %649, i64 %652, i64 %655, i32 %656)
  store i64 %657, i64* %16, align 8
  br label %658

658:                                              ; preds = %646, %630, %617
  %659 = load i64, i64* %16, align 8
  %660 = load i64, i64* @F_HASH_ARRAY, align 8
  %661 = icmp eq i64 %659, %660
  br i1 %661, label %662, label %668

662:                                              ; preds = %658
  %663 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %664 = call i32 @array_element_has_hashing(%struct.TYPE_21__* %663)
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = load i64, i64* @InvalidOid, align 8
  store i64 %667, i64* %16, align 8
  br label %668

668:                                              ; preds = %666, %662, %658
  %669 = load i64, i64* %16, align 8
  %670 = load i64, i64* @F_HASH_RANGE, align 8
  %671 = icmp eq i64 %669, %670
  br i1 %671, label %672, label %678

672:                                              ; preds = %668
  %673 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %674 = call i32 @range_element_has_hashing(%struct.TYPE_21__* %673)
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %678, label %676

676:                                              ; preds = %672
  %677 = load i64, i64* @InvalidOid, align 8
  store i64 %677, i64* %16, align 8
  br label %678

678:                                              ; preds = %676, %672, %668
  %679 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %680 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %679, i32 0, i32 10
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* %16, align 8
  %683 = icmp ne i64 %681, %682
  br i1 %683, label %684, label %689

684:                                              ; preds = %678
  %685 = load i64, i64* @InvalidOid, align 8
  %686 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %687 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %686, i32 0, i32 17
  %688 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %687, i32 0, i32 0
  store i64 %685, i64* %688, align 8
  br label %689

689:                                              ; preds = %684, %678
  %690 = load i64, i64* %16, align 8
  %691 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %692 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %691, i32 0, i32 10
  store i64 %690, i64* %692, align 8
  %693 = load i32, i32* @TCFLAGS_CHECKED_HASH_PROC, align 4
  %694 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %695 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 8
  %697 = or i32 %696, %693
  store i32 %697, i32* %695, align 8
  br label %698

698:                                              ; preds = %689, %610, %603
  %699 = load i32, i32* %4, align 4
  %700 = load i32, i32* @TYPECACHE_HASH_EXTENDED_PROC, align 4
  %701 = load i32, i32* @TYPECACHE_HASH_EXTENDED_PROC_FINFO, align 4
  %702 = or i32 %700, %701
  %703 = and i32 %699, %702
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %793

705:                                              ; preds = %698
  %706 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %707 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %706, i32 0, i32 3
  %708 = load i32, i32* %707, align 8
  %709 = load i32, i32* @TCFLAGS_CHECKED_HASH_EXTENDED_PROC, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %793, label %712

712:                                              ; preds = %705
  %713 = load i64, i64* @InvalidOid, align 8
  store i64 %713, i64* %17, align 8
  %714 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %715 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %714, i32 0, i32 6
  %716 = load i64, i64* %715, align 8
  %717 = load i64, i64* @InvalidOid, align 8
  %718 = icmp ne i64 %716, %717
  br i1 %718, label %719, label %753

719:                                              ; preds = %712
  %720 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %721 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %720, i32 0, i32 8
  %722 = load i64, i64* %721, align 8
  %723 = call i64 @OidIsValid(i64 %722)
  %724 = icmp ne i64 %723, 0
  br i1 %724, label %725, label %741

725:                                              ; preds = %719
  %726 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %727 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %726, i32 0, i32 8
  %728 = load i64, i64* %727, align 8
  %729 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %730 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %729, i32 0, i32 6
  %731 = load i64, i64* %730, align 8
  %732 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %733 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %732, i32 0, i32 7
  %734 = load i64, i64* %733, align 8
  %735 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %736 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %735, i32 0, i32 7
  %737 = load i64, i64* %736, align 8
  %738 = load i32, i32* @HTEqualStrategyNumber, align 4
  %739 = call i64 @get_opfamily_member(i64 %731, i64 %734, i64 %737, i32 %738)
  %740 = icmp eq i64 %728, %739
  br i1 %740, label %741, label %753

741:                                              ; preds = %725, %719
  %742 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %743 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %742, i32 0, i32 6
  %744 = load i64, i64* %743, align 8
  %745 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %746 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %745, i32 0, i32 7
  %747 = load i64, i64* %746, align 8
  %748 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %749 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %748, i32 0, i32 7
  %750 = load i64, i64* %749, align 8
  %751 = load i32, i32* @HASHEXTENDED_PROC, align 4
  %752 = call i64 @get_opfamily_proc(i64 %744, i64 %747, i64 %750, i32 %751)
  store i64 %752, i64* %17, align 8
  br label %753

753:                                              ; preds = %741, %725, %712
  %754 = load i64, i64* %17, align 8
  %755 = load i64, i64* @F_HASH_ARRAY_EXTENDED, align 8
  %756 = icmp eq i64 %754, %755
  br i1 %756, label %757, label %763

757:                                              ; preds = %753
  %758 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %759 = call i32 @array_element_has_extended_hashing(%struct.TYPE_21__* %758)
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %763, label %761

761:                                              ; preds = %757
  %762 = load i64, i64* @InvalidOid, align 8
  store i64 %762, i64* %17, align 8
  br label %763

763:                                              ; preds = %761, %757, %753
  %764 = load i64, i64* %17, align 8
  %765 = load i64, i64* @F_HASH_RANGE_EXTENDED, align 8
  %766 = icmp eq i64 %764, %765
  br i1 %766, label %767, label %773

767:                                              ; preds = %763
  %768 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %769 = call i32 @range_element_has_extended_hashing(%struct.TYPE_21__* %768)
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %773, label %771

771:                                              ; preds = %767
  %772 = load i64, i64* @InvalidOid, align 8
  store i64 %772, i64* %17, align 8
  br label %773

773:                                              ; preds = %771, %767, %763
  %774 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %775 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %774, i32 0, i32 11
  %776 = load i64, i64* %775, align 8
  %777 = load i64, i64* %17, align 8
  %778 = icmp ne i64 %776, %777
  br i1 %778, label %779, label %784

779:                                              ; preds = %773
  %780 = load i64, i64* @InvalidOid, align 8
  %781 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %782 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %781, i32 0, i32 16
  %783 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %782, i32 0, i32 0
  store i64 %780, i64* %783, align 8
  br label %784

784:                                              ; preds = %779, %773
  %785 = load i64, i64* %17, align 8
  %786 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %787 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %786, i32 0, i32 11
  store i64 %785, i64* %787, align 8
  %788 = load i32, i32* @TCFLAGS_CHECKED_HASH_EXTENDED_PROC, align 4
  %789 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %790 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %789, i32 0, i32 3
  %791 = load i32, i32* %790, align 8
  %792 = or i32 %791, %788
  store i32 %792, i32* %790, align 8
  br label %793

793:                                              ; preds = %784, %705, %698
  %794 = load i32, i32* %4, align 4
  %795 = load i32, i32* @TYPECACHE_EQ_OPR_FINFO, align 4
  %796 = and i32 %794, %795
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %826

798:                                              ; preds = %793
  %799 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %800 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %799, i32 0, i32 19
  %801 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %800, i32 0, i32 0
  %802 = load i64, i64* %801, align 8
  %803 = load i64, i64* @InvalidOid, align 8
  %804 = icmp eq i64 %802, %803
  br i1 %804, label %805, label %826

805:                                              ; preds = %798
  %806 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %807 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %806, i32 0, i32 8
  %808 = load i64, i64* %807, align 8
  %809 = load i64, i64* @InvalidOid, align 8
  %810 = icmp ne i64 %808, %809
  br i1 %810, label %811, label %826

811:                                              ; preds = %805
  %812 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %813 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %812, i32 0, i32 8
  %814 = load i64, i64* %813, align 8
  %815 = call i64 @get_opcode(i64 %814)
  store i64 %815, i64* %18, align 8
  %816 = load i64, i64* %18, align 8
  %817 = load i64, i64* @InvalidOid, align 8
  %818 = icmp ne i64 %816, %817
  br i1 %818, label %819, label %825

819:                                              ; preds = %811
  %820 = load i64, i64* %18, align 8
  %821 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %822 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %821, i32 0, i32 19
  %823 = load i32, i32* @CacheMemoryContext, align 4
  %824 = call i32 @fmgr_info_cxt(i64 %820, %struct.TYPE_20__* %822, i32 %823)
  br label %825

825:                                              ; preds = %819, %811
  br label %826

826:                                              ; preds = %825, %805, %798, %793
  %827 = load i32, i32* %4, align 4
  %828 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %829 = and i32 %827, %828
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %852

831:                                              ; preds = %826
  %832 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %833 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %832, i32 0, i32 18
  %834 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %833, i32 0, i32 0
  %835 = load i64, i64* %834, align 8
  %836 = load i64, i64* @InvalidOid, align 8
  %837 = icmp eq i64 %835, %836
  br i1 %837, label %838, label %852

838:                                              ; preds = %831
  %839 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %840 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %839, i32 0, i32 9
  %841 = load i64, i64* %840, align 8
  %842 = load i64, i64* @InvalidOid, align 8
  %843 = icmp ne i64 %841, %842
  br i1 %843, label %844, label %852

844:                                              ; preds = %838
  %845 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %846 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %845, i32 0, i32 9
  %847 = load i64, i64* %846, align 8
  %848 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %849 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %848, i32 0, i32 18
  %850 = load i32, i32* @CacheMemoryContext, align 4
  %851 = call i32 @fmgr_info_cxt(i64 %847, %struct.TYPE_20__* %849, i32 %850)
  br label %852

852:                                              ; preds = %844, %838, %831, %826
  %853 = load i32, i32* %4, align 4
  %854 = load i32, i32* @TYPECACHE_HASH_PROC_FINFO, align 4
  %855 = and i32 %853, %854
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %878

857:                                              ; preds = %852
  %858 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %859 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %858, i32 0, i32 17
  %860 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %859, i32 0, i32 0
  %861 = load i64, i64* %860, align 8
  %862 = load i64, i64* @InvalidOid, align 8
  %863 = icmp eq i64 %861, %862
  br i1 %863, label %864, label %878

864:                                              ; preds = %857
  %865 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %866 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %865, i32 0, i32 10
  %867 = load i64, i64* %866, align 8
  %868 = load i64, i64* @InvalidOid, align 8
  %869 = icmp ne i64 %867, %868
  br i1 %869, label %870, label %878

870:                                              ; preds = %864
  %871 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %872 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %871, i32 0, i32 10
  %873 = load i64, i64* %872, align 8
  %874 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %875 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %874, i32 0, i32 17
  %876 = load i32, i32* @CacheMemoryContext, align 4
  %877 = call i32 @fmgr_info_cxt(i64 %873, %struct.TYPE_20__* %875, i32 %876)
  br label %878

878:                                              ; preds = %870, %864, %857, %852
  %879 = load i32, i32* %4, align 4
  %880 = load i32, i32* @TYPECACHE_HASH_EXTENDED_PROC_FINFO, align 4
  %881 = and i32 %879, %880
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %904

883:                                              ; preds = %878
  %884 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %885 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %884, i32 0, i32 16
  %886 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %885, i32 0, i32 0
  %887 = load i64, i64* %886, align 8
  %888 = load i64, i64* @InvalidOid, align 8
  %889 = icmp eq i64 %887, %888
  br i1 %889, label %890, label %904

890:                                              ; preds = %883
  %891 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %892 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %891, i32 0, i32 11
  %893 = load i64, i64* %892, align 8
  %894 = load i64, i64* @InvalidOid, align 8
  %895 = icmp ne i64 %893, %894
  br i1 %895, label %896, label %904

896:                                              ; preds = %890
  %897 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %898 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %897, i32 0, i32 11
  %899 = load i64, i64* %898, align 8
  %900 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %901 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %900, i32 0, i32 16
  %902 = load i32, i32* @CacheMemoryContext, align 4
  %903 = call i32 @fmgr_info_cxt(i64 %899, %struct.TYPE_20__* %901, i32 %902)
  br label %904

904:                                              ; preds = %896, %890, %883, %878
  %905 = load i32, i32* %4, align 4
  %906 = load i32, i32* @TYPECACHE_TUPDESC, align 4
  %907 = and i32 %905, %906
  %908 = icmp ne i32 %907, 0
  br i1 %908, label %909, label %923

909:                                              ; preds = %904
  %910 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %911 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %910, i32 0, i32 15
  %912 = load i32*, i32** %911, align 8
  %913 = icmp eq i32* %912, null
  br i1 %913, label %914, label %923

914:                                              ; preds = %909
  %915 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %916 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %915, i32 0, i32 2
  %917 = load i64, i64* %916, align 8
  %918 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %919 = icmp eq i64 %917, %918
  br i1 %919, label %920, label %923

920:                                              ; preds = %914
  %921 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %922 = call i32 @load_typcache_tupdesc(%struct.TYPE_21__* %921)
  br label %923

923:                                              ; preds = %920, %914, %909, %904
  %924 = load i32, i32* %4, align 4
  %925 = load i32, i32* @TYPECACHE_RANGE_INFO, align 4
  %926 = and i32 %924, %925
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %928, label %942

928:                                              ; preds = %923
  %929 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %930 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %929, i32 0, i32 14
  %931 = load i32*, i32** %930, align 8
  %932 = icmp eq i32* %931, null
  br i1 %932, label %933, label %942

933:                                              ; preds = %928
  %934 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %935 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %934, i32 0, i32 2
  %936 = load i64, i64* %935, align 8
  %937 = load i64, i64* @TYPTYPE_RANGE, align 8
  %938 = icmp eq i64 %936, %937
  br i1 %938, label %939, label %942

939:                                              ; preds = %933
  %940 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %941 = call i32 @load_rangetype_info(%struct.TYPE_21__* %940)
  br label %942

942:                                              ; preds = %939, %933, %928, %923
  %943 = load i32, i32* %4, align 4
  %944 = load i32, i32* @TYPECACHE_DOMAIN_BASE_INFO, align 4
  %945 = and i32 %943, %944
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %947, label %968

947:                                              ; preds = %942
  %948 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %949 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %948, i32 0, i32 12
  %950 = load i64, i64* %949, align 8
  %951 = load i64, i64* @InvalidOid, align 8
  %952 = icmp eq i64 %950, %951
  br i1 %952, label %953, label %968

953:                                              ; preds = %947
  %954 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %955 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %954, i32 0, i32 2
  %956 = load i64, i64* %955, align 8
  %957 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %958 = icmp eq i64 %956, %957
  br i1 %958, label %959, label %968

959:                                              ; preds = %953
  %960 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %961 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %960, i32 0, i32 13
  store i32 -1, i32* %961, align 8
  %962 = load i64, i64* %3, align 8
  %963 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %964 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %963, i32 0, i32 13
  %965 = call i64 @getBaseTypeAndTypmod(i64 %962, i32* %964)
  %966 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %967 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %966, i32 0, i32 12
  store i64 %965, i64* %967, align 8
  br label %968

968:                                              ; preds = %959, %953, %947, %942
  %969 = load i32, i32* %4, align 4
  %970 = load i32, i32* @TYPECACHE_DOMAIN_CONSTR_INFO, align 4
  %971 = and i32 %969, %970
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %989

973:                                              ; preds = %968
  %974 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %975 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %974, i32 0, i32 3
  %976 = load i32, i32* %975, align 8
  %977 = load i32, i32* @TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS, align 4
  %978 = and i32 %976, %977
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %989

980:                                              ; preds = %973
  %981 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %982 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %981, i32 0, i32 2
  %983 = load i64, i64* %982, align 8
  %984 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %985 = icmp eq i64 %983, %984
  br i1 %985, label %986, label %989

986:                                              ; preds = %980
  %987 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %988 = call i32 @load_domaintype_info(%struct.TYPE_21__* %987)
  br label %989

989:                                              ; preds = %986, %980, %973, %968
  %990 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %990
}

declare dso_local i32 @MemSet(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @CacheRegisterRelcacheCallback(i32, i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @NameStr(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @GetDefaultOpClass(i64, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i8* @get_opclass_family(i64) #1

declare dso_local i8* @get_opclass_input_type(i64) #1

declare dso_local i64 @get_opfamily_member(i64, i64, i64, i32) #1

declare dso_local i32 @array_element_has_equality(%struct.TYPE_21__*) #1

declare dso_local i32 @record_fields_have_equality(%struct.TYPE_21__*) #1

declare dso_local i32 @array_element_has_compare(%struct.TYPE_21__*) #1

declare dso_local i32 @record_fields_have_compare(%struct.TYPE_21__*) #1

declare dso_local i64 @get_opfamily_proc(i64, i64, i64, i32) #1

declare dso_local i32 @array_element_has_hashing(%struct.TYPE_21__*) #1

declare dso_local i32 @range_element_has_hashing(%struct.TYPE_21__*) #1

declare dso_local i32 @array_element_has_extended_hashing(%struct.TYPE_21__*) #1

declare dso_local i32 @range_element_has_extended_hashing(%struct.TYPE_21__*) #1

declare dso_local i64 @get_opcode(i64) #1

declare dso_local i32 @fmgr_info_cxt(i64, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @load_typcache_tupdesc(%struct.TYPE_21__*) #1

declare dso_local i32 @load_rangetype_info(%struct.TYPE_21__*) #1

declare dso_local i64 @getBaseTypeAndTypmod(i64, i32*) #1

declare dso_local i32 @load_domaintype_info(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
