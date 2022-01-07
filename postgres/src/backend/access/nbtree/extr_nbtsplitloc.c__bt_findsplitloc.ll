; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_findsplitloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsplitloc.c__bt_findsplitloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@SizeOfPageHeaderData = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i64 0, align 8
@BTREE_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"could not find a feasible split point for index \22%s\22\00", align 1
@BTREE_NONLEAF_FILLFACTOR = common dso_local global double 0.000000e+00, align 8
@MAX_LEAF_INTERVAL = common dso_local global i32 0, align 4
@MAX_INTERNAL_INTERVAL = common dso_local global i32 0, align 4
@SPLIT_DEFAULT = common dso_local global i64 0, align 8
@SPLIT_MANY_DUPLICATES = common dso_local global i64 0, align 8
@SPLIT_SINGLE_VALUE = common dso_local global i64 0, align 8
@BTREE_SINGLEVAL_FILLFACTOR = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bt_findsplitloc(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_12__, align 8
  %30 = alloca %struct.TYPE_12__, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @PageGetSpecialPointer(i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @PageGetMaxOffsetNumber(i32 %36)
  store i64 %37, i64* %25, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @PageGetPageSize(i32 %38)
  %40 = load i32, i32* @SizeOfPageHeaderData, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @MAXALIGN(i32 4)
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %16, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @P_RIGHTMOST(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %6
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* @P_HIKEY, align 8
  %50 = call i32 @PageGetItemId(i32 %48, i64 %49)
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %23, align 4
  %52 = call i32 @ItemIdGetLength(i32 %51)
  %53 = call i32 @MAXALIGN(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %47, %6
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @PageGetExactFreeSpace(i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @BTREE_DEFAULT_FILLFACTOR, align 4
  %67 = call i32 @RelationGetFillFactor(i32 %65, i32 %66)
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 10
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 14
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 13
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @P_ISLEAF(i64 %80)
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @P_RIGHTMOST(i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* %15, align 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %16, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* %17, align 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @SIZE_MAX, align 4
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 12
  store i32 %92, i32* %93, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 11
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* %25, align 8
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 6
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 16, %101
  %103 = trunc i64 %102 to i32
  %104 = call %struct.TYPE_12__* @palloc(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  store i32 0, i32* %106, align 4
  store i32 0, i32* %18, align 4
  %107 = load i64, i64* %14, align 8
  %108 = call i64 @P_FIRSTDATAKEY(i64 %107)
  store i64 %108, i64* %24, align 8
  br label %109

109:                                              ; preds = %154, %59
  %110 = load i64, i64* %24, align 8
  %111 = load i64, i64* %25, align 8
  %112 = icmp sle i64 %110, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i64, i64* %24, align 8
  %116 = call i32 @PageGetItemId(i32 %114, i64 %115)
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %23, align 4
  %118 = call i32 @ItemIdGetLength(i32 %117)
  %119 = call i32 @MAXALIGN(i32 %118)
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %31, align 4
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load i64, i64* %24, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %31, align 4
  %130 = call i32 @_bt_recsplitloc(%struct.TYPE_13__* %21, i64 %127, i32 0, i32 %128, i32 %129)
  br label %150

131:                                              ; preds = %113
  %132 = load i64, i64* %24, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i64, i64* %24, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %31, align 4
  %139 = call i32 @_bt_recsplitloc(%struct.TYPE_13__* %21, i64 %136, i32 1, i32 %137, i32 %138)
  br label %149

140:                                              ; preds = %131
  %141 = load i64, i64* %24, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %31, align 4
  %144 = call i32 @_bt_recsplitloc(%struct.TYPE_13__* %21, i64 %141, i32 0, i32 %142, i32 %143)
  %145 = load i64, i64* %24, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %31, align 4
  %148 = call i32 @_bt_recsplitloc(%struct.TYPE_13__* %21, i64 %145, i32 1, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %140, %135
  br label %150

150:                                              ; preds = %149, %126
  %151 = load i32, i32* %31, align 4
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %24, align 8
  %156 = call i64 @OffsetNumberNext(i64 %155)
  store i64 %156, i64* %24, align 8
  br label %109

157:                                              ; preds = %109
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %17, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @Assert(i32 %161)
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %25, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i64, i64* %10, align 8
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @_bt_recsplitloc(%struct.TYPE_13__* %21, i64 %167, i32 0, i32 %168, i32 0)
  br label %170

170:                                              ; preds = %166, %157
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, i32* @ERROR, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @RelationGetRelationName(i32 %176)
  %178 = call i32 @elog(i32 %175, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %174, %170
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %28, align 4
  %186 = load double, double* @BTREE_NONLEAF_FILLFACTOR, align 8
  %187 = fdiv double %186, 1.000000e+02
  store double %187, double* %27, align 8
  br label %245

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  store i32 1, i32* %28, align 4
  %193 = load i32, i32* %20, align 4
  %194 = sitofp i32 %193 to double
  %195 = fdiv double %194, 1.000000e+02
  store double %195, double* %27, align 8
  br label %244

196:                                              ; preds = %188
  %197 = load i64, i64* %25, align 8
  %198 = load i32, i32* %20, align 4
  %199 = call i64 @_bt_afternewitemoff(%struct.TYPE_13__* %21, i64 %197, i32 %198, i32* %28)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %242

201:                                              ; preds = %196
  %202 = load i32, i32* %28, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i32, i32* %20, align 4
  %206 = sitofp i32 %205 to double
  %207 = fdiv double %206, 1.000000e+02
  store double %207, double* %27, align 8
  br label %241

208:                                              ; preds = %201
  store i32 0, i32* %32, align 4
  br label %209

209:                                              ; preds = %237, %208
  %210 = load i32, i32* %32, align 4
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = load i32, i32* %32, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i64 %218
  store %struct.TYPE_12__* %219, %struct.TYPE_12__** %33, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %214
  %225 = load i64, i64* %10, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = call i32 @pfree(%struct.TYPE_12__* %232)
  %234 = load i32*, i32** %13, align 8
  store i32 1, i32* %234, align 4
  %235 = load i64, i64* %10, align 8
  store i64 %235, i64* %7, align 8
  br label %327

236:                                              ; preds = %224, %214
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %32, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %32, align 4
  br label %209

240:                                              ; preds = %209
  store double 5.000000e-01, double* %27, align 8
  br label %241

241:                                              ; preds = %240, %204
  br label %243

242:                                              ; preds = %196
  store i32 0, i32* %28, align 4
  store double 5.000000e-01, double* %27, align 8
  br label %243

243:                                              ; preds = %242, %241
  br label %244

244:                                              ; preds = %243, %192
  br label %245

245:                                              ; preds = %244, %183
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = sitofp i32 %247 to double
  %249 = fmul double %248, 5.000000e-02
  %250 = call i32 @Max(i32 1, double %249)
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %245
  %255 = load i32, i32* @MAX_LEAF_INTERVAL, align 4
  br label %258

256:                                              ; preds = %245
  %257 = load i32, i32* @MAX_INTERNAL_INTERVAL, align 4
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %260 = call i32 @Min(i32 %250, i32 %259)
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 8
  store i32 %260, i32* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 0
  %265 = bitcast %struct.TYPE_12__* %29 to i8*
  %266 = bitcast %struct.TYPE_12__* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 16, i1 false)
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %272
  %274 = bitcast %struct.TYPE_12__* %30 to i8*
  %275 = bitcast %struct.TYPE_12__* %273 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %274, i8* align 8 %275, i64 16, i1 false)
  %276 = load double, double* %27, align 8
  %277 = load i32, i32* %28, align 4
  %278 = call i32 @_bt_deltasortsplits(%struct.TYPE_13__* %21, double %276, i32 %277)
  %279 = call i32 @_bt_strategy(%struct.TYPE_13__* %21, %struct.TYPE_12__* %29, %struct.TYPE_12__* %30, i64* %22)
  store i32 %279, i32* %19, align 4
  %280 = load i64, i64* %22, align 8
  %281 = load i64, i64* @SPLIT_DEFAULT, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %258
  br label %318

284:                                              ; preds = %258
  %285 = load i64, i64* %22, align 8
  %286 = load i64, i64* @SPLIT_MANY_DUPLICATES, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %302

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @Assert(i32 %290)
  %292 = load i32, i32* %19, align 4
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 10
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %294)
  %296 = icmp eq i32 %292, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 @Assert(i32 %297)
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 8
  store i32 %300, i32* %301, align 8
  br label %317

302:                                              ; preds = %284
  %303 = load i64, i64* %22, align 8
  %304 = load i64, i64* @SPLIT_SINGLE_VALUE, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %316

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @Assert(i32 %308)
  store i32 1, i32* %28, align 4
  %310 = load double, double* @BTREE_SINGLEVAL_FILLFACTOR, align 8
  %311 = fdiv double %310, 1.000000e+02
  store double %311, double* %27, align 8
  %312 = load double, double* %27, align 8
  %313 = load i32, i32* %28, align 4
  %314 = call i32 @_bt_deltasortsplits(%struct.TYPE_13__* %21, double %312, i32 %313)
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 8
  store i32 1, i32* %315, align 8
  br label %316

316:                                              ; preds = %306, %302
  br label %317

317:                                              ; preds = %316, %288
  br label %318

318:                                              ; preds = %317, %283
  %319 = load i32, i32* %19, align 4
  %320 = load i32*, i32** %13, align 8
  %321 = load i64, i64* %22, align 8
  %322 = call i64 @_bt_bestsplitloc(%struct.TYPE_13__* %21, i32 %319, i32* %320, i64 %321)
  store i64 %322, i64* %26, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 9
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %323, align 8
  %325 = call i32 @pfree(%struct.TYPE_12__* %324)
  %326 = load i64, i64* %26, align 8
  store i64 %326, i64* %7, align 8
  br label %327

327:                                              ; preds = %318, %230
  %328 = load i64, i64* %7, align 8
  ret i64 %328
}

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetPageSize(i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @P_RIGHTMOST(i64) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i64 @PageGetExactFreeSpace(i32) #1

declare dso_local i32 @RelationGetFillFactor(i32, i32) #1

declare dso_local i32 @P_ISLEAF(i64) #1

declare dso_local %struct.TYPE_12__* @palloc(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i32 @_bt_recsplitloc(%struct.TYPE_13__*, i64, i32, i32, i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @_bt_afternewitemoff(%struct.TYPE_13__*, i64, i32, i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_12__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @Max(i32, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_bt_deltasortsplits(%struct.TYPE_13__*, double, i32) #1

declare dso_local i32 @_bt_strategy(%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i64*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i64 @_bt_bestsplitloc(%struct.TYPE_13__*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
