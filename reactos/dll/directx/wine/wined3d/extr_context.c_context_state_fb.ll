; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_state_fb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_state_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.wined3d_context = type { i64, i32, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_fb_state* }
%struct.wined3d_fb_state = type { %struct.TYPE_18__*, %struct.TYPE_14__** }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32, i32 }

@wined3d_settings = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i64 0, align 8
@WINED3D_SHADER_CONST_PS_Y_CORR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_state_fb(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wined3d_fb_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %14 = call i64 @find_draw_buffers_mask(%struct.wined3d_context* %12, %struct.wined3d_state* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %15, i32 0, i32 0
  %17 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %16, align 8
  store %struct.wined3d_fb_state* %17, %struct.wined3d_fb_state** %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @wined3d_settings, i32 0, i32 0), align 8
  %19 = load i64, i64* @ORM_FBO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %167

21:                                               ; preds = %3
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %28 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %29 = load i64, i64* @WINED3D_LOCATION_DRAWABLE, align 8
  %30 = load i64, i64* @WINED3D_LOCATION_DRAWABLE, align 8
  %31 = call i32 @context_apply_fbo_state(%struct.wined3d_context* %27, i32 %28, %struct.TYPE_19__* null, i32* null, i64 %29, i64 %30)
  br label %166

32:                                               ; preds = %21
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = call i32 @memset(%struct.TYPE_19__* %35, i32 0, i32 8)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %136, %32
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %39, i32 0, i32 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %38, %44
  br i1 %45, label %46, label %139

46:                                               ; preds = %37
  %47 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %49, i64 %51
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %136

56:                                               ; preds = %46
  %57 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %58 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %59, i64 %61
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %67 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %66, i32 0, i32 3
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  store i32 %65, i32* %72, align 8
  %73 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %74 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %75, i64 %77
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %83 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %82, i32 0, i32 3
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %88, align 8
  %89 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %90 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %91, i64 %93
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %99 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %98, i32 0, i32 3
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  %105 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %106 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %107, i64 %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %115 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %114, i32 0, i32 3
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %56
  %124 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %125 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %126, i64 %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %9, align 8
  br label %135

135:                                              ; preds = %123, %56
  br label %136

136:                                              ; preds = %135, %55
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %37

139:                                              ; preds = %37
  %140 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %141 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %142 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %143 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %142, i32 0, i32 3
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %146 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %145, i32 0, i32 0
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = call i32* @wined3d_rendertarget_view_get_surface(%struct.TYPE_18__* %147)
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %151 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %150, i32 0, i32 0
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = icmp ne %struct.TYPE_18__* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %139
  %155 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %8, align 8
  %156 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %155, i32 0, i32 0
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  br label %163

162:                                              ; preds = %139
  br label %163

163:                                              ; preds = %162, %154
  %164 = phi i64 [ %161, %154 ], [ 0, %162 ]
  %165 = call i32 @context_apply_fbo_state(%struct.wined3d_context* %140, i32 %141, %struct.TYPE_19__* %144, i32* %148, i64 %149, i64 %164)
  br label %166

166:                                              ; preds = %163, %26
  br label %167

167:                                              ; preds = %166, %3
  %168 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %169 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %168, i32 0, i32 2
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = icmp ne %struct.TYPE_16__* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %174 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %173, i32 0, i32 2
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  br label %180

177:                                              ; preds = %167
  %178 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %179 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %178, i32 0, i32 0
  br label %180

180:                                              ; preds = %177, %172
  %181 = phi i64* [ %176, %172 ], [ %179, %177 ]
  store i64* %181, i64** %10, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64*, i64** %10, align 8
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %182, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %188 = load i64, i64* %7, align 8
  %189 = call i32 @context_apply_draw_buffers(%struct.wined3d_context* %187, i64 %188)
  %190 = load i64, i64* %7, align 8
  %191 = load i64*, i64** %10, align 8
  store i64 %190, i64* %191, align 8
  br label %192

192:                                              ; preds = %186, %180
  %193 = load i32, i32* @WINED3D_SHADER_CONST_PS_Y_CORR, align 4
  %194 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %195 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  ret void
}

declare dso_local i64 @find_draw_buffers_mask(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_apply_fbo_state(%struct.wined3d_context*, i32, %struct.TYPE_19__*, i32*, i64, i64) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @wined3d_rendertarget_view_get_surface(%struct.TYPE_18__*) #1

declare dso_local i32 @context_apply_draw_buffers(%struct.wined3d_context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
