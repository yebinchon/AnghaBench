; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_texture_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_texture_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.TYPE_8__, i32, %struct.wined3d_gl_info*, %struct.wined3d_device* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_device = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32)* }
%struct.wined3d_state = type { i32**, %struct.TYPE_10__**, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.wined3d_matrix = type { i32 }

@WINED3D_TSS_TEXCOORD_INDEX = common dso_local global i64 0, align 8
@WINED3DTSS_TCI_PASSTHRU = common dso_local global i32 0, align 4
@MAX_TEXTURES = common dso_local global i64 0, align 8
@WINED3D_TS_TEXTURE0 = common dso_local global i32 0, align 4
@WINED3D_TSS_TEXTURE_TRANSFORM_FLAGS = common dso_local global i64 0, align 8
@WINED3D_FFP_TEXCOORD0 = common dso_local global i32 0, align 4
@WINED3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Non-power-of-two texture being used with generated texture coords.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Non-power-of-two texture matrix multiply fixup.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_texture_matrix(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2, %struct.wined3d_matrix* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_matrix*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_matrix* %3, %struct.wined3d_matrix** %8, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 4
  %15 = load %struct.wined3d_device*, %struct.wined3d_device** %14, align 8
  store %struct.wined3d_device* %15, %struct.wined3d_device** %9, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 3
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %10, align 8
  %19 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @WINED3D_TSS_TEXCOORD_INDEX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -65536
  %30 = load i32, i32* @WINED3DTSS_TCI_PASSTHRU, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @WINED3D_TSS_TEXCOORD_INDEX, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @MAX_TEXTURES, align 8
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @min(i32 %43, i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %48 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %49 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @WINED3D_TS_TEXTURE0, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %57 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @WINED3D_TSS_TEXTURE_TRANSFORM_FLAGS, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %68 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %71 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WINED3D_FFP_TEXCOORD0, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %74, %75
  %77 = shl i32 1, %76
  %78 = and i32 %73, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %4
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %82 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* @WINED3D_FFP_TEXCOORD0, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  br label %96

94:                                               ; preds = %4
  %95 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  br label %96

96:                                               ; preds = %94, %80
  %97 = phi i32 [ %93, %80 ], [ %95, %94 ]
  %98 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %99 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32 (i32)*, i32 (i32)** %101, align 8
  %103 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %104 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i32 %105)
  %107 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %8, align 8
  %108 = call i32 @compute_texture_matrix(%struct.wined3d_gl_info* %47, i32* %55, i32 %65, i32 %66, i32 %69, i32 %97, i32 %106, %struct.wined3d_matrix* %107)
  %109 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %110 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = shl i32 1, %112
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %96
  %117 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %118 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = icmp ne %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %150

125:                                              ; preds = %116
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %125
  %131 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %132 = call i32 @use_ps(%struct.wined3d_state* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %130
  %135 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %8, align 8
  %137 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %8, align 8
  %138 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %139 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.wined3d_matrix*
  %148 = call i32 @multiply_matrix(%struct.wined3d_matrix* %136, %struct.wined3d_matrix* %137, %struct.wined3d_matrix* %147)
  br label %149

149:                                              ; preds = %134, %130
  br label %150

150:                                              ; preds = %149, %116, %96
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @compute_texture_matrix(%struct.wined3d_gl_info*, i32*, i32, i32, i32, i32, i32, %struct.wined3d_matrix*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @multiply_matrix(%struct.wined3d_matrix*, %struct.wined3d_matrix*, %struct.wined3d_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
