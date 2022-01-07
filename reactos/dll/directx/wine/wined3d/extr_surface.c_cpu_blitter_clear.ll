; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cpu_blitter_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cpu_blitter_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { i32 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_fb_state = type { %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** }
%struct.wined3d_rendertarget_view = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.wined3d_color = type { float, float, float, float }
%struct.wined3d_box = type { i64, i64, i64, i64, i32, i64 }

@WINED3DCLEAR_TARGET = common dso_local global i32 0, align 4
@WINED3DCLEAR_ZBUFFER = common dso_local global i32 0, align 4
@WINED3DCLEAR_STENCIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Clearing %#x on %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.wined3d_color*, float, i32)* @cpu_blitter_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_blitter_clear(%struct.wined3d_blitter* %0, %struct.wined3d_device* %1, i32 %2, %struct.wined3d_fb_state* %3, i32 %4, %struct.TYPE_6__* %5, %struct.TYPE_6__* %6, i32 %7, %struct.wined3d_color* %8, float %9, i32 %10) #0 {
  %12 = alloca %struct.wined3d_blitter*, align 8
  %13 = alloca %struct.wined3d_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_fb_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.wined3d_color*, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.wined3d_color, align 4
  %24 = alloca %struct.wined3d_rendertarget_view*, align 8
  %25 = alloca %struct.wined3d_box, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %12, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.wined3d_fb_state* %3, %struct.wined3d_fb_state** %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.wined3d_color* %8, %struct.wined3d_color** %20, align 8
  store float %9, float* %21, align 4
  store i32 %10, i32* %22, align 4
  %28 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %23, i32 0, i32 0
  %29 = load float, float* %21, align 4
  store float %29, float* %28, align 4
  %30 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %23, i32 0, i32 1
  store float 0.000000e+00, float* %30, align 4
  %31 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %23, i32 0, i32 2
  store float 0.000000e+00, float* %31, align 4
  %32 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %23, i32 0, i32 3
  store float 0.000000e+00, float* %32, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %11
  store i32 1, i32* %16, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %17, align 8
  br label %37

37:                                               ; preds = %35, %11
  store i32 0, i32* %26, align 4
  br label %38

38:                                               ; preds = %182, %37
  %39 = load i32, i32* %26, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %185

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %44 = load i32, i32* %26, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @max(i32 %48, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %56 = load i32, i32* %26, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @max(i32 %60, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %68 = load i32, i32* %26, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @min(i32 %72, i32 %75)
  %77 = ptrtoint i8* %76 to i64
  %78 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 2
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %80 = load i32, i32* %26, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @min(i32 %84, i32 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 3
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 4
  store i32 1, i32* %92, align 8
  %93 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %94, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %42
  %99 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %25, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %42
  br label %182

105:                                              ; preds = %98
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* @WINED3DCLEAR_TARGET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %105
  store i32 0, i32* %27, align 4
  br label %111

111:                                              ; preds = %129, %110
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %117 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %116, i32 0, i32 1
  %118 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %117, align 8
  %119 = load i32, i32* %27, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %118, i64 %120
  %122 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %121, align 8
  store %struct.wined3d_rendertarget_view* %122, %struct.wined3d_rendertarget_view** %24, align 8
  %123 = icmp ne %struct.wined3d_rendertarget_view* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %24, align 8
  %126 = load %struct.wined3d_color*, %struct.wined3d_color** %20, align 8
  %127 = call i32 @surface_cpu_blt_colour_fill(%struct.wined3d_rendertarget_view* %125, %struct.wined3d_box* %25, %struct.wined3d_color* %126)
  br label %128

128:                                              ; preds = %124, %115
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %27, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %27, align 4
  br label %111

132:                                              ; preds = %111
  br label %133

133:                                              ; preds = %132, %105
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %136 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %181

140:                                              ; preds = %133
  %141 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %142 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %141, i32 0, i32 0
  %143 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %142, align 8
  store %struct.wined3d_rendertarget_view* %143, %struct.wined3d_rendertarget_view** %24, align 8
  %144 = icmp ne %struct.wined3d_rendertarget_view* %143, null
  br i1 %144, label %145, label %181

145:                                              ; preds = %140
  %146 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %24, align 8
  %147 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %152, %145
  %158 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %24, align 8
  %159 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %164, %152
  %170 = load i32, i32* %19, align 4
  %171 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %24, align 8
  %172 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @debug_d3dformat(i32 %175)
  %177 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %176)
  br label %178

178:                                              ; preds = %169, %164, %157
  %179 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %24, align 8
  %180 = call i32 @surface_cpu_blt_colour_fill(%struct.wined3d_rendertarget_view* %179, %struct.wined3d_box* %25, %struct.wined3d_color* %23)
  br label %181

181:                                              ; preds = %178, %140, %133
  br label %182

182:                                              ; preds = %181, %104
  %183 = load i32, i32* %26, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %26, align 4
  br label %38

185:                                              ; preds = %38
  ret void
}

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @surface_cpu_blt_colour_fill(%struct.wined3d_rendertarget_view*, %struct.wined3d_box*, %struct.wined3d_color*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
