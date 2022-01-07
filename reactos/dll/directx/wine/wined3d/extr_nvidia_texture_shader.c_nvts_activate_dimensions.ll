; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvts_activate_dimensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvts_activate_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { i64**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32, i32)* }

@FALSE = common dso_local global i32 0, align 4
@WINED3D_TSS_COLOR_OP = common dso_local global i64 0, align 8
@WINED3D_TOP_BUMPENVMAP_LUMINANCE = common dso_local global i64 0, align 8
@WINED3D_TOP_BUMPENVMAP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GL_TEXTURE_SHADER_NV = common dso_local global i32 0, align 4
@GL_SHADER_OPERATION_NV = common dso_local global i32 0, align 4
@GL_OFFSET_TEXTURE_2D_NV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, ...)\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_TEXTURE_3D)\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_TEXTURE_CUBE_MAP_ARB)\00", align 1
@GL_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_NONE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_state*, i32, %struct.wined3d_context*)* @nvts_activate_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvts_activate_dimensions(%struct.wined3d_state* %0, i32 %1, %struct.wined3d_context* %2) #0 {
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_state* %0, %struct.wined3d_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %6, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 1
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %3
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %16, i32 0, i32 0
  %18 = load i64**, i64*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64*, i64** %18, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WINED3D_TOP_BUMPENVMAP_LUMINANCE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %15
  %30 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %31 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %30, i32 0, i32 0
  %32 = load i64**, i64*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %32, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WINED3D_TOP_BUMPENVMAP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %29, %15
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 1, %45
  %47 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %48 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %59

51:                                               ; preds = %29, %3
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %51, %43
  %60 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %133

68:                                               ; preds = %59
  %69 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %70 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %132 [
    i32 131, label %78
    i32 128, label %95
    i32 130, label %112
    i32 129, label %122
  ]

78:                                               ; preds = %68
  %79 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %80 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %82, align 8
  %84 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %85 = load i32, i32* @GL_SHADER_OPERATION_NV, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @GL_OFFSET_TEXTURE_2D_NV, align 4
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 131, %90 ]
  %93 = call i32 %83(i32 %84, i32 %85, i32 %92)
  %94 = call i32 @checkGLcall(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %132

95:                                               ; preds = %68
  %96 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %97 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %99, align 8
  %101 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %102 = load i32, i32* @GL_SHADER_OPERATION_NV, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @GL_OFFSET_TEXTURE_2D_NV, align 4
  br label %108

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 128, %107 ]
  %110 = call i32 %100(i32 %101, i32 %102, i32 %109)
  %111 = call i32 @checkGLcall(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %132

112:                                              ; preds = %68
  %113 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %114 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %116, align 8
  %118 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %119 = load i32, i32* @GL_SHADER_OPERATION_NV, align 4
  %120 = call i32 %117(i32 %118, i32 %119, i32 130)
  %121 = call i32 @checkGLcall(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %132

122:                                              ; preds = %68
  %123 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %124 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %126, align 8
  %128 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %129 = load i32, i32* @GL_SHADER_OPERATION_NV, align 4
  %130 = call i32 %127(i32 %128, i32 %129, i32 129)
  %131 = call i32 @checkGLcall(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %68, %122, %112, %108, %91
  br label %144

133:                                              ; preds = %59
  %134 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %135 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %137, align 8
  %139 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %140 = load i32, i32* @GL_SHADER_OPERATION_NV, align 4
  %141 = load i32, i32* @GL_NONE, align 4
  %142 = call i32 %138(i32 %139, i32 %140, i32 %141)
  %143 = call i32 @checkGLcall(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %133, %132
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
