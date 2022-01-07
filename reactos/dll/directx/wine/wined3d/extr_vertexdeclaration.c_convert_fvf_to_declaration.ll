; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_vertexdeclaration.c_convert_fvf_to_declaration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_vertexdeclaration.c_convert_fvf_to_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_vertex_element = type { i32 }
%struct.wined3d_fvf_convert_state = type { %struct.wined3d_vertex_element*, i32, i64, %struct.wined3d_gl_info* }

@WINED3DFVF_POSITION_MASK = common dso_local global i32 0, align 4
@WINED3DFVF_XYZB5 = common dso_local global i32 0, align 4
@WINED3DFVF_XYZRHW = common dso_local global i32 0, align 4
@WINED3DFVF_LASTBETA_D3DCOLOR = common dso_local global i32 0, align 4
@WINED3DFVF_LASTBETA_UBYTE4 = common dso_local global i32 0, align 4
@WINED3DFVF_NORMAL = common dso_local global i32 0, align 4
@WINED3DFVF_PSIZE = common dso_local global i32 0, align 4
@WINED3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@WINED3DFVF_SPECULAR = common dso_local global i32 0, align 4
@WINED3DFVF_TEXCOUNT_MASK = common dso_local global i32 0, align 4
@WINED3DFVF_TEXCOUNT_SHIFT = common dso_local global i32 0, align 4
@WINED3DFVF_XYZB1 = common dso_local global i32 0, align 4
@WINED3DFMT_R32G32B32A32_FLOAT = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_POSITIONT = common dso_local global i32 0, align 4
@WINED3DFVF_XYZW = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_POSITION = common dso_local global i32 0, align 4
@WINED3DFMT_R32G32B32_FLOAT = common dso_local global i32 0, align 4
@WINED3DFVF_XYZB2 = common dso_local global i32 0, align 4
@WINED3DFMT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_BLEND_WEIGHT = common dso_local global i32 0, align 4
@WINED3DFMT_R32_FLOAT = common dso_local global i32 0, align 4
@WINED3DFMT_R32G32_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unexpected amount of blend values: %u\0A\00", align 1
@WINED3DFMT_R8G8B8A8_UINT = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_BLEND_INDICES = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_NORMAL = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_PSIZE = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_COLOR = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_TEXCOORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*, i32, %struct.wined3d_vertex_element**)* @convert_fvf_to_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_fvf_to_declaration(%struct.wined3d_gl_info* %0, i32 %1, %struct.wined3d_vertex_element** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_vertex_element**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wined3d_fvf_convert_state, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wined3d_vertex_element** %2, %struct.wined3d_vertex_element*** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @WINED3DFVF_POSITION_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WINED3DFVF_XYZB5, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @WINED3DFVF_XYZRHW, align 4
  %32 = icmp sgt i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @WINED3DFVF_XYZB5, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @WINED3DFVF_XYZB5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @WINED3DFVF_LASTBETA_D3DCOLOR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @WINED3DFVF_LASTBETA_UBYTE4, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %42, %36
  %53 = phi i1 [ true, %42 ], [ true, %36 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %3
  %55 = phi i1 [ false, %3 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @WINED3DFVF_NORMAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @WINED3DFVF_PSIZE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @WINED3DFVF_DIFFUSE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @WINED3DFVF_SPECULAR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @WINED3DFVF_TEXCOUNT_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @WINED3DFVF_TEXCOUNT_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, -65536
  %92 = lshr i32 %91, 16
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @WINED3DFVF_XYZB5, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @WINED3DFVF_XYZB1, align 4
  %97 = sub nsw i32 %95, %96
  %98 = ashr i32 %97, 1
  %99 = add nsw i32 1, %98
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %54
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %102, %54
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %20, align 4
  %111 = icmp sgt i32 %110, 0
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i1 [ false, %105 ], [ %111, %109 ]
  %114 = zext i1 %113 to i32
  %115 = add nsw i32 %106, %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %18, align 4
  %128 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %129 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %17, i32 0, i32 3
  store %struct.wined3d_gl_info* %128, %struct.wined3d_gl_info** %129, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call %struct.wined3d_vertex_element* @heap_calloc(i32 %130, i32 4)
  %132 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %17, i32 0, i32 0
  store %struct.wined3d_vertex_element* %131, %struct.wined3d_vertex_element** %132, align 8
  %133 = icmp ne %struct.wined3d_vertex_element* %131, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %112
  store i32 -1, i32* %4, align 4
  br label %318

135:                                              ; preds = %112
  %136 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %17, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %17, i32 0, i32 1
  store i32 0, i32* %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @WINED3DFVF_XYZRHW, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @WINED3DFMT_R32G32B32A32_FLOAT, align 4
  %150 = load i32, i32* @WINED3D_DECL_USAGE_POSITIONT, align 4
  %151 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %149, i32 %150, i32 0)
  br label %167

152:                                              ; preds = %143, %140
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @WINED3DFVF_XYZW, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @WINED3DFVF_XYZW, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @WINED3DFMT_R32G32B32A32_FLOAT, align 4
  %160 = load i32, i32* @WINED3D_DECL_USAGE_POSITION, align 4
  %161 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %159, i32 %160, i32 0)
  br label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @WINED3DFMT_R32G32B32_FLOAT, align 4
  %164 = load i32, i32* @WINED3D_DECL_USAGE_POSITION, align 4
  %165 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %163, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %166, %148
  br label %168

168:                                              ; preds = %167, %135
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %212

171:                                              ; preds = %168
  %172 = load i32, i32* %20, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %212

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @WINED3DFVF_XYZB5, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @WINED3DFVF_XYZB2, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %174
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @WINED3DFVF_LASTBETA_D3DCOLOR, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @WINED3DFMT_B8G8R8A8_UNORM, align 4
  %187 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_WEIGHT, align 4
  %188 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %186, i32 %187, i32 0)
  br label %211

