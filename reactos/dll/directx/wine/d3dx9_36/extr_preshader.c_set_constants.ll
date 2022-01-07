; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_set_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_set_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.d3dx_regstore = type { i64* }
%struct.d3dx_const_tab = type { i32, %struct.d3dx_const_param_eval_output*, i32 }
%struct.d3dx_const_param_eval_output = type { i32, i32, i32, i64, i32, %struct.d3dx_parameter*, i64 }
%struct.d3dx_parameter = type { i32*, i32, i32, i32 }
%struct.IDirect3DDevice9 = type { i32 }
%struct.const_upload_info = type { i32, i32, i32, i32, i32, i64 }

@PRES_REGTAB_COUNT = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@D3DXPC_SCALAR = common dso_local global i64 0, align 8
@D3DXPC_VECTOR = common dso_local global i64 0, align 8
@table_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_regstore*, %struct.d3dx_const_tab*, i32, i32*, %struct.IDirect3DDevice9*, i32, i32, i32)* @set_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_constants(%struct.d3dx_regstore* %0, %struct.d3dx_const_tab* %1, i32 %2, i32* %3, %struct.IDirect3DDevice9* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.d3dx_regstore*, align 8
  %11 = alloca %struct.d3dx_const_tab*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.IDirect3DDevice9*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.d3dx_const_param_eval_output*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.d3dx_parameter*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.const_upload_info, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca %struct.d3dx_const_param_eval_output*, align 8
  %39 = alloca i32, align 4
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %10, align 8
  store %struct.d3dx_const_tab* %1, %struct.d3dx_const_tab** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store %struct.IDirect3DDevice9* %4, %struct.IDirect3DDevice9** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %40 = load i32, i32* @PRES_REGTAB_COUNT, align 4
  store i32 %40, i32* %21, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %8
  %44 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %14, align 8
  %45 = icmp ne %struct.IDirect3DDevice9* %44, null
  br label %46

46:                                               ; preds = %43, %8
  %47 = phi i1 [ true, %8 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* @D3D_OK, align 4
  store i32 %49, i32* %24, align 4
  %50 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %11, align 8
  %51 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %25, align 4
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %368, %46
  %54 = load i32, i32* %18, align 4
  %55 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %11, align 8
  %56 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %371

59:                                               ; preds = %53
  %60 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %11, align 8
  %61 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %60, i32 0, i32 1
  %62 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %62, i64 %64
  store %struct.d3dx_const_param_eval_output* %65, %struct.d3dx_const_param_eval_output** %26, align 8
  %66 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %67 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %27, align 4
  %69 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %70 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %69, i32 0, i32 5
  %71 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %70, align 8
  store %struct.d3dx_parameter* %71, %struct.d3dx_parameter** %28, align 8
  %72 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %73 = icmp ne %struct.d3dx_parameter* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %76 = load i32, i32* %25, align 4
  %77 = call i32 @is_param_dirty(%struct.d3dx_parameter* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %59
  br label %368

80:                                               ; preds = %74
  %81 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %82 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %34, align 8
  %84 = load i32, i32* %27, align 4
  %85 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %86 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @get_offset_reg(i32 %84, i32 %87)
  store i32 %88, i32* %32, align 4
  %89 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %90 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %80
  %94 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %95 = load i32, i32* %27, align 4
  %96 = load i32*, i32** %34, align 8
  %97 = load i32, i32* %32, align 4
  %98 = load i32, i32* %27, align 4
  %99 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %100 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @get_offset_reg(i32 %98, i32 %101)
  %103 = call i32 @regstore_set_values(%struct.d3dx_regstore* %94, i32 %95, i32* %96, i32 %97, i32 %102)
  br label %368

104:                                              ; preds = %80
  %105 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %106 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @table_type_from_param_type(i32 %107)
  store i32 %108, i32* %35, align 4
  %109 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %110 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @D3DXPC_SCALAR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %104
  %115 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %116 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @D3DXPC_VECTOR, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %173

120:                                              ; preds = %114, %104
  %121 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %122 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %125 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @max(i32 %123, i32 %126)
  store i32 %127, i32* %36, align 4
  %128 = load i32, i32* %36, align 4
  %129 = load i32, i32* %27, align 4
  %130 = call i32 @get_reg_components(i32 %129)
  %131 = icmp uge i32 %128, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %120
  %133 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %32, align 4
  %136 = load i32*, i32** %34, align 8
  %137 = load i32, i32* %36, align 4
  %138 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %139 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = mul i32 %137, %140
  %142 = load i32, i32* %35, align 4
  %143 = call i32 @regstore_set_data(%struct.d3dx_regstore* %133, i32 %134, i32 %135, i32* %136, i32 %141, i32 %142)
  br label %172

144:                                              ; preds = %120
  store i32 0, i32* %29, align 4
  br label %145

145:                                              ; preds = %168, %144
  %146 = load i32, i32* %29, align 4
  %147 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %148 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ult i32 %146, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %145
  %152 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %32, align 4
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %29, align 4
  %157 = call i32 @get_offset_reg(i32 %155, i32 %156)
  %158 = add i32 %154, %157
  %159 = load i32*, i32** %34, align 8
  %160 = load i32, i32* %29, align 4
  %161 = load i32, i32* %36, align 4
  %162 = mul i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %36, align 4
  %166 = load i32, i32* %35, align 4
  %167 = call i32 @regstore_set_data(%struct.d3dx_regstore* %152, i32 %153, i32 %158, i32* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %151
  %169 = load i32, i32* %29, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %29, align 4
  br label %145

171:                                              ; preds = %145
  br label %172

172:                                              ; preds = %171, %132
  br label %368

173:                                              ; preds = %114
  %174 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %175 = call i32 @get_const_upload_info(%struct.d3dx_const_param_eval_output* %174, %struct.const_upload_info* %33)
  store i32 0, i32* %29, align 4
  br label %176

176:                                              ; preds = %324, %173
  %177 = load i32, i32* %29, align 4
  %178 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %179 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = icmp ult i32 %177, %180
  br i1 %181, label %182, label %327

182:                                              ; preds = %176
  %183 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %184 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %27, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32, i32* %32, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32* %193, i32** %37, align 8
  %194 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %266

197:                                              ; preds = %182
  store i32 0, i32* %30, align 4
  br label %198

198:                                              ; preds = %233, %197
  %199 = load i32, i32* %30, align 4
  %200 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ult i32 %199, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %198
  store i32 0, i32* %31, align 4
  br label %204

204:                                              ; preds = %229, %203
  %205 = load i32, i32* %31, align 4
  %206 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ult i32 %205, %207
  br i1 %208, label %209, label %232

209:                                              ; preds = %204
  %210 = load i32*, i32** %34, align 8
  %211 = load i32, i32* %30, align 4
  %212 = load i32, i32* %31, align 4
  %213 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = mul i32 %212, %214
  %216 = add i32 %211, %215
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %210, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %37, align 8
  %221 = load i32, i32* %30, align 4
  %222 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = mul i32 %221, %223
  %225 = load i32, i32* %31, align 4
  %226 = add i32 %224, %225
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %220, i64 %227
  store i32 %219, i32* %228, align 4
  br label %229

229:                                              ; preds = %209
  %230 = load i32, i32* %31, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %31, align 4
  br label %204

232:                                              ; preds = %204
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %30, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %30, align 4
  br label %198

236:                                              ; preds = %198
  store i32 0, i32* %31, align 4
  br label %237

237:                                              ; preds = %262, %236
  %238 = load i32, i32* %31, align 4
  %239 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = icmp ult i32 %238, %240
  br i1 %241, label %242, label %265

242:                                              ; preds = %237
  %243 = load i32*, i32** %34, align 8
  %244 = load i32, i32* %30, align 4
  %245 = load i32, i32* %31, align 4
  %246 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = mul i32 %245, %247
  %249 = add i32 %244, %248
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %243, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %37, align 8
  %254 = load i32, i32* %30, align 4
  %255 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = mul i32 %254, %256
  %258 = load i32, i32* %31, align 4
  %259 = add i32 %257, %258
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %253, i64 %260
  store i32 %252, i32* %261, align 4
  br label %262

262:                                              ; preds = %242
  %263 = load i32, i32* %31, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %31, align 4
  br label %237

265:                                              ; preds = %237
  br label %306

266:                                              ; preds = %182
  store i32 0, i32* %30, align 4
  br label %267

267:                                              ; preds = %302, %266
  %268 = load i32, i32* %30, align 4
  %269 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ult i32 %268, %270
  br i1 %271, label %272, label %305

272:                                              ; preds = %267
  store i32 0, i32* %31, align 4
  br label %273

273:                                              ; preds = %298, %272
  %274 = load i32, i32* %31, align 4
  %275 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp ult i32 %274, %276
  br i1 %277, label %278, label %301

278:                                              ; preds = %273
  %279 = load i32*, i32** %34, align 8
  %280 = load i32, i32* %30, align 4
  %281 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = mul i32 %280, %282
  %284 = load i32, i32* %31, align 4
  %285 = add i32 %283, %284
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %279, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %37, align 8
  %290 = load i32, i32* %30, align 4
  %291 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %33, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = mul i32 %290, %292
  %294 = load i32, i32* %31, align 4
  %295 = add i32 %293, %294
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %289, i64 %296
  store i32 %288, i32* %297, align 4
  br label %298

298:                                              ; preds = %278
  %299 = load i32, i32* %31, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %31, align 4
  br label %273

301:                                              ; preds = %273
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %30, align 4
  %304 = add i32 %303, 1
  store i32 %304, i32* %30, align 4
  br label %267

305:                                              ; preds = %267
  br label %306

306:                                              ; preds = %305, %265
  %307 = load i32, i32* %27, align 4
  %308 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %309 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @get_offset_reg(i32 %307, i32 %310)
  %312 = load i32, i32* %32, align 4
  %313 = add i32 %312, %311
  store i32 %313, i32* %32, align 4
  %314 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %315 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %28, align 8
  %318 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %316, %319
  %321 = load i32*, i32** %34, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %34, align 8
  br label %324

324:                                              ; preds = %306
  %325 = load i32, i32* %29, align 4
  %326 = add i32 %325, 1
  store i32 %326, i32* %29, align 4
  br label %176

327:                                              ; preds = %176
  %328 = load i32, i32* %27, align 4
  %329 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %330 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @get_offset_reg(i32 %328, i32 %331)
  store i32 %332, i32* %32, align 4
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %334 = load i32, i32* %27, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %35, align 4
  %340 = icmp ne i32 %338, %339
  br i1 %340, label %341, label %367

341:                                              ; preds = %327
  %342 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %343 = load i32, i32* %27, align 4
  %344 = load i32, i32* %32, align 4
  %345 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %346 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %345, i32 0, i32 0
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %27, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = inttoptr i64 %351 to i32*
  %353 = load i32, i32* %32, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %27, align 4
  %357 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %358 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @get_offset_reg(i32 %356, i32 %359)
  %361 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %26, align 8
  %362 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = mul i32 %360, %363
  %365 = load i32, i32* %35, align 4
  %366 = call i32 @regstore_set_data(%struct.d3dx_regstore* %342, i32 %343, i32 %344, i32* %355, i32 %364, i32 %365)
  br label %367

367:                                              ; preds = %341, %327
  br label %368

368:                                              ; preds = %367, %172, %93, %79
  %369 = load i32, i32* %18, align 4
  %370 = add i32 %369, 1
  store i32 %370, i32* %18, align 4
  br label %53

371:                                              ; preds = %53
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %11, align 8
  %374 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 8
  %375 = load i32, i32* %22, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %371
  %378 = load i32, i32* @D3D_OK, align 4
  store i32 %378, i32* %9, align 4
  br label %512

379:                                              ; preds = %371
  store i32 0, i32* %18, align 4
  br label %380

380:                                              ; preds = %478, %379
  %381 = load i32, i32* %18, align 4
  %382 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %11, align 8
  %383 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp ult i32 %381, %384
  br i1 %385, label %386, label %481

386:                                              ; preds = %380
  %387 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %11, align 8
  %388 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %387, i32 0, i32 1
  %389 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %388, align 8
  %390 = load i32, i32* %18, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %389, i64 %391
  store %struct.d3dx_const_param_eval_output* %392, %struct.d3dx_const_param_eval_output** %38, align 8
  %393 = load i32, i32* %16, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %410, label %395

395:                                              ; preds = %386
  %396 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %397 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %396, i32 0, i32 5
  %398 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %397, align 8
  %399 = icmp ne %struct.d3dx_parameter* %398, null
  br i1 %399, label %400, label %407

400:                                              ; preds = %395
  %401 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %402 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %401, i32 0, i32 5
  %403 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %402, align 8
  %404 = load i32, i32* %25, align 4
  %405 = call i32 @is_param_dirty(%struct.d3dx_parameter* %403, i32 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %410, label %477

407:                                              ; preds = %395
  %408 = load i32, i32* %17, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %477

410:                                              ; preds = %407, %400, %386
  %411 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %412 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  store i32 %413, i32* %39, align 4
  %414 = load i32, i32* %39, align 4
  %415 = load i32, i32* %21, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %435

417:                                              ; preds = %410
  %418 = load i32, i32* %19, align 4
  %419 = load i32, i32* %20, align 4
  %420 = add i32 %418, %419
  %421 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %422 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %420, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %417
  %426 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %427 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %430 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = mul i32 %428, %431
  %433 = load i32, i32* %20, align 4
  %434 = add i32 %433, %432
  store i32 %434, i32* %20, align 4
  br label %476

435:                                              ; preds = %417, %410
  %436 = load i32, i32* %20, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %464

438:                                              ; preds = %435
  %439 = load i32*, i32** %13, align 8
  %440 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %14, align 8
  %441 = load i32, i32* %15, align 4
  %442 = load i32, i32* %21, align 4
  %443 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %444 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %443, i32 0, i32 0
  %445 = load i64*, i64** %444, align 8
  %446 = load i32, i32* %21, align 4
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds i64, i64* %445, i64 %447
  %449 = load i64, i64* %448, align 8
  %450 = inttoptr i64 %449 to i32*
  %451 = load i32, i32* %21, align 4
  %452 = load i32, i32* %19, align 4
  %453 = call i32 @get_offset_reg(i32 %451, i32 %452)
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %450, i64 %454
  %456 = load i32, i32* %19, align 4
  %457 = load i32, i32* %20, align 4
  %458 = call i32 @set_constants_device(i32* %439, %struct.IDirect3DDevice9* %440, i32 %441, i32 %442, i32* %455, i32 %456, i32 %457)
  store i32 %458, i32* %23, align 4
  %459 = call i64 @FAILED(i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %438
  %462 = load i32, i32* %23, align 4
  store i32 %462, i32* %24, align 4
  br label %463

463:                                              ; preds = %461, %438
  br label %464

464:                                              ; preds = %463, %435
  %465 = load i32, i32* %39, align 4
  store i32 %465, i32* %21, align 4
  %466 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %467 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  store i32 %468, i32* %19, align 4
  %469 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %470 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %38, align 8
  %473 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = mul i32 %471, %474
  store i32 %475, i32* %20, align 4
  br label %476

476:                                              ; preds = %464, %425
  br label %477

477:                                              ; preds = %476, %407, %400
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %18, align 4
  %480 = add i32 %479, 1
  store i32 %480, i32* %18, align 4
  br label %380

481:                                              ; preds = %380
  %482 = load i32, i32* %20, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %510

484:                                              ; preds = %481
  %485 = load i32*, i32** %13, align 8
  %486 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %14, align 8
  %487 = load i32, i32* %15, align 4
  %488 = load i32, i32* %21, align 4
  %489 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %10, align 8
  %490 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %489, i32 0, i32 0
  %491 = load i64*, i64** %490, align 8
  %492 = load i32, i32* %21, align 4
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = inttoptr i64 %495 to i32*
  %497 = load i32, i32* %21, align 4
  %498 = load i32, i32* %19, align 4
  %499 = call i32 @get_offset_reg(i32 %497, i32 %498)
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %496, i64 %500
  %502 = load i32, i32* %19, align 4
  %503 = load i32, i32* %20, align 4
  %504 = call i32 @set_constants_device(i32* %485, %struct.IDirect3DDevice9* %486, i32 %487, i32 %488, i32* %501, i32 %502, i32 %503)
  store i32 %504, i32* %23, align 4
  %505 = call i64 @FAILED(i32 %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %484
  %508 = load i32, i32* %23, align 4
  store i32 %508, i32* %24, align 4
  br label %509

509:                                              ; preds = %507, %484
  br label %510

510:                                              ; preds = %509, %481
  %511 = load i32, i32* %24, align 4
  store i32 %511, i32* %9, align 4
  br label %512

512:                                              ; preds = %510, %377
  %513 = load i32, i32* %9, align 4
  ret i32 %513
}

declare dso_local i32 @is_param_dirty(%struct.d3dx_parameter*, i32) #1

declare dso_local i32 @get_offset_reg(i32, i32) #1

declare dso_local i32 @regstore_set_values(%struct.d3dx_regstore*, i32, i32*, i32, i32) #1

declare dso_local i32 @table_type_from_param_type(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @get_reg_components(i32) #1

declare dso_local i32 @regstore_set_data(%struct.d3dx_regstore*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_const_upload_info(%struct.d3dx_const_param_eval_output*, %struct.const_upload_info*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @set_constants_device(i32*, %struct.IDirect3DDevice9*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
