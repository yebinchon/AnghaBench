; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execIndexing.c_check_exclusion_or_unique_constraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execIndexing.c_check_exclusion_or_unique_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32* }
%struct.TYPE_35__ = type { i64, i32*, i32*, i32*, i32* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_32__ = type { i64, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"found self tuple multiple times in index \22%s\22\00", align 1
@CEOUC_WAIT = common dso_local global i64 0, align 8
@CEOUC_LIVELOCK_PREVENTING_WAIT = common dso_local global i64 0, align 8
@XLTW_RecheckExclusionConstr = common dso_local global i32 0, align 4
@XLTW_InsertIndex = common dso_local global i32 0, align 4
@ERRCODE_EXCLUSION_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not create exclusion constraint \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Key %s conflicts with key %s.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Key conflicts exist.\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"conflicting key value violates exclusion constraint \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Key %s conflicts with existing key %s.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Key conflicts with existing key.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_35__*, i32*, i32*, i32*, i32*, i32, i64, i32, i32*)* @check_exclusion_or_unique_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_exclusion_or_unique_constraint(%struct.TYPE_33__* %0, %struct.TYPE_33__* %1, %struct.TYPE_35__* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i64 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_34__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_32__, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_36__*, align 8
  %36 = alloca %struct.TYPE_31__*, align 8
  %37 = alloca %struct.TYPE_31__*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %13, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %14, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i64 %8, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %26, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %50 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_33__* %49)
  store i32 %50, i32* %27, align 4
  %51 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %29, align 8
  %54 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %30, align 8
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %11
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %24, align 8
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %25, align 8
  br label %73

66:                                               ; preds = %11
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %24, align 8
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %25, align 8
  br label %73

73:                                               ; preds = %66, %59
  store i32 0, i32* %32, align 4
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i32, i32* %32, align 4
  %76 = load i32, i32* %27, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %32, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %12, align 4
  store i32 1, i32* %38, align 4
  br label %351

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %32, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %32, align 4
  br label %74

90:                                               ; preds = %74
  %91 = bitcast %struct.TYPE_32__* %31 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @InitDirtySnapshot(i64 %93, i64 %95)
  store i32 0, i32* %32, align 4
  br label %97

97:                                               ; preds = %129, %90
  %98 = load i32, i32* %32, align 4
  %99 = load i32, i32* %27, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %97
  %102 = load i32, i32* %32, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %54, i64 %103
  %105 = load i32, i32* %32, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32*, i32** %25, align 8
  %108 = load i32, i32* %32, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @InvalidOid, align 4
  %113 = load i32*, i32** %26, align 8
  %114 = load i32, i32* %32, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %24, align 8
  %119 = load i32, i32* %32, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %32, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ScanKeyEntryInitialize(i32* %104, i32 0, i32 %106, i32 %111, i32 %112, i32 %117, i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %101
  %130 = load i32, i32* %32, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %32, align 4
  br label %97

132:                                              ; preds = %97
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %134 = call %struct.TYPE_31__* @table_slot_create(%struct.TYPE_33__* %133, i32* null)
  store %struct.TYPE_31__* %134, %struct.TYPE_31__** %36, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = call %struct.TYPE_36__* @GetPerTupleExprContext(i32* %135)
  store %struct.TYPE_36__* %136, %struct.TYPE_36__** %35, align 8
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %35, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %138, align 8
  store %struct.TYPE_31__* %139, %struct.TYPE_31__** %37, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %35, align 8
  %142 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %141, i32 0, i32 0
  store %struct.TYPE_31__* %140, %struct.TYPE_31__** %142, align 8
  br label %143

143:                                              ; preds = %335, %132
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %146 = load i32, i32* %27, align 4
  %147 = call %struct.TYPE_34__* @index_beginscan(%struct.TYPE_33__* %144, %struct.TYPE_33__* %145, %struct.TYPE_32__* %31, i32 %146, i32 0)
  store %struct.TYPE_34__* %147, %struct.TYPE_34__** %28, align 8
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %149 = load i32, i32* %27, align 4
  %150 = call i32 @index_rescan(%struct.TYPE_34__* %148, i32* %54, i32 %149, i32* null, i32 0)
  br label %151

151:                                              ; preds = %338, %335, %143
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %153 = load i32, i32* @ForwardScanDirection, align 4
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %155 = call i64 @index_getnext_slot(%struct.TYPE_34__* %152, i32 %153, %struct.TYPE_31__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %339

157:                                              ; preds = %151
  %158 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %159 = zext i32 %158 to i64
  %160 = call i8* @llvm.stacksave()
  store i8* %160, i8** %41, align 8
  %161 = alloca i32, i64 %159, align 16
  store i64 %159, i64* %42, align 8
  %162 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %163 = zext i32 %162 to i64
  %164 = alloca i32, i64 %163, align 16
  store i64 %163, i64* %43, align 8
  %165 = load i32*, i32** %16, align 8
  %166 = call i64 @ItemPointerIsValid(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %157
  %169 = load i32*, i32** %16, align 8
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = call i64 @ItemPointerEquals(i32* %169, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load i32, i32* %34, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* @ERROR, align 4
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %180 = call i32 @RelationGetRelationName(%struct.TYPE_33__* %179)
  %181 = call i32 @elog(i32 %178, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177, %174
  store i32 1, i32* %34, align 4
  store i32 9, i32* %38, align 4
  br label %335

183:                                              ; preds = %168, %157
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @FormIndexDatum(%struct.TYPE_35__* %184, %struct.TYPE_31__* %185, i32* %186, i32* %161, i32* %164)
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %183
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %194 = load i32*, i32** %24, align 8
  %195 = load i32*, i32** %17, align 8
  %196 = call i32 @index_recheck_constraint(%struct.TYPE_33__* %193, i32* %194, i32* %161, i32* %164, i32* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %192
  store i32 9, i32* %38, align 4
  br label %335

199:                                              ; preds = %192
  br label %200

200:                                              ; preds = %199, %183
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @TransactionIdIsValid(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  br label %211

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  br label %211

211:                                              ; preds = %208, %205
  %212 = phi i32 [ %207, %205 ], [ %210, %208 ]
  store i32 %212, i32* %39, align 4
  %213 = load i32, i32* %39, align 4
  %214 = call i64 @TransactionIdIsValid(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %263

216:                                              ; preds = %211
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* @CEOUC_WAIT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %233, label %220

220:                                              ; preds = %216
  %221 = load i64, i64* %21, align 8
  %222 = load i64, i64* @CEOUC_LIVELOCK_PREVENTING_WAIT, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %263

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %263

228:                                              ; preds = %224
  %229 = call i32 (...) @GetCurrentTransactionId()
  %230 = load i32, i32* %39, align 4
  %231 = call i64 @TransactionIdPrecedes(i32 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %263

233:                                              ; preds = %228, %216
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @XLTW_RecheckExclusionConstr, align 4
  br label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @XLTW_InsertIndex, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  store i32 %243, i32* %40, align 4
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %245 = call i32 @index_endscan(%struct.TYPE_34__* %244)
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @SpeculativeInsertionWait(i32 %251, i64 %253)
  br label %262

255:                                              ; preds = %242
  %256 = load i32, i32* %39, align 4
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 0
  %260 = load i32, i32* %40, align 4
  %261 = call i32 @XactLockTableWait(i32 %256, %struct.TYPE_33__* %257, i32* %259, i32 %260)
  br label %262

262:                                              ; preds = %255, %249
  store i32 8, i32* %38, align 4
  br label %335

263:                                              ; preds = %228, %224, %220, %211
  %264 = load i32, i32* %22, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %263
  store i32 1, i32* %33, align 4
  %267 = load i32*, i32** %23, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %23, align 8
  store i32 %272, i32* %273, align 4
  br label %274

274:                                              ; preds = %269, %266
  store i32 10, i32* %38, align 4
  br label %335

275:                                              ; preds = %263
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %277 = load i32*, i32** %17, align 8
  %278 = load i32*, i32** %18, align 8
  %279 = call i8* @BuildIndexValueDescription(%struct.TYPE_33__* %276, i32* %277, i32* %278)
  store i8* %279, i8** %44, align 8
  %280 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %281 = call i8* @BuildIndexValueDescription(%struct.TYPE_33__* %280, i32* %161, i32* %164)
  store i8* %281, i8** %45, align 8
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %309

284:                                              ; preds = %275
  %285 = load i32, i32* @ERROR, align 4
  %286 = load i32, i32* @ERRCODE_EXCLUSION_VIOLATION, align 4
  %287 = call i32 @errcode(i32 %286)
  %288 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %289 = call i32 @RelationGetRelationName(%struct.TYPE_33__* %288)
  %290 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %289)
  %291 = load i8*, i8** %44, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %300

293:                                              ; preds = %284
  %294 = load i8*, i8** %45, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load i8*, i8** %44, align 8
  %298 = load i8*, i8** %45, align 8
  %299 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %297, i8* %298)
  br label %302

300:                                              ; preds = %293, %284
  %301 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %296
  %303 = phi i32 [ %299, %296 ], [ %301, %300 ]
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %306 = call i32 @RelationGetRelationName(%struct.TYPE_33__* %305)
  %307 = call i32 @errtableconstraint(%struct.TYPE_33__* %304, i32 %306)
  %308 = call i32 @ereport(i32 %285, i32 %307)
  br label %334

309:                                              ; preds = %275
  %310 = load i32, i32* @ERROR, align 4
  %311 = load i32, i32* @ERRCODE_EXCLUSION_VIOLATION, align 4
  %312 = call i32 @errcode(i32 %311)
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %314 = call i32 @RelationGetRelationName(%struct.TYPE_33__* %313)
  %315 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %314)
  %316 = load i8*, i8** %44, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %325

318:                                              ; preds = %309
  %319 = load i8*, i8** %45, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load i8*, i8** %44, align 8
  %323 = load i8*, i8** %45, align 8
  %324 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %322, i8* %323)
  br label %327

325:                                              ; preds = %318, %309
  %326 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %327

327:                                              ; preds = %325, %321
  %328 = phi i32 [ %324, %321 ], [ %326, %325 ]
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %330 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %331 = call i32 @RelationGetRelationName(%struct.TYPE_33__* %330)
  %332 = call i32 @errtableconstraint(%struct.TYPE_33__* %329, i32 %331)
  %333 = call i32 @ereport(i32 %310, i32 %332)
  br label %334

334:                                              ; preds = %327, %302
  store i32 0, i32* %38, align 4
  br label %335

335:                                              ; preds = %334, %274, %262, %198, %182
  %336 = load i8*, i8** %41, align 8
  call void @llvm.stackrestore(i8* %336)
  %337 = load i32, i32* %38, align 4
  switch i32 %337, label %354 [
    i32 0, label %338
    i32 9, label %151
    i32 8, label %143
    i32 10, label %339
  ]

338:                                              ; preds = %335
  br label %151

339:                                              ; preds = %335, %151
  %340 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %341 = call i32 @index_endscan(%struct.TYPE_34__* %340)
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %37, align 8
  %343 = load %struct.TYPE_36__*, %struct.TYPE_36__** %35, align 8
  %344 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %343, i32 0, i32 0
  store %struct.TYPE_31__* %342, %struct.TYPE_31__** %344, align 8
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %346 = call i32 @ExecDropSingleTupleTableSlot(%struct.TYPE_31__* %345)
  %347 = load i32, i32* %33, align 4
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  store i32 %350, i32* %12, align 4
  store i32 1, i32* %38, align 4
  br label %351

351:                                              ; preds = %339, %85
  %352 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %352)
  %353 = load i32, i32* %12, align 4
  ret i32 %353

354:                                              ; preds = %335
  unreachable
}

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_33__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @InitDirtySnapshot(i64, i64) #1

declare dso_local i32 @ScanKeyEntryInitialize(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_31__* @table_slot_create(%struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_36__* @GetPerTupleExprContext(i32*) #1

declare dso_local %struct.TYPE_34__* @index_beginscan(%struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @index_rescan(%struct.TYPE_34__*, i32*, i32, i32*, i32) #1

declare dso_local i64 @index_getnext_slot(%struct.TYPE_34__*, i32, %struct.TYPE_31__*) #1

declare dso_local i64 @ItemPointerIsValid(i32*) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_33__*) #1

declare dso_local i32 @FormIndexDatum(%struct.TYPE_35__*, %struct.TYPE_31__*, i32*, i32*, i32*) #1

declare dso_local i32 @index_recheck_constraint(%struct.TYPE_33__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local i32 @index_endscan(%struct.TYPE_34__*) #1

declare dso_local i32 @SpeculativeInsertionWait(i32, i64) #1

declare dso_local i32 @XactLockTableWait(i32, %struct.TYPE_33__*, i32*, i32) #1

declare dso_local i8* @BuildIndexValueDescription(%struct.TYPE_33__*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @errtableconstraint(%struct.TYPE_33__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ExecDropSingleTupleTableSlot(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
