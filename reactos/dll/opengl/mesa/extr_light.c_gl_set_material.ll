; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_set_material.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_set_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.vertex_buffer* }
%struct.TYPE_5__ = type { %struct.gl_material* }
%struct.gl_material = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.vertex_buffer = type { i64, i32*, i32, %struct.gl_material** }

@GL_FALSE = common dso_local global i32 0, align 4
@NEW_LIGHTING = common dso_local global i32 0, align 4
@FRONT_AMBIENT_BIT = common dso_local global i32 0, align 4
@BACK_AMBIENT_BIT = common dso_local global i32 0, align 4
@FRONT_DIFFUSE_BIT = common dso_local global i32 0, align 4
@BACK_DIFFUSE_BIT = common dso_local global i32 0, align 4
@FRONT_SPECULAR_BIT = common dso_local global i32 0, align 4
@BACK_SPECULAR_BIT = common dso_local global i32 0, align 4
@FRONT_EMISSION_BIT = common dso_local global i32 0, align 4
@BACK_EMISSION_BIT = common dso_local global i32 0, align 4
@FRONT_SHININESS_BIT = common dso_local global i32 0, align 4
@BACK_SHININESS_BIT = common dso_local global i32 0, align 4
@FRONT_INDEXES_BIT = common dso_local global i32 0, align 4
@BACK_INDEXES_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_material(%struct.TYPE_6__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.gl_material*, align 8
  %8 = alloca %struct.vertex_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_6__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.vertex_buffer*, %struct.vertex_buffer** %16, align 8
  store %struct.vertex_buffer* %17, %struct.vertex_buffer** %8, align 8
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 3
  %20 = load %struct.gl_material**, %struct.gl_material*** %19, align 8
  %21 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %22 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.gl_material*, %struct.gl_material** %20, i64 %23
  %25 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  store %struct.gl_material* %25, %struct.gl_material** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %31 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %26
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @GL_FALSE, align 4
  %37 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %38 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %49

39:                                               ; preds = %3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.gl_material*, %struct.gl_material** %42, align 8
  store %struct.gl_material* %43, %struct.gl_material** %7, align 8
  %44 = load i32, i32* @NEW_LIGHTING, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %39, %14
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FRONT_AMBIENT_BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %56 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %55, i64 0
  %57 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i64*, i64** %6, align 8
  %60 = call i32 @COPY_4V(i32 %58, i64* %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @BACK_AMBIENT_BIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %68 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %67, i64 1
  %69 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i64*, i64** %6, align 8
  %72 = call i32 @COPY_4V(i32 %70, i64* %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FRONT_DIFFUSE_BIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %80 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %79, i64 0
  %81 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = call i32 @COPY_4V(i32 %82, i64* %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @BACK_DIFFUSE_BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %92 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %91, i64 1
  %93 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = call i32 @COPY_4V(i32 %94, i64* %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @FRONT_SPECULAR_BIT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %104 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %103, i64 0
  %105 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i64*, i64** %6, align 8
  %108 = call i32 @COPY_4V(i32 %106, i64* %107)
  br label %109

109:                                              ; preds = %102, %97
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @BACK_SPECULAR_BIT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %116 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %115, i64 1
  %117 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i64*, i64** %6, align 8
  %120 = call i32 @COPY_4V(i32 %118, i64* %119)
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @FRONT_EMISSION_BIT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %128 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %127, i64 0
  %129 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i64*, i64** %6, align 8
  %132 = call i32 @COPY_4V(i32 %130, i64* %131)
  br label %133

133:                                              ; preds = %126, %121
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @BACK_EMISSION_BIT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %140 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %139, i64 1
  %141 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i64*, i64** %6, align 8
  %144 = call i32 @COPY_4V(i32 %142, i64* %143)
  br label %145

145:                                              ; preds = %138, %133
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @FRONT_SHININESS_BIT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %145
  %151 = load i64*, i64** %6, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @CLAMP(i64 %153, float 0.000000e+00, float 1.280000e+02)
  store i64 %154, i64* %9, align 8
  %155 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %156 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %155, i64 0
  %157 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %164 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %163, i64 0
  %165 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %167 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %166, i64 0
  %168 = call i32 @gl_compute_material_shine_table(%struct.gl_material* %167)
  br label %169

169:                                              ; preds = %161, %150
  br label %170

170:                                              ; preds = %169, %145
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @BACK_SHININESS_BIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %170
  %176 = load i64*, i64** %6, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @CLAMP(i64 %178, float 0.000000e+00, float 1.280000e+02)
  store i64 %179, i64* %10, align 8
  %180 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %181 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %180, i64 1
  %182 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %175
  %187 = load i64, i64* %10, align 8
  %188 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %189 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %188, i64 1
  %190 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %189, i32 0, i32 0
  store i64 %187, i64* %190, align 8
  %191 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %192 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %191, i64 1
  %193 = call i32 @gl_compute_material_shine_table(%struct.gl_material* %192)
  br label %194

194:                                              ; preds = %186, %175
  br label %195

195:                                              ; preds = %194, %170
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @FRONT_INDEXES_BIT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %195
  %201 = load i64*, i64** %6, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %205 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %204, i64 0
  %206 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %205, i32 0, i32 1
  store i64 %203, i64* %206, align 8
  %207 = load i64*, i64** %6, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %211 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %210, i64 0
  %212 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %211, i32 0, i32 2
  store i64 %209, i64* %212, align 8
  %213 = load i64*, i64** %6, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %217 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %216, i64 0
  %218 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %217, i32 0, i32 3
  store i64 %215, i64* %218, align 8
  br label %219

219:                                              ; preds = %200, %195
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @BACK_INDEXES_BIT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %219
  %225 = load i64*, i64** %6, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %229 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %228, i64 1
  %230 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %229, i32 0, i32 1
  store i64 %227, i64* %230, align 8
  %231 = load i64*, i64** %6, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %235 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %234, i64 1
  %236 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %235, i32 0, i32 2
  store i64 %233, i64* %236, align 8
  %237 = load i64*, i64** %6, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.gl_material*, %struct.gl_material** %7, align 8
  %241 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %240, i64 1
  %242 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %241, i32 0, i32 3
  store i64 %239, i64* %242, align 8
  br label %243

243:                                              ; preds = %224, %219
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_6__*) #1

declare dso_local i32 @COPY_4V(i32, i64*) #1

declare dso_local i64 @CLAMP(i64, float, float) #1

declare dso_local i32 @gl_compute_material_shine_table(%struct.gl_material*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
