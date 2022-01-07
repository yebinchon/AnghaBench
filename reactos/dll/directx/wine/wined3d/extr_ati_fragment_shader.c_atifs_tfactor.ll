; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_tfactor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_tfactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.atifs_context_private_data*, %struct.wined3d_gl_info* }
%struct.atifs_context_private_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32* }
%struct.wined3d_color = type { i32 }

@ATIFS_CONST_TFACTOR = common dso_local global i64 0, align 8
@GL_CON_0_ATI = common dso_local global i64 0, align 8
@ATIFS_CONSTANT_TFACTOR = common dso_local global i64 0, align 8
@WINED3D_RS_TEXTUREFACTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"glSetFragmentShaderConstantATI(ATIFS_CONST_TFACTOR, &color.r)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @atifs_tfactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atifs_tfactor(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.atifs_context_private_data*, align 8
  %9 = alloca %struct.wined3d_color, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 1
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %7, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %14, align 8
  store %struct.atifs_context_private_data* %15, %struct.atifs_context_private_data** %8, align 8
  %16 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %8, align 8
  %17 = getelementptr inbounds %struct.atifs_context_private_data, %struct.atifs_context_private_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %8, align 8
  %22 = getelementptr inbounds %struct.atifs_context_private_data, %struct.atifs_context_private_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @ATIFS_CONST_TFACTOR, align 8
  %27 = load i64, i64* @GL_CON_0_ATI, align 8
  %28 = sub i64 %26, %27
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ATIFS_CONSTANT_TFACTOR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20, %3
  br label %47

34:                                               ; preds = %20
  %35 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @WINED3D_RS_TEXTUREFACTOR, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %9, i32 %40)
  %42 = load i64, i64* @ATIFS_CONST_TFACTOR, align 8
  %43 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %9, i32 0, i32 0
  %44 = call i32 @glSetFragmentShaderConstantATI(i64 %42, i32* %43)
  %45 = call i32 @GL_EXTCALL(i32 %44)
  %46 = call i32 @checkGLcall(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glSetFragmentShaderConstantATI(i64, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
