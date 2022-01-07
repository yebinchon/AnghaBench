; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_material_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_material_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32, %struct.TYPE_13__**)*, i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i8**)* }
%struct.mesh_data = type { i32, i32, i32*, i8* }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"truncated data (%ld bytes)\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"number of material face indices (%u) doesn't match number of faces (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"face %u: reference to undefined material %u (only %u materials)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TID_D3DRMMaterial = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"more materials defined than declared\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"only %u of %u materials defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.mesh_data*)* @parse_material_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_material_list(%struct.TYPE_13__* %0, %struct.mesh_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.mesh_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.mesh_data* %1, %struct.mesh_data** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %15 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %16 = call i32 @destroy_materials(%struct.mesh_data* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32 (%struct.TYPE_13__*, i32*, i8**)*, i32 (%struct.TYPE_13__*, i32*, i8**)** %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = bitcast i32** %8 to i8**
  %24 = call i32 %21(%struct.TYPE_13__* %22, i32* %7, i8** %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %256

30:                                               ; preds = %2
  %31 = load i32*, i32** %8, align 8
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* @E_FAIL, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %241

39:                                               ; preds = %30
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %9, align 8
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @D3D_OK, align 4
  store i32 %46, i32* %6, align 4
  br label %241

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 8
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %241

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  %57 = load i32, i32* %55, align 4
  %58 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %59 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 -1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %67 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  br label %241

70:                                               ; preds = %54
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %74 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 8, %77
  %79 = icmp ult i64 %72, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %241

83:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %87 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  %93 = load i32, i32* %91, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 -1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %100, i32 %101)
  br label %241

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %84

107:                                              ; preds = %84
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i8* @HeapAlloc(i32 %108, i32 0, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %116 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %119 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = call i8* @HeapAlloc(i32 %117, i32 0, i32 %123)
  %125 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %126 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %128 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %107
  %132 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %133 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %131, %107
  %137 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %137, i32* %6, align 4
  br label %241

138:                                              ; preds = %131
  %139 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %140 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %145 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = call i32 @memcpy(i8* %141, i32* %143, i32 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %154, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = call i32 %155(%struct.TYPE_13__* %156, i32* %14)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i64 @FAILED(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %138
  br label %241

162:                                              ; preds = %138
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %224, %162
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %227

167:                                              ; preds = %163
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i32 (%struct.TYPE_13__*, i32, %struct.TYPE_13__**)*, i32 (%struct.TYPE_13__*, i32, %struct.TYPE_13__**)** %171, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 %172(%struct.TYPE_13__* %173, i32 %174, %struct.TYPE_13__** %11)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i64 @FAILED(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %241

180:                                              ; preds = %167
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %184, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %187 = call i32 %185(%struct.TYPE_13__* %186, i32* %10)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i64 @FAILED(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %241

192:                                              ; preds = %180
  %193 = call i64 @IsEqualGUID(i32* %10, i32* @TID_D3DRMMaterial)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %192
  %196 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %197 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %203 = load i32, i32* @E_FAIL, align 4
  store i32 %203, i32* %6, align 4
  br label %241

204:                                              ; preds = %195
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %206 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %207 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %210 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  %215 = call i32 @parse_material(%struct.TYPE_13__* %205, i32* %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call i64 @FAILED(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %204
  br label %241

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220, %192
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %223 = call i32 @IUnknown_Release(%struct.TYPE_13__* %222)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %163

227:                                              ; preds = %163
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %230 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %228, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %227
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %236 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %234, i32 %237)
  %239 = load i32, i32* @E_FAIL, align 4
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %233, %227
  br label %241

241:                                              ; preds = %240, %219, %201, %191, %179, %161, %136, %96, %80, %62, %51, %45, %36
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %243 = icmp ne %struct.TYPE_13__* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %246 = call i32 @IUnknown_Release(%struct.TYPE_13__* %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %251, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = call i32 %252(%struct.TYPE_13__* %253)
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %247, %28
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @destroy_materials(%struct.mesh_data*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @parse_material(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
