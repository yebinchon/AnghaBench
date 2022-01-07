; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_setup_target.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_setup_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.wined3d_context = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i64, i64 }

@WINED3D_RS_ALPHABLENDENABLE = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_SRGB_WRITE = common dso_local global i32 0, align 4
@WINED3D_RS_SRGBWRITEENABLE = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_texture*, i32)* @context_setup_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_setup_target(%struct.wined3d_context* %0, %struct.wined3d_texture* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_format*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %16, i32 0, i32 1
  %18 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_8__* %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %23 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %24 = icmp eq %struct.wined3d_texture* %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %185

37:                                               ; preds = %32, %25, %3
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.wined3d_texture*, %struct.wined3d_texture** %40, align 8
  %42 = icmp ne %struct.wined3d_texture* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %45 = load i32, i32* @WINED3D_RS_ALPHABLENDENABLE, align 4
  %46 = call i32 @STATE_RENDER(i32 %45)
  %47 = call i32 @context_invalidate_state(%struct.wined3d_context* %44, i32 %46)
  br label %173

48:                                               ; preds = %37
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %51, align 8
  %53 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.wined3d_format*, %struct.wined3d_format** %54, align 8
  store %struct.wined3d_format* %55, %struct.wined3d_format** %9, align 8
  %56 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %57 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.wined3d_format*, %struct.wined3d_format** %58, align 8
  store %struct.wined3d_format* %59, %struct.wined3d_format** %10, align 8
  %60 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %61 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %64 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %48
  %68 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %69 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %74 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72, %67
  %78 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  %79 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %84 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %89 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %87, %82, %72
  %96 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %97 = load i32, i32* @WINED3D_RS_ALPHABLENDENABLE, align 4
  %98 = call i32 @STATE_RENDER(i32 %97)
  %99 = call i32 @context_invalidate_state(%struct.wined3d_context* %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %87
  %101 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %102 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.wined3d_texture*, %struct.wined3d_texture** %103, align 8
  %105 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %111 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %109, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %100
  %118 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %119 = load i32, i32* @WINED3D_RS_SRGBWRITEENABLE, align 4
  %120 = call i32 @STATE_RENDER(i32 %119)
  %121 = call i32 @context_invalidate_state(%struct.wined3d_context* %118, i32 %120)
  br label %122

122:                                              ; preds = %117, %100
  br label %123

123:                                              ; preds = %122, %48
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wined3d_settings, i32 0, i32 0), align 8
  %125 = load i64, i64* @ORM_FBO, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %172

127:                                              ; preds = %123
  %128 = load i64, i64* %7, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  %131 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %132 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load %struct.wined3d_texture*, %struct.wined3d_texture** %133, align 8
  %135 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %136 = icmp ne %struct.wined3d_texture* %134, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %139 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %172

144:                                              ; preds = %137, %130
  %145 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %146 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %11, align 4
  %149 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %150 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load %struct.wined3d_texture*, %struct.wined3d_texture** %151, align 8
  store %struct.wined3d_texture* %152, %struct.wined3d_texture** %12, align 8
  %153 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %154 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %144
  %159 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %160 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %161 = load i32, i32* @TRUE, align 4
  %162 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %159, %struct.wined3d_context* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %144
  %164 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %165 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %166 = load i32, i32* @FALSE, align 4
  %167 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %164, %struct.wined3d_context* %165, i32 %166)
  %168 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %171 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %163, %137, %127, %123
  br label %173

173:                                              ; preds = %172, %43
  %174 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %175 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %176 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store %struct.wined3d_texture* %174, %struct.wined3d_texture** %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %180 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @context_set_render_offscreen(%struct.wined3d_context* %182, i64 %183)
  br label %185

185:                                              ; preds = %173, %36
  ret void
}

declare dso_local i64 @wined3d_resource_is_offscreen(%struct.TYPE_8__*) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_RENDER(i32) #1

declare dso_local i32 @wined3d_texture_load(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @context_set_render_offscreen(%struct.wined3d_context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
