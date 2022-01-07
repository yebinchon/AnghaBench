; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationInitIndexAccessInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationInitIndexAccessInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32*, i32*, i32*, i8*, i8*, i32*, i32, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@INDEXRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@CacheMemoryContext = common dso_local global i32 0, align 4
@AMOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cache lookup failed for access method %u\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"relnatts disagrees with indnatts for index %u\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index info\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@Anum_pg_index_indcollation = common dso_local global i32 0, align 4
@Anum_pg_index_indclass = common dso_local global i32 0, align 4
@Anum_pg_index_indoption = common dso_local global i32 0, align 4
@NIL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationInitIndexAccessInfo(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %18 = load i32, i32* @INDEXRELID, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = call i32 @RelationGetRelid(%struct.TYPE_19__* %19)
  %21 = call i32 @ObjectIdGetDatum(i32 %20)
  %22 = call i32 @SearchSysCache1(i32 %18, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @HeapTupleIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ERROR, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = call i32 @RelationGetRelid(%struct.TYPE_19__* %28)
  %30 = call i32 @elog(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @CacheMemoryContext, align 4
  %33 = call i32 @MemoryContextSwitchTo(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @heap_copytuple(i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @GETSTRUCT(i32 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 17
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ReleaseSysCache(i32 %46)
  %48 = load i32, i32* @AMOID, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 16
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = call i32 @SearchSysCache1(i32 %48, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @HeapTupleIsValid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %31
  %60 = load i32, i32* @ERROR, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 16
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59, %31
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @GETSTRUCT(i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %4, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 15
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @ReleaseSysCache(i32 %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %79 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_19__* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = call i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_19__* %81)
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load i32, i32* @ERROR, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = call i32 @RelationGetRelid(%struct.TYPE_19__* %86)
  %88 = call i32 @elog(i32 %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %67
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %91 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_19__* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* @CacheMemoryContext, align 4
  %93 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %94 = call i32 @AllocSetContextCreate(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 14
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %100 = call i32 @RelationGetRelationName(%struct.TYPE_19__* %99)
  %101 = call i32 @MemoryContextCopyAndSetIdentifier(i32 %98, i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = call i32 @InitIndexAmRoutine(%struct.TYPE_19__* %102)
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i64 @MemoryContextAllocZero(i32 %104, i32 %108)
  %110 = inttoptr i64 %109 to i32*
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 9
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i64 @MemoryContextAllocZero(i32 %113, i32 %117)
  %119 = inttoptr i64 %118 to i32*
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 8
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 13
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %89
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %16, align 4
  %132 = mul nsw i32 %130, %131
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i64 @MemoryContextAllocZero(i32 %133, i32 %137)
  %139 = inttoptr i64 %138 to i32*
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 10
  store i32* %139, i32** %141, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i64 @MemoryContextAllocZero(i32 %142, i32 %146)
  %148 = inttoptr i64 %147 to i32*
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 12
  store i32* %148, i32** %150, align 8
  br label %156

151:                                              ; preds = %89
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 10
  store i32* null, i32** %153, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 12
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %151, %129
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 4
  %161 = trunc i64 %160 to i32
  %162 = call i64 @MemoryContextAllocZero(i32 %157, i32 %161)
  %163 = inttoptr i64 %162 to i32*
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 11
  store i32* %163, i32** %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = call i64 @MemoryContextAllocZero(i32 %166, i32 %170)
  %172 = inttoptr i64 %171 to i32*
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 6
  store i32* %172, i32** %174, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @Anum_pg_index_indcollation, align 4
  %179 = call i32 (...) @GetPgIndexDescriptor()
  %180 = call i32 @fastgetattr(i32 %177, i32 %178, i32 %179, i32* %8)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @Assert(i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = call i64 @DatumGetPointer(i32 %186)
  %188 = inttoptr i64 %187 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %188, %struct.TYPE_17__** %9, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 11
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memcpy(i32* %191, i32 %194, i32 %198)
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @Anum_pg_index_indclass, align 4
  %204 = call i32 (...) @GetPgIndexDescriptor()
  %205 = call i32 @fastgetattr(i32 %202, i32 %203, i32 %204, i32* %8)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @Assert(i32 %209)
  %211 = load i32, i32* %6, align 4
  %212 = call i64 @DatumGetPointer(i32 %211)
  %213 = inttoptr i64 %212 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %213, %struct.TYPE_17__** %10, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 10
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 9
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 8
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %15, align 4
  %226 = call i32 @IndexSupportInitialize(%struct.TYPE_17__* %214, i32* %217, i32* %220, i32* %223, i32 %224, i32 %225)
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @Anum_pg_index_indoption, align 4
  %231 = call i32 (...) @GetPgIndexDescriptor()
  %232 = call i32 @fastgetattr(i32 %229, i32 %230, i32 %231, i32* %8)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = call i32 @Assert(i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = call i64 @DatumGetPointer(i32 %238)
  %240 = inttoptr i64 %239 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %240, %struct.TYPE_18__** %11, align 8
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 6
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = mul i64 %248, 4
  %250 = trunc i64 %249 to i32
  %251 = call i32 @memcpy(i32* %243, i32 %246, i32 %250)
  %252 = load i8*, i8** @NIL, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  %255 = load i8*, i8** @NIL, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 4
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  store i32* null, i32** %259, align 8
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 2
  store i32* null, i32** %261, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  store i32* null, i32** %263, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  store i32* null, i32** %265, align 8
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_19__*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @RelationGetNumberOfAttributes(%struct.TYPE_19__*) #1

declare dso_local i32 @IndexRelationGetNumberOfAttributes(%struct.TYPE_19__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_19__*) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextCopyAndSetIdentifier(i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_19__*) #1

declare dso_local i32 @InitIndexAmRoutine(%struct.TYPE_19__*) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @fastgetattr(i32, i32, i32, i32*) #1

declare dso_local i32 @GetPgIndexDescriptor(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @IndexSupportInitialize(%struct.TYPE_17__*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
