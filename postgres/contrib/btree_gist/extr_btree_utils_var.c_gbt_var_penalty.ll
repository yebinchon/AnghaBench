; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_penalty.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_var.c_gbt_var_penalty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64 (i64, i64, i32, i32*)* }
%struct.TYPE_18__ = type { i64, i64 }

@VARHDRSZ = common dso_local global i64 0, align 8
@FLT_MIN = common dso_local global i64 0, align 8
@FLT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float* @gbt_var_penalty(float* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32 %3, %struct.TYPE_16__* %4, i32* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca %struct.TYPE_18__, align 8
  %17 = alloca %struct.TYPE_18__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca %struct.TYPE_18__, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_18__, align 8
  %26 = alloca [4 x i8], align 1
  store float* %0, float** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  store i32* %5, i32** %12, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @DatumGetPointer(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %13, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @DatumGetPointer(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %14, align 8
  %37 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %37, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = call { i64, i64 } @gbt_var_key_readable(i32* %38)
  %40 = bitcast %struct.TYPE_18__* %17 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %39, 0
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %39, 1
  store i64 %44, i64* %43, align 8
  %45 = bitcast %struct.TYPE_18__* %16 to i8*
  %46 = bitcast %struct.TYPE_18__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %6
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i32* @gbt_var_leaf2node(i32* %53, %struct.TYPE_16__* %54, i32* %55)
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = icmp ne i32* %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i32*, i32** %18, align 8
  %62 = call { i64, i64 } @gbt_var_key_readable(i32* %61)
  %63 = bitcast %struct.TYPE_18__* %19 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = extractvalue { i64, i64 } %62, 0
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = extractvalue { i64, i64 } %62, 1
  store i64 %67, i64* %66, align 8
  %68 = bitcast %struct.TYPE_18__* %16 to i8*
  %69 = bitcast %struct.TYPE_18__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  br label %70

70:                                               ; preds = %60, %52
  br label %71

71:                                               ; preds = %70, %6
  %72 = load i32*, i32** %13, align 8
  %73 = call { i64, i64 } @gbt_var_key_readable(i32* %72)
  %74 = bitcast %struct.TYPE_18__* %20 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { i64, i64 } %73, 0
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { i64, i64 } %73, 1
  store i64 %78, i64* %77, align 8
  %79 = bitcast %struct.TYPE_18__* %15 to i8*
  %80 = bitcast %struct.TYPE_18__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @VARSIZE(i64 %82)
  %84 = load i64, i64* @VARHDRSZ, align 8
  %85 = sub i64 %83, %84
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @VARSIZE(i64 %89)
  %91 = load i64, i64* @VARHDRSZ, align 8
  %92 = sub i64 %90, %91
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %95, align 4
  br label %303

96:                                               ; preds = %87, %71
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i64 (i64, i64, i32, i32*)*, i64 (i64, i64, i32, i32*)** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = call i64 %99(i64 %101, i64 %103, i32 %104, i32* %105)
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = call i64 @gbt_bytea_pf_match(i64 %110, i64 %112, %struct.TYPE_16__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %108, %96
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64 (i64, i64, i32, i32*)*, i64 (i64, i64, i32, i32*)** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i64 %119(i64 %121, i64 %123, i32 %124, i32* %125)
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %302, label %128

128:                                              ; preds = %116
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = call i64 @gbt_bytea_pf_match(i64 %130, i64 %132, %struct.TYPE_16__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %302, label %136

136:                                              ; preds = %128, %108
  %137 = call i32 @PointerGetDatum(i32 0)
  store i32 %137, i32* %21, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @gbt_var_bin_union(i32* %21, i32* %138, i32 %139, %struct.TYPE_16__* %140, i32* %141)
  %143 = load i32, i32* %21, align 4
  %144 = call i64 @DatumGetPointer(i32 %143)
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %147 = call i64 @gbt_var_node_cp_len(i32* %145, %struct.TYPE_16__* %146)
  store i64 %147, i64* %23, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = call i32 @gbt_var_bin_union(i32* %21, i32* %148, i32 %149, %struct.TYPE_16__* %150, i32* %151)
  %153 = load i32, i32* %21, align 4
  %154 = call i64 @DatumGetPointer(i32 %153)
  %155 = inttoptr i64 %154 to i32*
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %157 = call i64 @gbt_var_node_cp_len(i32* %155, %struct.TYPE_16__* %156)
  store i64 %157, i64* %24, align 8
  %158 = load i64, i64* %24, align 8
  %159 = load i64, i64* %23, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %136
  %162 = load i64, i64* %23, align 8
  %163 = load i64, i64* %24, align 8
  %164 = sub i64 %162, %163
  %165 = uitofp i64 %164 to double
  store double %165, double* %22, align 8
  br label %273

166:                                              ; preds = %136
  %167 = load i32, i32* %21, align 4
  %168 = call i64 @DatumGetPointer(i32 %167)
  %169 = inttoptr i64 %168 to i32*
  %170 = call { i64, i64 } @gbt_var_key_readable(i32* %169)
  %171 = bitcast %struct.TYPE_18__* %25 to { i64, i64 }*
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %171, i32 0, i32 0
  %173 = extractvalue { i64, i64 } %170, 0
  store i64 %173, i64* %172, align 8
  %174 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %171, i32 0, i32 1
  %175 = extractvalue { i64, i64 } %170, 1
  store i64 %175, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @VARSIZE(i64 %177)
  %179 = load i64, i64* @VARHDRSZ, align 8
  %180 = sub i64 %178, %179
  %181 = load i64, i64* %24, align 8
  %182 = icmp ule i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %166
  br label %191

184:                                              ; preds = %166
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64* @VARDATA(i64 %186)
  %188 = load i64, i64* %24, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  br label %191

191:                                              ; preds = %184, %183
  %192 = phi i64 [ 0, %183 ], [ %190, %184 ]
  %193 = trunc i64 %192 to i8
  %194 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  store i8 %193, i8* %194, align 1
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @VARSIZE(i64 %196)
  %198 = load i64, i64* @VARHDRSZ, align 8
  %199 = sub i64 %197, %198
  %200 = load i64, i64* %24, align 8
  %201 = icmp ule i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %210

203:                                              ; preds = %191
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64* @VARDATA(i64 %205)
  %207 = load i64, i64* %24, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  br label %210

210:                                              ; preds = %203, %202
  %211 = phi i64 [ 0, %202 ], [ %209, %203 ]
  %212 = trunc i64 %211 to i8
  %213 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 1
  store i8 %212, i8* %213, align 1
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @VARSIZE(i64 %215)
  %217 = load i64, i64* @VARHDRSZ, align 8
  %218 = sub i64 %216, %217
  %219 = load i64, i64* %24, align 8
  %220 = icmp ule i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %229

222:                                              ; preds = %210
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = call i64* @VARDATA(i64 %224)
  %226 = load i64, i64* %24, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i64, i64* %227, align 8
  br label %229

229:                                              ; preds = %222, %221
  %230 = phi i64 [ 0, %221 ], [ %228, %222 ]
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 2
  store i8 %231, i8* %232, align 1
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @VARSIZE(i64 %234)
  %236 = load i64, i64* @VARHDRSZ, align 8
  %237 = sub i64 %235, %236
  %238 = load i64, i64* %24, align 8
  %239 = icmp ule i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %229
  br label %248

241:                                              ; preds = %229
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = call i64* @VARDATA(i64 %243)
  %245 = load i64, i64* %24, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64, i64* %246, align 8
  br label %248

248:                                              ; preds = %241, %240
  %249 = phi i64 [ 0, %240 ], [ %247, %241 ]
  %250 = trunc i64 %249 to i8
  %251 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 3
  store i8 %250, i8* %251, align 1
  %252 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = sub nsw i32 %254, %257
  %259 = trunc i32 %258 to i8
  %260 = call double @Abs(i8 zeroext %259)
  %261 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 3
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 2
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = sub nsw i32 %263, %266
  %268 = trunc i32 %267 to i8
  %269 = call double @Abs(i8 zeroext %268)
  %270 = fadd double %260, %269
  store double %270, double* %22, align 8
  %271 = load double, double* %22, align 8
  %272 = fdiv double %271, 2.560000e+02
  store double %272, double* %22, align 8
  br label %273

273:                                              ; preds = %248, %161
  %274 = load i64, i64* @FLT_MIN, align 8
  %275 = sitofp i64 %274 to float
  %276 = load float*, float** %7, align 8
  %277 = load float, float* %276, align 4
  %278 = fadd float %277, %275
  store float %278, float* %276, align 4
  %279 = load double, double* %22, align 8
  %280 = load i64, i64* %23, align 8
  %281 = add i64 %280, 1
  %282 = uitofp i64 %281 to double
  %283 = fdiv double %279, %282
  %284 = fptrunc double %283 to float
  %285 = load float*, float** %7, align 8
  %286 = load float, float* %285, align 4
  %287 = fadd float %286, %284
  store float %287, float* %285, align 4
  %288 = load i32, i32* @FLT_MAX, align 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  %297 = sdiv i32 %288, %296
  %298 = sitofp i32 %297 to float
  %299 = load float*, float** %7, align 8
  %300 = load float, float* %299, align 4
  %301 = fmul float %300, %298
  store float %301, float* %299, align 4
  br label %302

302:                                              ; preds = %273, %128, %116
  br label %303

303:                                              ; preds = %302, %94
  %304 = load float*, float** %7, align 8
  ret float* %304
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local { i64, i64 } @gbt_var_key_readable(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gbt_var_leaf2node(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @VARSIZE(i64) #1

declare dso_local i64 @gbt_bytea_pf_match(i64, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @gbt_var_bin_union(i32*, i32*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @gbt_var_node_cp_len(i32*, %struct.TYPE_16__*) #1

declare dso_local i64* @VARDATA(i64) #1

declare dso_local double @Abs(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
