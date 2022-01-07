; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_mesh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_17__**)*, i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*, i8**)* }
%struct.mesh_data = type { i32, i32, i32, i32*, i32*, i32, i64, i8*, i32 }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"truncated data (%ld bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"face %u has only %u vertices\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"face %u, index %u: undefined vertex %u (only %u vertices)\0A\00", align 1
@D3DFVF_XYZ = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TID_D3DRMMeshNormals = common dso_local global i32 0, align 4
@TID_D3DRMMeshVertexColors = common dso_local global i32 0, align 4
@TID_D3DRMMeshTextureCoords = common dso_local global i32 0, align 4
@TID_D3DRMMeshMaterialList = common dso_local global i32 0, align 4
@PROVIDE_MATERIALS = common dso_local global i32 0, align 4
@PROVIDE_SKININFO = common dso_local global i32 0, align 4
@DXFILEOBJ_XSkinMeshHeader = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Skin mesh header already encountered\0A\00", align 1
@DXFILEOBJ_SkinWeights = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Skin weights found but skin mesh header not encountered yet\0A\00", align 1
@.str.5 = private unnamed_addr constant [92 x i8] c"Mismatch between nb skin weights info %u encountered and nb bones %u from skin mesh header\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.mesh_data*, i32)* @parse_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mesh(%struct.TYPE_17__* %0, %struct.mesh_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.mesh_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.mesh_data* %1, %struct.mesh_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %14, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load i32 (%struct.TYPE_17__*, i32*, i8**)*, i32 (%struct.TYPE_17__*, i32*, i8**)** %24, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = bitcast i32** %10 to i8**
  %28 = call i32 %25(%struct.TYPE_17__* %26, i32* %9, i8** %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %472

34:                                               ; preds = %3
  %35 = load i32*, i32** %10, align 8
  store i32* %35, i32** %11, align 8
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %457

43:                                               ; preds = %34
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %47 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %51 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = add i64 8, %54
  %56 = icmp ult i64 %49, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %457

60:                                               ; preds = %43
  %61 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %62 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = add i64 4, %65
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %72 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %11, align 8
  %75 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %76 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %159, %60
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %80 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %162

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = sub nsw i64 %85, %91
  %93 = icmp ult i64 %92, 4
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %457

97:                                               ; preds = %83
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %18, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %11, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = sub nsw i64 %103, %109
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %97
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %457

118:                                              ; preds = %97
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123)
  br label %457

125:                                              ; preds = %118
  store i32 0, i32* %19, align 4
  br label %126

126:                                              ; preds = %149, %125
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %134 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %143 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %139, i32 %141, i32 %144)
  br label %457

146:                                              ; preds = %130
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  store i32* %148, i32** %11, align 8
  br label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %19, align 4
  br label %126

152:                                              ; preds = %126
  %153 = load i32, i32* %18, align 4
  %154 = sub nsw i32 %153, 2
  %155 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %156 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %77

