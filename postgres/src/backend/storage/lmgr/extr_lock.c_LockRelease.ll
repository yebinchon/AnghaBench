; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockRelease.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i64, i32, i32, i32, %struct.TYPE_24__*, i32*, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32* }

@LockMethods = common dso_local global %struct.TYPE_25__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized lock method: %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unrecognized lock mode: %d\00", align 1
@LockMethodLocalHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"you don't own a lock of type %s\00", align 1
@CurrentResourceOwner = common dso_local global i32* null, align 8
@FastPathLocalUseCount = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_22__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LockMethodLockHash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to re-find shared lock object\00", align 1
@LockMethodProcLockHash = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to re-find shared proclock object\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"LockRelease: found\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"LockRelease: WRONGTYPE\00", align 1
@LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LockRelease(%struct.TYPE_26__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ule i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @LockMethods, align 8
  %29 = call i64 @lengthof(%struct.TYPE_25__** %28)
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i32, i8*, ...) @elog(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.TYPE_25__**, %struct.TYPE_25__*** @LockMethods, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %36, i64 %37
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ule i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %35
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 (i32, i8*, ...) @elog(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = call i32 @MemSet(%struct.TYPE_27__* %10, i32 0, i32 24)
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %56 = bitcast %struct.TYPE_26__* %54 to i8*
  %57 = bitcast %struct.TYPE_26__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* @LockMethodLocalHash, align 4
  %61 = bitcast %struct.TYPE_27__* %10 to i8*
  %62 = load i32, i32* @HASH_FIND, align 4
  %63 = call i64 @hash_search(i32 %60, i8* %61, i32 %62, i32* null)
  %64 = inttoptr i64 %63 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %64, %struct.TYPE_29__** %11, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %66 = icmp ne %struct.TYPE_29__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67, %52
  %73 = load i32, i32* @WARNING, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32, i8*, ...) @elog(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  store i32 0, i32* %4, align 4
  br label %316

81:                                               ; preds = %67
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %83, align 8
  store %struct.TYPE_28__* %84, %struct.TYPE_28__** %16, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32* null, i32** %17, align 8
  br label %90

88:                                               ; preds = %81
  %89 = load i32*, i32** @CurrentResourceOwner, align 8
  store i32* %89, i32** %17, align 8
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %158, %90
  %96 = load i32, i32* %18, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %161

98:                                               ; preds = %95
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = icmp eq i32* %104, %105
  br i1 %106, label %107, label %157

107:                                              ; preds = %98
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @Assert(i32 %115)
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %107
  %126 = load i32*, i32** %17, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** %17, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %131 = call i32 @ResourceOwnerForgetLock(i32* %129, %struct.TYPE_29__* %130)
  br label %132

132:                                              ; preds = %128, %125
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %132
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i64 %145
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i64 %151
  %153 = bitcast %struct.TYPE_28__* %146 to i8*
  %154 = bitcast %struct.TYPE_28__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 16, i1 false)
  br label %155

155:                                              ; preds = %142, %132
  br label %156

156:                                              ; preds = %155, %107
  br label %161

157:                                              ; preds = %98
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %18, align 4
  br label %95

161:                                              ; preds = %156, %95
  %162 = load i32, i32* %18, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* @WARNING, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* %6, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i32, i8*, ...) @elog(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %171)
  store i32 0, i32* %4, align 4
  br label %316

173:                                              ; preds = %161
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  store i32 1, i32* %4, align 4
  br label %316

