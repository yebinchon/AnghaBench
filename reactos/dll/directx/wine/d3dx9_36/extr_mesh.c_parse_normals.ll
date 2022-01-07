; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_normals.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_normals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*, i32*, i8**)* }
%struct.mesh_data = type { i32, i32, i32, i32*, i32*, i32*, i32 }

@D3DFVF_NORMAL = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"truncated data (%ld bytes)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"number of face normals (%u) doesn't match number of faces (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"face %u: number of normals (%u) doesn't match number of vertices (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"face %u, normal index %u: reference to undefined normal %u (only %u normals)\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.mesh_data*)* @parse_normals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_normals(%struct.TYPE_7__* %0, %struct.mesh_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mesh_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.mesh_data* %1, %struct.mesh_data** %5, align 8
  %15 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %16 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %20 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %11, align 4
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %25 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @HeapFree(i32 %23, i32 0, i32* %26)
  %28 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %29 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %31 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %33 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @D3DFVF_NORMAL, align 4
  %35 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %36 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_7__*, i32*, i8**)*, i32 (%struct.TYPE_7__*, i32*, i8**)** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = bitcast i32** %8 to i8**
  %46 = call i32 %43(%struct.TYPE_7__* %44, i32* %7, i8** %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %255

52:                                               ; preds = %2
  %53 = load i32, i32* @E_FAIL, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 8
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %246

60:                                               ; preds = %52
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %64 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %70 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = add i64 8, %73
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 %74, %77
  %79 = icmp ult i64 %68, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %60
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %246

83:                                               ; preds = %60
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %86 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i8* @HeapAlloc(i32 %84, i32 0, i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %94 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %93, i32 0, i32 5
  store i32* %92, i32** %94, align 8
  %95 = call i32 (...) @GetProcessHeap()
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i8* @HeapAlloc(i32 %95, i32 0, i32 %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %103 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %102, i32 0, i32 3
  store i32* %101, i32** %103, align 8
  %104 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %105 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %83
  %109 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %110 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %108, %83
  %114 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %114, i32* %6, align 4
  br label %246

115:                                              ; preds = %108
  %116 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %117 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %121 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i32* %118, i32* %119, i32 %125)
  %127 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %128 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 %131
  store i32* %133, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %154, %115
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %137 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %142 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %148 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @D3DXVec3Normalize(i32* %146, i32* %152)
  br label %154

154:                                              ; preds = %140
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %134

157:                                              ; preds = %134
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %161 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %168 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %169)
  br label %246

171:                                              ; preds = %157
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  store i32* %173, i32** %8, align 8
  %174 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %175 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %241, %171
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %180 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %244

183:                                              ; preds = %177
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %188 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 2
  %195 = icmp ne i32 %186, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %183
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %200 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 2
  %207 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32 %198, i32 %206)
  br label %246

208:                                              ; preds = %183
  %209 = load i32*, i32** %8, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  store i32* %210, i32** %8, align 8
  store i32 0, i32* %12, align 4
  br label %211

211:                                              ; preds = %237, %208
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %211
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %220 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %218, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %215
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %228 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i32 %224, i32 %225, i32 %226, i32 %229)
  br label %246

231:                                              ; preds = %215
  %232 = load i32, i32* %14, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %9, align 8
  store i32 %232, i32* %233, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 4
  store i32* %236, i32** %8, align 8
  br label %237

237:                                              ; preds = %231
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %211

240:                                              ; preds = %211
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %177

244:                                              ; preds = %177
  %245 = load i32, i32* @D3D_OK, align 4
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %244, %223, %196, %164, %113, %80, %57
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %250, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %253 = call i32 %251(%struct.TYPE_7__* %252)
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %246, %50
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @D3DXVec3Normalize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
