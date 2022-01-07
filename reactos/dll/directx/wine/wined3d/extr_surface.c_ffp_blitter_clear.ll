; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blitter_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blitter_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.wined3d_blitter = type { %struct.TYPE_7__*, %struct.wined3d_blitter* }
%struct.TYPE_7__ = type { i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_fb_state = type { %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** }
%struct.wined3d_rendertarget_view = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_color = type { i32 }

@WINED3DCLEAR_TARGET = common dso_local global i32 0, align 4
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_FBO_ATTACHABLE = common dso_local global i32 0, align 4
@WINED3DCLEAR_ZBUFFER = common dso_local global i32 0, align 4
@WINED3DCLEAR_STENCIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)* @ffp_blitter_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffp_blitter_clear(%struct.wined3d_blitter* %0, %struct.wined3d_device* %1, i32 %2, %struct.wined3d_fb_state* %3, i32 %4, i32* %5, i32* %6, i32 %7, %struct.wined3d_color* %8, float %9, i32 %10) #0 {
  %12 = alloca %struct.wined3d_blitter*, align 8
  %13 = alloca %struct.wined3d_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_fb_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.wined3d_color*, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.wined3d_rendertarget_view*, align 8
  %24 = alloca %struct.wined3d_blitter*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %12, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.wined3d_fb_state* %3, %struct.wined3d_fb_state** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.wined3d_color* %8, %struct.wined3d_color** %20, align 8
  store float %9, float* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %25, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* @WINED3DCLEAR_TARGET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %11
  store i32 0, i32* %26, align 4
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i32, i32* %26, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %38 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %37, i32 0, i32 1
  %39 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %38, align 8
  %40 = load i32, i32* %26, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %39, i64 %41
  %43 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %42, align 8
  store %struct.wined3d_rendertarget_view* %43, %struct.wined3d_rendertarget_view** %23, align 8
  %44 = icmp ne %struct.wined3d_rendertarget_view* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %79

46:                                               ; preds = %36
  %47 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %23, align 8
  %48 = call i64 @ffp_blitter_use_cpu_clear(%struct.wined3d_rendertarget_view* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %23, align 8
  %52 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %50
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wined3d_settings, i32 0, i32 0), align 8
  %61 = load i64, i64* @ORM_FBO, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %23, align 8
  %65 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %63, %59, %46
  %71 = load i32, i32* @WINED3DCLEAR_TARGET, align 4
  %72 = load i32, i32* %25, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* @WINED3DCLEAR_TARGET, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %19, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %19, align 4
  br label %82

78:                                               ; preds = %63, %50
  br label %79

79:                                               ; preds = %78, %45
  %80 = load i32, i32* %26, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %26, align 4
  br label %32

82:                                               ; preds = %70, %32
  br label %83

83:                                               ; preds = %82, %11
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %86 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %137

90:                                               ; preds = %83
  %91 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %92 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %91, i32 0, i32 0
  %93 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %92, align 8
  store %struct.wined3d_rendertarget_view* %93, %struct.wined3d_rendertarget_view** %23, align 8
  %94 = icmp ne %struct.wined3d_rendertarget_view* %93, null
  br i1 %94, label %95, label %137

95:                                               ; preds = %90
  %96 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %23, align 8
  %97 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %102, %95
  %108 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %23, align 8
  %109 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %114, %107
  %120 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %23, align 8
  %121 = call i64 @ffp_blitter_use_cpu_clear(%struct.wined3d_rendertarget_view* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %119
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %126 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = load i32, i32* %25, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* @WINED3DCLEAR_ZBUFFER, align 4
  %132 = load i32, i32* @WINED3DCLEAR_STENCIL, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %19, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %123, %119, %114, %102, %90, %83
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load i32*, i32** %17, align 8
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.wined3d_color*, %struct.wined3d_color** %20, align 8
  %149 = load float, float* %21, align 4
  %150 = load i32, i32* %22, align 4
  %151 = call i32 @device_clear_render_targets(%struct.wined3d_device* %141, i32 %142, %struct.wined3d_fb_state* %143, i32 %144, i32* %145, i32* %146, i32 %147, %struct.wined3d_color* %148, float %149, i32 %150)
  br label %152

152:                                              ; preds = %140, %137
  %153 = load i32, i32* %25, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %152
  %156 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %12, align 8
  %157 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %156, i32 0, i32 1
  %158 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %157, align 8
  store %struct.wined3d_blitter* %158, %struct.wined3d_blitter** %24, align 8
  %159 = icmp ne %struct.wined3d_blitter* %158, null
  br i1 %159, label %160, label %178

160:                                              ; preds = %155
  %161 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %24, align 8
  %162 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)*, i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)** %164, align 8
  %166 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %24, align 8
  %167 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load i32*, i32** %17, align 8
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %25, align 4
  %174 = load %struct.wined3d_color*, %struct.wined3d_color** %20, align 8
  %175 = load float, float* %21, align 4
  %176 = load i32, i32* %22, align 4
  %177 = call i32 %165(%struct.wined3d_blitter* %166, %struct.wined3d_device* %167, i32 %168, %struct.wined3d_fb_state* %169, i32 %170, i32* %171, i32* %172, i32 %173, %struct.wined3d_color* %174, float %175, i32 %176)
  br label %178

178:                                              ; preds = %160, %155, %152
  ret void
}

declare dso_local i64 @ffp_blitter_use_cpu_clear(%struct.wined3d_rendertarget_view*) #1

declare dso_local i32 @device_clear_render_targets(%struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