162:                                              ; preds = %77
  %163 = load i32, i32* @D3DFVF_XYZ, align 4
  %164 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %165 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %168 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 1
  %172 = trunc i64 %171 to i32
  %173 = call i8* @HeapAlloc(i32 %166, i32 0, i32 %172)
  %174 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %175 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %174, i32 0, i32 7
  store i8* %173, i8** %175, align 8
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %178 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = call i8* @HeapAlloc(i32 %176, i32 0, i32 %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %186 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %185, i32 0, i32 3
  store i32* %184, i32** %186, align 8
  %187 = call i32 (...) @GetProcessHeap()
  %188 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %189 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %192 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %193, 2
  %195 = add nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i8* @HeapAlloc(i32 %187, i32 0, i32 %198)
  %200 = bitcast i8* %199 to i32*
  %201 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %202 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %201, i32 0, i32 4
  store i32* %200, i32** %202, align 8
  %203 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %204 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %203, i32 0, i32 7
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %162
  %208 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %209 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %214 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %212, %207, %162
  %218 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %218, i32* %8, align 4
  br label %457

219:                                              ; preds = %212
  %220 = load i32*, i32** %10, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 4
  store i32* %221, i32** %11, align 8
  %222 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %223 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %222, i32 0, i32 7
  %224 = load i8*, i8** %223, align 8
  %225 = load i32*, i32** %11, align 8
  %226 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %227 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = mul i64 %229, 4
  %231 = trunc i64 %230 to i32
  %232 = call i32 @memcpy(i8* %224, i32* %225, i32 %231)
  %233 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %234 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = mul i64 %236, 4
  %238 = add i64 %237, 4
  %239 = load i32*, i32** %11, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 %238
  store i32* %240, i32** %11, align 8
  %241 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %242 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %244

244:                                              ; preds = %275, %219
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %247 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %278

250:                                              ; preds = %244
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %20, align 4
  %253 = load i32*, i32** %11, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  store i32* %254, i32** %11, align 8
  %255 = load i32, i32* %20, align 4
  %256 = sub nsw i32 %255, 2
  %257 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %258 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %256, i32* %262, align 4
  br label %263

263:                                              ; preds = %267, %250
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %20, align 4
  %266 = icmp ne i32 %264, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %263
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %12, align 8
  store i32 %269, i32* %270, align 4
  %272 = load i32*, i32** %11, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 4
  store i32* %273, i32** %11, align 8
  br label %263

274:                                              ; preds = %263
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %15, align 4
  br label %244

278:                                              ; preds = %244
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 3
  %283 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %282, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %285 = call i32 %283(%struct.TYPE_17__* %284, i32* %16)
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i64 @FAILED(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %278
  br label %457

290:                                              ; preds = %278
  store i32 0, i32* %15, align 4
  br label %291

291:                                              ; preds = %415, %290
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %16, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %418

295:                                              ; preds = %291
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 2
  %300 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_17__**)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_17__**)** %299, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = load i32, i32* %15, align 4
  %303 = call i32 %300(%struct.TYPE_17__* %301, i32 %302, %struct.TYPE_17__** %14)
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %8, align 4
  %305 = call i64 @FAILED(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %295
  br label %457

308:                                              ; preds = %295
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %312, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %315 = call i32 %313(%struct.TYPE_17__* %314, i32* %13)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = call i64 @FAILED(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %457

320:                                              ; preds = %308
  %321 = call i64 @IsEqualGUID(i32* %13, i32* @TID_D3DRMMeshNormals)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %325 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %326 = call i32 @parse_normals(%struct.TYPE_17__* %324, %struct.mesh_data* %325)
  store i32 %326, i32* %8, align 4
  br label %407

327:                                              ; preds = %320
  %328 = call i64 @IsEqualGUID(i32* %13, i32* @TID_D3DRMMeshVertexColors)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %332 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %333 = call i32 @parse_vertex_colors(%struct.TYPE_17__* %331, %struct.mesh_data* %332)
  store i32 %333, i32* %8, align 4
  br label %406

334:                                              ; preds = %327
  %335 = call i64 @IsEqualGUID(i32* %13, i32* @TID_D3DRMMeshTextureCoords)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %334
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %339 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %340 = call i32 @parse_texture_coords(%struct.TYPE_17__* %338, %struct.mesh_data* %339)
  store i32 %340, i32* %8, align 4
  br label %405

341:                                              ; preds = %334
  %342 = call i64 @IsEqualGUID(i32* %13, i32* @TID_D3DRMMeshMaterialList)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %341
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* @PROVIDE_MATERIALS, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %344
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %351 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %352 = call i32 @parse_material_list(%struct.TYPE_17__* %350, %struct.mesh_data* %351)
  store i32 %352, i32* %8, align 4
  br label %404

353:                                              ; preds = %344, %341
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* @PROVIDE_SKININFO, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %403

358:                                              ; preds = %353
  %359 = call i64 @IsEqualGUID(i32* %13, i32* @DXFILEOBJ_XSkinMeshHeader)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %378

361:                                              ; preds = %358
  %362 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %363 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %362, i32 0, i32 6
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %368 = load i32, i32* @E_FAIL, align 4
  store i32 %368, i32* %8, align 4
  br label %457

369:                                              ; preds = %361
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %371 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %372 = call i32 @parse_skin_mesh_info(%struct.TYPE_17__* %370, %struct.mesh_data* %371, i32 0)
  store i32 %372, i32* %8, align 4
  %373 = load i32, i32* %8, align 4
  %374 = call i64 @FAILED(i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %369
  br label %457

377:                                              ; preds = %369
  br label %402

378:                                              ; preds = %358
  %379 = call i64 @IsEqualGUID(i32* %13, i32* @DXFILEOBJ_SkinWeights)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %401

381:                                              ; preds = %378
  %382 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %383 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %382, i32 0, i32 6
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %381
  %387 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %388 = load i32, i32* @E_FAIL, align 4
  store i32 %388, i32* %8, align 4
  br label %457

389:                                              ; preds = %381
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %391 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %392 = load i32, i32* %17, align 4
  %393 = call i32 @parse_skin_mesh_info(%struct.TYPE_17__* %390, %struct.mesh_data* %391, i32 %392)
  store i32 %393, i32* %8, align 4
  %394 = load i32, i32* %8, align 4
  %395 = call i64 @FAILED(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %389
  br label %457

398:                                              ; preds = %389
  %399 = load i32, i32* %17, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %17, align 4
  br label %401

401:                                              ; preds = %398, %378
  br label %402

402:                                              ; preds = %401, %377
  br label %403

403:                                              ; preds = %402, %353
  br label %404

404:                                              ; preds = %403, %349
  br label %405

405:                                              ; preds = %404, %337
  br label %406

406:                                              ; preds = %405, %330
  br label %407

407:                                              ; preds = %406, %323
  %408 = load i32, i32* %8, align 4
  %409 = call i64 @FAILED(i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %407
  br label %457

412:                                              ; preds = %407
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %414 = call i32 @IUnknown_Release(%struct.TYPE_17__* %413)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %14, align 8
  br label %415

415:                                              ; preds = %412
  %416 = load i32, i32* %15, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %15, align 4
  br label %291

418:                                              ; preds = %291
  %419 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %420 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %419, i32 0, i32 6
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %436

423:                                              ; preds = %418
  %424 = load i32, i32* %17, align 4
  %425 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %426 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 8
  %428 = icmp ne i32 %424, %427
  br i1 %428, label %429, label %436

429:                                              ; preds = %423
  %430 = load i32, i32* %17, align 4
  %431 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %432 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 8
  %434 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), i32 %430, i32 %433)
  %435 = load i32, i32* @E_FAIL, align 4
  store i32 %435, i32* %8, align 4
  br label %457

436:                                              ; preds = %423, %418
  %437 = load i32, i32* %7, align 4
  %438 = load i32, i32* @PROVIDE_SKININFO, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %455

441:                                              ; preds = %436
  %442 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %443 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %442, i32 0, i32 6
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %455, label %446

446:                                              ; preds = %441
  %447 = load %struct.mesh_data*, %struct.mesh_data** %6, align 8
  %448 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %447, i32 0, i32 6
  %449 = call i32 @create_dummy_skin(i64* %448)
  store i32 %449, i32* %8, align 4
  %450 = load i32, i32* %8, align 4
  %451 = call i64 @FAILED(i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %446
  br label %457

454:                                              ; preds = %446
  br label %455

455:                                              ; preds = %454, %441, %436
  %456 = load i32, i32* @D3D_OK, align 4
  store i32 %456, i32* %8, align 4
  br label %457

457:                                              ; preds = %455, %453, %429, %411, %397, %386, %376, %366, %319, %307, %289, %217, %137, %121, %115, %94, %57, %40
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %459 = icmp ne %struct.TYPE_17__* %458, null
  br i1 %459, label %460, label %463

460:                                              ; preds = %457
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %462 = call i32 @IUnknown_Release(%struct.TYPE_17__* %461)
  br label %463

463:                                              ; preds = %460, %457
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 0
  %468 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %467, align 8
  %469 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %470 = call i32 %468(%struct.TYPE_17__* %469)
  %471 = load i32, i32* %8, align 4
  store i32 %471, i32* %4, align 4
  br label %472

472:                                              ; preds = %463, %32
  %473 = load i32, i32* %4, align 4
  ret i32 %473
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @parse_normals(%struct.TYPE_17__*, %struct.mesh_data*) #1

declare dso_local i32 @parse_vertex_colors(%struct.TYPE_17__*, %struct.mesh_data*) #1

declare dso_local i32 @parse_texture_coords(%struct.TYPE_17__*, %struct.mesh_data*) #1

declare dso_local i32 @parse_material_list(%struct.TYPE_17__*, %struct.mesh_data*) #1

declare dso_local i32 @parse_skin_mesh_info(%struct.TYPE_17__*, %struct.mesh_data*, i32) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_17__*) #1

declare dso_local i32 @create_dummy_skin(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