189:                                              ; preds = %180, %174
  %190 = load i32, i32* %20, align 4
  switch i32 %190, label %207 [
    i32 1, label %191
    i32 2, label %195
    i32 3, label %199
    i32 4, label %203
  ]

191:                                              ; preds = %189
  %192 = load i32, i32* @WINED3DFMT_R32_FLOAT, align 4
  %193 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_WEIGHT, align 4
  %194 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %192, i32 %193, i32 0)
  br label %210

195:                                              ; preds = %189
  %196 = load i32, i32* @WINED3DFMT_R32G32_FLOAT, align 4
  %197 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_WEIGHT, align 4
  %198 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %196, i32 %197, i32 0)
  br label %210

199:                                              ; preds = %189
  %200 = load i32, i32* @WINED3DFMT_R32G32B32_FLOAT, align 4
  %201 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_WEIGHT, align 4
  %202 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %200, i32 %201, i32 0)
  br label %210

203:                                              ; preds = %189
  %204 = load i32, i32* @WINED3DFMT_R32G32B32A32_FLOAT, align 4
  %205 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_WEIGHT, align 4
  %206 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %204, i32 %205, i32 0)
  br label %210

207:                                              ; preds = %189
  %208 = load i32, i32* %20, align 4
  %209 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %207, %203, %199, %195, %191
  br label %211

211:                                              ; preds = %210, %185
  br label %212

212:                                              ; preds = %211, %171, %168
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %250

215:                                              ; preds = %212
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @WINED3DFVF_LASTBETA_UBYTE4, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @WINED3DFVF_XYZB5, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @WINED3DFVF_XYZB2, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @WINED3DFVF_LASTBETA_D3DCOLOR, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226, %215
  %232 = load i32, i32* @WINED3DFMT_R8G8B8A8_UINT, align 4
  %233 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_INDICES, align 4
  %234 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %232, i32 %233, i32 0)
  br label %249

235:                                              ; preds = %226, %220
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @WINED3DFVF_LASTBETA_D3DCOLOR, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32, i32* @WINED3DFMT_B8G8R8A8_UNORM, align 4
  %242 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_INDICES, align 4
  %243 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %241, i32 %242, i32 0)
  br label %248

