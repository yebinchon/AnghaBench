; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_vdecl_convert_fvf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_vdecl_convert_fvf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i64, i8* }

@D3DFVF_POSITION_MASK = common dso_local global i32 0, align 4
@D3DFVF_XYZB5 = common dso_local global i32 0, align 4
@D3DFVF_XYZRHW = common dso_local global i32 0, align 4
@D3DFVF_LASTBETA_D3DCOLOR = common dso_local global i32 0, align 4
@D3DFVF_LASTBETA_UBYTE4 = common dso_local global i32 0, align 4
@D3DFVF_NORMAL = common dso_local global i32 0, align 4
@D3DFVF_PSIZE = common dso_local global i32 0, align 4
@D3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@D3DFVF_SPECULAR = common dso_local global i32 0, align 4
@D3DFVF_TEXCOUNT_MASK = common dso_local global i32 0, align 4
@D3DFVF_TEXCOUNT_SHIFT = common dso_local global i32 0, align 4
@D3DFVF_XYZB1 = common dso_local global i32 0, align 4
@D3DERR_OUTOFVIDEOMEMORY = common dso_local global i32 0, align 4
@D3DDECLTYPE_FLOAT4 = common dso_local global i8* null, align 8
@D3DDECLUSAGE_POSITIONT = common dso_local global i8* null, align 8
@D3DFVF_XYZW = common dso_local global i32 0, align 4
@D3DDECLUSAGE_POSITION = common dso_local global i8* null, align 8
@D3DDECLTYPE_FLOAT3 = common dso_local global i8* null, align 8
@D3DFVF_XYZB2 = common dso_local global i32 0, align 4
@D3DDECLTYPE_D3DCOLOR = common dso_local global i8* null, align 8
@D3DDECLTYPE_FLOAT1 = common dso_local global i8* null, align 8
@D3DDECLTYPE_FLOAT2 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Unexpected amount of blend values: %u\0A\00", align 1
@D3DDECLUSAGE_BLENDWEIGHT = common dso_local global i8* null, align 8
@D3DDECLTYPE_UBYTE4 = common dso_local global i64 0, align 8
@D3DDECLUSAGE_BLENDINDICES = common dso_local global i8* null, align 8
@D3DDECLUSAGE_NORMAL = common dso_local global i8* null, align 8
@D3DDECLUSAGE_PSIZE = common dso_local global i8* null, align 8
@D3DDECLUSAGE_COLOR = common dso_local global i8* null, align 8
@D3DDECLUSAGE_TEXCOORD = common dso_local global i8* null, align 8
@D3DDECLMETHOD_DEFAULT = common dso_local global i32 0, align 4
@d3d_dtype_lookup = common dso_local global %struct.TYPE_7__* null, align 8
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdecl_convert_fvf(i32 %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @D3DFVF_POSITION_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @D3DFVF_XYZB5, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @D3DFVF_XYZRHW, align 4
  %32 = icmp sgt i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @D3DFVF_XYZB5, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @D3DFVF_XYZB5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @D3DFVF_LASTBETA_D3DCOLOR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @D3DFVF_LASTBETA_UBYTE4, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %42, %36
  %53 = phi i1 [ true, %42 ], [ true, %36 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %2
  %55 = phi i1 [ false, %2 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @D3DFVF_NORMAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @D3DFVF_PSIZE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @D3DFVF_DIFFUSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @D3DFVF_SPECULAR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @D3DFVF_TEXCOUNT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @D3DFVF_TEXCOUNT_SHIFT, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, -65536
  %84 = lshr i32 %83, 16
  store i32 %84, i32* %17, align 4
  call void (%struct.TYPE_6__*, ...) @D3DDECL_END(%struct.TYPE_6__* sret %18)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @D3DFVF_XYZB5, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @D3DFVF_XYZB1, align 4
  %89 = sub nsw i32 %87, %88
  %90 = ashr i32 %89, 1
  %91 = add nsw i32 1, %90
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %54
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %94, %54
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %21, align 4
  %103 = icmp sgt i32 %102, 0
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i1 [ false, %97 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  %107 = add nsw i32 %98, %106
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %117, %118
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %20, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 40
  %124 = trunc i64 %123 to i32
  %125 = call %struct.TYPE_6__* @heap_alloc(i32 %124)
  store %struct.TYPE_6__* %125, %struct.TYPE_6__** %19, align 8
  %126 = icmp ne %struct.TYPE_6__* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %104
  %128 = load i32, i32* @D3DERR_OUTOFVIDEOMEMORY, align 4
  store i32 %128, i32* %3, align 4
  br label %558

129:                                              ; preds = %104
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sub i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %133
  %135 = bitcast %struct.TYPE_6__* %134 to i8*
  %136 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 40, i1 false)
  store i32 0, i32* %6, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %207

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @D3DFVF_XYZRHW, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load i8*, i8** @D3DDECLTYPE_FLOAT4, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i64 %149, i64* %154, align 8
  %155 = load i8*, i8** @D3DDECLUSAGE_POSITIONT, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  store i8* %155, i8** %160, align 8
  br label %199

161:                                              ; preds = %142, %139
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @D3DFVF_XYZW, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @D3DFVF_XYZW, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load i8*, i8** @D3DDECLTYPE_FLOAT4, align 8
  %172 = ptrtoint i8* %171 to i64
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i64 %172, i64* %177, align 8
  %178 = load i8*, i8** @D3DDECLUSAGE_POSITION, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %180 = load i32, i32* %6, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 5
  store i8* %178, i8** %183, align 8
  br label %198

184:                                              ; preds = %164, %161
  %185 = load i8*, i8** @D3DDECLTYPE_FLOAT3, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %188 = load i32, i32* %6, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i64 %186, i64* %191, align 8
  %192 = load i8*, i8** @D3DDECLUSAGE_POSITION, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %194 = load i32, i32* %6, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 5
  store i8* %192, i8** %197, align 8
  br label %198

198:                                              ; preds = %184, %170
  br label %199

199:                                              ; preds = %198, %147
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %201 = load i32, i32* %6, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  store i32 0, i32* %204, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %199, %129
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %284

210:                                              ; preds = %207
  %211 = load i32, i32* %21, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %284

213:                                              ; preds = %210
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @D3DFVF_XYZB5, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @D3DFVF_XYZB2, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %213
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @D3DFVF_LASTBETA_D3DCOLOR, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load i8*, i8** @D3DDECLTYPE_D3DCOLOR, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %228 = load i32, i32* %6, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i64 %226, i64* %231, align 8
  br label %270

232:                                              ; preds = %219, %213
  %233 = load i32, i32* %21, align 4
  switch i32 %233, label %266 [
    i32 1, label %234
    i32 2, label %242
    i32 3, label %250
    i32 4, label %258
  ]

234:                                              ; preds = %232
  %235 = load i8*, i8** @D3DDECLTYPE_FLOAT1, align 8
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %238 = load i32, i32* %6, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i64 %236, i64* %241, align 8
  br label %269

242:                                              ; preds = %232
  %243 = load i8*, i8** @D3DDECLTYPE_FLOAT2, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %246 = load i32, i32* %6, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  store i64 %244, i64* %249, align 8
  br label %269

250:                                              ; preds = %232
  %251 = load i8*, i8** @D3DDECLTYPE_FLOAT3, align 8
  %252 = ptrtoint i8* %251 to i64
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %254 = load i32, i32* %6, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i64 %252, i64* %257, align 8
  br label %269

258:                                              ; preds = %232
  %259 = load i8*, i8** @D3DDECLTYPE_FLOAT4, align 8
  %260 = ptrtoint i8* %259 to i64
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %262 = load i32, i32* %6, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  store i64 %260, i64* %265, align 8
  br label %269

266:                                              ; preds = %232
  %267 = load i32, i32* %21, align 4
  %268 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %266, %258, %250, %242, %234
  br label %270

270:                                              ; preds = %269, %224
  %271 = load i8*, i8** @D3DDECLUSAGE_BLENDWEIGHT, align 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %273 = load i32, i32* %6, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 5
  store i8* %271, i8** %276, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %278 = load i32, i32* %6, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  store i32 0, i32* %281, align 8
  %282 = load i32, i32* %6, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %6, align 4
  br label %284

284:                                              ; preds = %270, %210, %207
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %346

287:                                              ; preds = %284
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @D3DFVF_LASTBETA_UBYTE4, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %303, label %292

292:                                              ; preds = %287
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* @D3DFVF_XYZB5, align 4
  %295 = and i32 %293, %294
  %296 = load i32, i32* @D3DFVF_XYZB2, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %310

298:                                              ; preds = %292
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @D3DFVF_LASTBETA_D3DCOLOR, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %298, %287
  %304 = load i64, i64* @D3DDECLTYPE_UBYTE4, align 8
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %306 = load i32, i32* %6, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  store i64 %304, i64* %309, align 8
  br label %332

310:                                              ; preds = %298, %292
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @D3DFVF_LASTBETA_D3DCOLOR, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %310
  %316 = load i8*, i8** @D3DDECLTYPE_D3DCOLOR, align 8
  %317 = ptrtoint i8* %316 to i64
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %319 = load i32, i32* %6, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  store i64 %317, i64* %322, align 8
  br label %331

323:                                              ; preds = %310
  %324 = load i8*, i8** @D3DDECLTYPE_FLOAT1, align 8
  %325 = ptrtoint i8* %324 to i64
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %327 = load i32, i32* %6, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  store i64 %325, i64* %330, align 8
  br label %331

331:                                              ; preds = %323, %315
  br label %332

332:                                              ; preds = %331, %303
  %333 = load i8*, i8** @D3DDECLUSAGE_BLENDINDICES, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %335 = load i32, i32* %6, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 5
  store i8* %333, i8** %338, align 8
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %340 = load i32, i32* %6, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  store i32 0, i32* %343, align 8
  %344 = load i32, i32* %6, align 4
  %345 = add i32 %344, 1
  store i32 %345, i32* %6, align 4
  br label %346

346:                                              ; preds = %332, %284
  %347 = load i32, i32* %12, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %370

349:                                              ; preds = %346
  %350 = load i8*, i8** @D3DDECLTYPE_FLOAT3, align 8
  %351 = ptrtoint i8* %350 to i64
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %353 = load i32, i32* %6, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  store i64 %351, i64* %356, align 8
  %357 = load i8*, i8** @D3DDECLUSAGE_NORMAL, align 8
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %359 = load i32, i32* %6, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 5
  store i8* %357, i8** %362, align 8
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %364 = load i32, i32* %6, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 1
  store i32 0, i32* %367, align 8
  %368 = load i32, i32* %6, align 4
  %369 = add i32 %368, 1
  store i32 %369, i32* %6, align 4
  br label %370

370:                                              ; preds = %349, %346
  %371 = load i32, i32* %13, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %394

373:                                              ; preds = %370
  %374 = load i8*, i8** @D3DDECLTYPE_FLOAT1, align 8
  %375 = ptrtoint i8* %374 to i64
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %377 = load i32, i32* %6, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 0
  store i64 %375, i64* %380, align 8
  %381 = load i8*, i8** @D3DDECLUSAGE_PSIZE, align 8
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %383 = load i32, i32* %6, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 5
  store i8* %381, i8** %386, align 8
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %388 = load i32, i32* %6, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 1
  store i32 0, i32* %391, align 8
  %392 = load i32, i32* %6, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %6, align 4
  br label %394

394:                                              ; preds = %373, %370
  %395 = load i32, i32* %14, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %418

397:                                              ; preds = %394
  %398 = load i8*, i8** @D3DDECLTYPE_D3DCOLOR, align 8
  %399 = ptrtoint i8* %398 to i64
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %401 = load i32, i32* %6, align 4
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 0
  store i64 %399, i64* %404, align 8
  %405 = load i8*, i8** @D3DDECLUSAGE_COLOR, align 8
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %407 = load i32, i32* %6, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 5
  store i8* %405, i8** %410, align 8
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %412 = load i32, i32* %6, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 1
  store i32 0, i32* %415, align 8
  %416 = load i32, i32* %6, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %6, align 4
  br label %418

418:                                              ; preds = %397, %394
  %419 = load i32, i32* %15, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %442

421:                                              ; preds = %418
  %422 = load i8*, i8** @D3DDECLTYPE_D3DCOLOR, align 8
  %423 = ptrtoint i8* %422 to i64
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %425 = load i32, i32* %6, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 0
  store i64 %423, i64* %428, align 8
  %429 = load i8*, i8** @D3DDECLUSAGE_COLOR, align 8
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %431 = load i32, i32* %6, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 5
  store i8* %429, i8** %434, align 8
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %436 = load i32, i32* %6, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 1
  store i32 1, i32* %439, align 8
  %440 = load i32, i32* %6, align 4
  %441 = add i32 %440, 1
  store i32 %441, i32* %6, align 4
  br label %442

442:                                              ; preds = %421, %418
  store i32 0, i32* %7, align 4
  br label %443

443:                                              ; preds = %501, %442
  %444 = load i32, i32* %7, align 4
  %445 = load i32, i32* %16, align 4
  %446 = icmp ult i32 %444, %445
  br i1 %446, label %447, label %504

447:                                              ; preds = %443
  %448 = load i32, i32* %17, align 4
  %449 = load i32, i32* %7, align 4
  %450 = mul i32 %449, 2
  %451 = ashr i32 %448, %450
  %452 = and i32 %451, 3
  store i32 %452, i32* %22, align 4
  %453 = load i32, i32* %22, align 4
  switch i32 %453, label %486 [
    i32 131, label %454
    i32 130, label %462
    i32 129, label %470
    i32 128, label %478
  ]

454:                                              ; preds = %447
  %455 = load i8*, i8** @D3DDECLTYPE_FLOAT1, align 8
  %456 = ptrtoint i8* %455 to i64
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %458 = load i32, i32* %6, align 4
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 0
  store i64 %456, i64* %461, align 8
  br label %486

462:                                              ; preds = %447
  %463 = load i8*, i8** @D3DDECLTYPE_FLOAT2, align 8
  %464 = ptrtoint i8* %463 to i64
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %466 = load i32, i32* %6, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 0
  store i64 %464, i64* %469, align 8
  br label %486

470:                                              ; preds = %447
  %471 = load i8*, i8** @D3DDECLTYPE_FLOAT3, align 8
  %472 = ptrtoint i8* %471 to i64
  %473 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %474 = load i32, i32* %6, align 4
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 0
  store i64 %472, i64* %477, align 8
  br label %486

478:                                              ; preds = %447
  %479 = load i8*, i8** @D3DDECLTYPE_FLOAT4, align 8
  %480 = ptrtoint i8* %479 to i64
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %482 = load i32, i32* %6, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 0
  store i64 %480, i64* %485, align 8
  br label %486

486:                                              ; preds = %447, %478, %470, %462, %454
  %487 = load i8*, i8** @D3DDECLUSAGE_TEXCOORD, align 8
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %489 = load i32, i32* %6, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 5
  store i8* %487, i8** %492, align 8
  %493 = load i32, i32* %7, align 4
  %494 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %495 = load i32, i32* %6, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 1
  store i32 %493, i32* %498, align 8
  %499 = load i32, i32* %6, align 4
  %500 = add i32 %499, 1
  store i32 %500, i32* %6, align 4
  br label %501

501:                                              ; preds = %486
  %502 = load i32, i32* %7, align 4
  %503 = add i32 %502, 1
  store i32 %503, i32* %7, align 4
  br label %443

504:                                              ; preds = %443
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %505

505:                                              ; preds = %551, %504
  %506 = load i32, i32* %6, align 4
  %507 = load i32, i32* %20, align 4
  %508 = sub i32 %507, 1
  %509 = icmp ult i32 %506, %508
  br i1 %509, label %510, label %554

510:                                              ; preds = %505
  %511 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %512 = load i32, i32* %6, align 4
  %513 = zext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %511, i64 %513
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 4
  store i64 0, i64* %515, align 8
  %516 = load i32, i32* @D3DDECLMETHOD_DEFAULT, align 4
  %517 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %518 = load i32, i32* %6, align 4
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 3
  store i32 %516, i32* %521, align 8
  %522 = load i32, i32* %8, align 4
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %524 = load i32, i32* %6, align 4
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 2
  store i32 %522, i32* %527, align 4
  %528 = load %struct.TYPE_7__*, %struct.TYPE_7__** @d3d_dtype_lookup, align 8
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %530 = load i32, i32* %6, align 4
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %528, i64 %534
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.TYPE_7__*, %struct.TYPE_7__** @d3d_dtype_lookup, align 8
  %539 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %540 = load i32, i32* %6, align 4
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = mul i32 %537, %547
  %549 = load i32, i32* %8, align 4
  %550 = add i32 %549, %548
  store i32 %550, i32* %8, align 4
  br label %551

551:                                              ; preds = %510
  %552 = load i32, i32* %6, align 4
  %553 = add i32 %552, 1
  store i32 %553, i32* %6, align 4
  br label %505

554:                                              ; preds = %505
  %555 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %556 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %555, %struct.TYPE_6__** %556, align 8
  %557 = load i32, i32* @D3D_OK, align 4
  store i32 %557, i32* %3, align 4
  br label %558

558:                                              ; preds = %554, %127
  %559 = load i32, i32* %3, align 4
  ret i32 %559
}

declare dso_local void @D3DDECL_END(%struct.TYPE_6__* sret, ...) #1

declare dso_local %struct.TYPE_6__* @heap_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
