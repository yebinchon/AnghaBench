; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_RevalidateCachedQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_plancache.c_RevalidateCachedQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, i32*, i32*, i32*, i32*, i64, i32*, i32*, i32*, i64, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@row_security = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cached plan must not change result type\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"CachedPlanQuery\00", align 1
@ALLOCSET_START_SMALL_SIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*)* @RevalidateCachedQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RevalidateCachedQuery(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 20
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i64 @IsTransactionStmtPlan(%struct.TYPE_7__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32*, i32** @NIL, align 8
  store i32* %27, i32** %3, align 8
  br label %297

28:                                               ; preds = %18
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @OverrideSearchPathMatchesCurrent(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 19
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 19
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 (...) @GetUserId()
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @row_security, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %69
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %75, %64, %59
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @AcquirePlannerLocks(i32* %92, i32 1)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32*, i32** @NIL, align 8
  store i32* %99, i32** %3, align 8
  br label %297

100:                                              ; preds = %89
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @AcquirePlannerLocks(i32* %103, i32 0)
  br label %105

105:                                              ; preds = %100, %84
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load i32*, i32** @NIL, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load i32*, i32** @NIL, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 10
  store i32* %111, i32** %113, align 8
  %114 = load i32*, i32** @NIL, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 9
  store i32* %114, i32** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 7
  store i32* null, i32** %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %105
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %13, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  store i32* null, i32** %128, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @MemoryContextDelete(i32* %129)
  br label %131

131:                                              ; preds = %123, %105
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = call i32 @ReleaseGenericPlan(%struct.TYPE_7__* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @Assert(i32 %136)
  store i32 0, i32* %6, align 4
  %138 = call i32 (...) @ActiveSnapshotSet()
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = call i32 (...) @GetTransactionSnapshot()
  %142 = call i32 @PushActiveSnapshot(i32 %141)
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %140, %131
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 18
  %146 = load i32*, i32** %145, align 8
  %147 = call i8* @copyObject(i32* %146)
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** %7, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32*, i32** @NIL, align 8
  store i32* %152, i32** %8, align 8
  br label %185

153:                                              ; preds = %143
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 17
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 15
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 17
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 16
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = call i32* @pg_analyze_and_rewrite_params(i32* %159, i32 %162, i32* %165, i32 %168, i32* %169)
  store i32* %170, i32** %8, align 8
  br label %184

171:                                              ; preds = %153
  %172 = load i32*, i32** %7, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 15
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 14
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %5, align 8
  %183 = call i32* @pg_analyze_and_rewrite(i32* %172, i32 %175, i32 %178, i32 %181, i32* %182)
  store i32* %183, i32** %8, align 8
  br label %184

184:                                              ; preds = %171, %158
  br label %185

185:                                              ; preds = %184, %151
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 (...) @PopActiveSnapshot()
  br label %190

190:                                              ; preds = %188, %185
  %191 = load i32*, i32** %8, align 8
  %192 = call i32* @PlanCacheComputeResultDesc(i32* %191)
  store i32* %192, i32** %10, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 11
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %254

201:                                              ; preds = %195, %190
  %202 = load i32*, i32** %10, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %216, label %204

204:                                              ; preds = %201
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 11
  %207 = load i32*, i32** %206, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %216, label %209

209:                                              ; preds = %204
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 11
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @equalTupleDescs(i32* %210, i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %253, label %216

216:                                              ; preds = %209, %204, %201
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 12
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load i32, i32* @ERROR, align 4
  %223 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %224 = call i32 @errcode(i32 %223)
  %225 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %226 = call i32 @ereport(i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %221, %216
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 6
  %230 = load i32*, i32** %229, align 8
  %231 = call i32* @MemoryContextSwitchTo(i32* %230)
  store i32* %231, i32** %12, align 8
  %232 = load i32*, i32** %10, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load i32*, i32** %10, align 8
  %236 = call i32* @CreateTupleDescCopy(i32* %235)
  store i32* %236, i32** %10, align 8
  br label %237

237:                                              ; preds = %234, %227
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 11
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 11
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @FreeTupleDesc(i32* %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load i32*, i32** %10, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 11
  store i32* %248, i32** %250, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = call i32* @MemoryContextSwitchTo(i32* %251)
  br label %253

253:                                              ; preds = %247, %209
  br label %254

254:                                              ; preds = %253, %200
  %255 = load i32, i32* @CurrentMemoryContext, align 4
  %256 = load i32, i32* @ALLOCSET_START_SMALL_SIZES, align 4
  %257 = call i32* @AllocSetContextCreate(i32 %255, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %256)
  store i32* %257, i32** %11, align 8
  %258 = load i32*, i32** %11, align 8
  %259 = call i32* @MemoryContextSwitchTo(i32* %258)
  store i32* %259, i32** %12, align 8
  %260 = load i32*, i32** %8, align 8
  %261 = call i8* @copyObject(i32* %260)
  %262 = bitcast i8* %261 to i32*
  store i32* %262, i32** %9, align 8
  %263 = load i32*, i32** %9, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 10
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 9
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 8
  %270 = call i32 @extract_query_dependencies(i32* %263, i32** %265, i32** %267, i64* %269)
  %271 = call i64 (...) @GetUserId()
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  store i64 %271, i64* %273, align 8
  %274 = load i64, i64* @row_security, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  store i64 %274, i64* %276, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = call i32* @GetOverrideSearchPath(i32* %277)
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 7
  store i32* %278, i32** %280, align 8
  %281 = load i32*, i32** %12, align 8
  %282 = call i32* @MemoryContextSwitchTo(i32* %281)
  %283 = load i32*, i32** %11, align 8
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 6
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @MemoryContextSetParent(i32* %283, i32* %286)
  %288 = load i32*, i32** %11, align 8
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 5
  store i32* %288, i32** %290, align 8
  %291 = load i32*, i32** %9, align 8
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 4
  store i32* %291, i32** %293, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  store i32 1, i32* %295, align 8
  %296 = load i32*, i32** %8, align 8
  store i32* %296, i32** %3, align 8
  br label %297

297:                                              ; preds = %254, %98, %22
  %298 = load i32*, i32** %3, align 8
  ret i32* %298
}

declare dso_local i64 @IsTransactionStmtPlan(%struct.TYPE_7__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OverrideSearchPathMatchesCurrent(i32*) #1

declare dso_local i64 @GetUserId(...) #1

declare dso_local i32 @AcquirePlannerLocks(i32*, i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

declare dso_local i32 @ReleaseGenericPlan(%struct.TYPE_7__*) #1

declare dso_local i32 @ActiveSnapshotSet(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i8* @copyObject(i32*) #1

declare dso_local i32* @pg_analyze_and_rewrite_params(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32* @pg_analyze_and_rewrite(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32* @PlanCacheComputeResultDesc(i32*) #1

declare dso_local i32 @equalTupleDescs(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32* @CreateTupleDescCopy(i32*) #1

declare dso_local i32 @FreeTupleDesc(i32*) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @extract_query_dependencies(i32*, i32**, i32**, i64*) #1

declare dso_local i32* @GetOverrideSearchPath(i32*) #1

declare dso_local i32 @MemoryContextSetParent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