244:                                              ; preds = %235
  %245 = load i32, i32* @WINED3DFMT_R32_FLOAT, align 4
  %246 = load i32, i32* @WINED3D_DECL_USAGE_BLEND_INDICES, align 4
  %247 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %245, i32 %246, i32 0)
  br label %248

248:                                              ; preds = %244, %240
  br label %249

249:                                              ; preds = %248, %231
  br label %250

250:                                              ; preds = %249, %212
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i32, i32* @WINED3DFMT_R32G32B32_FLOAT, align 4
  %255 = load i32, i32* @WINED3D_DECL_USAGE_NORMAL, align 4
  %256 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %254, i32 %255, i32 0)
  br label %257

257:                                              ; preds = %253, %250
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i32, i32* @WINED3DFMT_R32_FLOAT, align 4
  %262 = load i32, i32* @WINED3D_DECL_USAGE_PSIZE, align 4
  %263 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %261, i32 %262, i32 0)
  br label %264

264:                                              ; preds = %260, %257
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i32, i32* @WINED3DFMT_B8G8R8A8_UNORM, align 4
  %269 = load i32, i32* @WINED3D_DECL_USAGE_COLOR, align 4
  %270 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %268, i32 %269, i32 0)
  br label %271

271:                                              ; preds = %267, %264
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i32, i32* @WINED3DFMT_B8G8R8A8_UNORM, align 4
  %276 = load i32, i32* @WINED3D_DECL_USAGE_COLOR, align 4
  %277 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %275, i32 %276, i32 1)
  br label %278

278:                                              ; preds = %274, %271
  store i32 0, i32* %19, align 4
  br label %279

279:                                              ; preds = %310, %278
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %15, align 4
  %282 = icmp ult i32 %280, %281
  br i1 %282, label %283, label %313

283:                                              ; preds = %279
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* %19, align 4
  %286 = mul i32 %285, 2
  %287 = ashr i32 %284, %286
  %288 = and i32 %287, 3
  switch i32 %288, label %309 [
    i32 131, label %289
    i32 130, label %294
    i32 129, label %299
    i32 128, label %304
  ]

289:                                              ; preds = %283
  %290 = load i32, i32* @WINED3DFMT_R32_FLOAT, align 4
  %291 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %292 = load i32, i32* %19, align 4
  %293 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %290, i32 %291, i32 %292)
  br label %309

294:                                              ; preds = %283
  %295 = load i32, i32* @WINED3DFMT_R32G32_FLOAT, align 4
  %296 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %297 = load i32, i32* %19, align 4
  %298 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %295, i32 %296, i32 %297)
  br label %309

299:                                              ; preds = %283
  %300 = load i32, i32* @WINED3DFMT_R32G32B32_FLOAT, align 4
  %301 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %302 = load i32, i32* %19, align 4
  %303 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %300, i32 %301, i32 %302)
  br label %309

304:                                              ; preds = %283
  %305 = load i32, i32* @WINED3DFMT_R32G32B32A32_FLOAT, align 4
  %306 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %307 = load i32, i32* %19, align 4
  %308 = call i32 @append_decl_element(%struct.wined3d_fvf_convert_state* %17, i32 %305, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %283, %304, %299, %294, %289
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %19, align 4
  %312 = add i32 %311, 1
  store i32 %312, i32* %19, align 4
  br label %279

313:                                              ; preds = %279
  %314 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %17, i32 0, i32 0
  %315 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %314, align 8
  %316 = load %struct.wined3d_vertex_element**, %struct.wined3d_vertex_element*** %7, align 8
  store %struct.wined3d_vertex_element* %315, %struct.wined3d_vertex_element** %316, align 8
  %317 = load i32, i32* %18, align 4
  store i32 %317, i32* %4, align 4
  br label %318

318:                                              ; preds = %313, %134
  %319 = load i32, i32* %4, align 4
  ret i32 %319
}

declare dso_local %struct.wined3d_vertex_element* @heap_calloc(i32, i32) #1

declare dso_local i32 @append_decl_element(%struct.wined3d_fvf_convert_state*, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