183:                                              ; preds = %173
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 2
  store i32 0, i32* %185, align 4
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %187 = load i64, i64* %6, align 8
  %188 = call i32 @EligibleForRelationFastPath(%struct.TYPE_26__* %186, i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %183
  %191 = load i64, i64* @FastPathLocalUseCount, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %190
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** @MyProc, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* @LW_EXCLUSIVE, align 4
  %197 = call i32 @LWLockAcquire(i32* %195, i32 %196)
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @FastPathUnGrantRelationLock(i32 %200, i64 %201)
  store i32 %202, i32* %19, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** @MyProc, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = call i32 @LWLockRelease(i32* %204)
  %206 = load i32, i32* %19, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %193
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %210 = call i32 @RemoveLocalLock(%struct.TYPE_29__* %209)
  store i32 1, i32* %4, align 4
  br label %316

211:                                              ; preds = %193
  br label %212

212:                                              ; preds = %211, %190, %183
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32* @LockHashPartitionLock(i32 %215)
  store i32* %216, i32** %14, align 8
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* @LW_EXCLUSIVE, align 4
  %219 = call i32 @LWLockAcquire(i32* %217, i32 %218)
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %12, align 8
  %223 = load i32*, i32** %12, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %267, label %225

225:                                              ; preds = %212
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %227 = load i64, i64* %6, align 8
  %228 = call i32 @EligibleForRelationFastPath(%struct.TYPE_26__* %226, i64 %227)
  %229 = call i32 @Assert(i32 %228)
  %230 = load i32, i32* @LockMethodLockHash, align 4
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %232 = bitcast %struct.TYPE_26__* %231 to i8*
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @HASH_FIND, align 4
  %237 = call i64 @hash_search_with_hash_value(i32 %230, i8* %232, i32 %235, i32 %236, i32* null)
  %238 = inttoptr i64 %237 to i32*
  store i32* %238, i32** %12, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %225
  %242 = load i32, i32* @ERROR, align 4
  %243 = call i32 (i32, i8*, ...) @elog(i32 %242, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %225
  %245 = load i32*, i32** %12, align 8
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 5
  store i32* %245, i32** %247, align 8
  %248 = load i32*, i32** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  store i32* %248, i32** %249, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** @MyProc, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store %struct.TYPE_22__* %250, %struct.TYPE_22__** %251, align 8
  %252 = load i32, i32* @LockMethodProcLockHash, align 4
  %253 = bitcast %struct.TYPE_23__* %20 to i8*
  %254 = load i32, i32* @HASH_FIND, align 4
  %255 = call i64 @hash_search(i32 %252, i8* %253, i32 %254, i32* null)
  %256 = inttoptr i64 %255 to %struct.TYPE_24__*
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 4
  store %struct.TYPE_24__* %256, %struct.TYPE_24__** %258, align 8
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = icmp ne %struct.TYPE_24__* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %244
  %264 = load i32, i32* @ERROR, align 4
  %265 = call i32 (i32, i8*, ...) @elog(i32 %264, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %266

266:                                              ; preds = %263, %244
  br label %267

267:                                              ; preds = %266, %212
  %268 = load i32*, i32** %12, align 8
  %269 = load i64, i64* %6, align 8
  %270 = call i32 @LOCK_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %268, i64 %269)
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %272, align 8
  store %struct.TYPE_24__* %273, %struct.TYPE_24__** %13, align 8
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %275 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %274)
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i64, i64* %6, align 8
  %280 = call i32 @LOCKBIT_ON(i64 %279)
  %281 = and i32 %278, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %298, label %283

283:                                              ; preds = %267
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %285 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_24__* %284)
  %286 = load i32*, i32** %14, align 8
  %287 = call i32 @LWLockRelease(i32* %286)
  %288 = load i32, i32* @WARNING, align 4
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 1
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* %6, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = call i32 (i32, i8*, ...) @elog(i32 %288, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %294)
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %297 = call i32 @RemoveLocalLock(%struct.TYPE_29__* %296)
  store i32 0, i32* %4, align 4
  br label %316

298:                                              ; preds = %267
  %299 = load i32*, i32** %12, align 8
  %300 = load i64, i64* %6, align 8
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %303 = call i32 @UnGrantLock(i32* %299, i64 %300, %struct.TYPE_24__* %301, %struct.TYPE_25__* %302)
  store i32 %303, i32* %15, align 4
  %304 = load i32*, i32** %12, align 8
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @CleanUpLock(i32* %304, %struct.TYPE_24__* %305, %struct.TYPE_25__* %306, i32 %309, i32 %310)
  %312 = load i32*, i32** %14, align 8
  %313 = call i32 @LWLockRelease(i32* %312)
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %315 = call i32 @RemoveLocalLock(%struct.TYPE_29__* %314)
  store i32 1, i32* %4, align 4
  br label %316

316:                                              ; preds = %298, %283, %208, %182, %164, %72
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i64 @lengthof(%struct.TYPE_25__**) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @MemSet(%struct.TYPE_27__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ResourceOwnerForgetLock(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @EligibleForRelationFastPath(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @FastPathUnGrantRelationLock(i32, i64) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @RemoveLocalLock(%struct.TYPE_29__*) #1

declare dso_local i32* @LockHashPartitionLock(i32) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @LOCK_PRINT(i8*, i32*, i64) #1

declare dso_local i32 @PROCLOCK_PRINT(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @LOCKBIT_ON(i64) #1

declare dso_local i32 @UnGrantLock(i32*, i64, %struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @CleanUpLock(i32*, %struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
