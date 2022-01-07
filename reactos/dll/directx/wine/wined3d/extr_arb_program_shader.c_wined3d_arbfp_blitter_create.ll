; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_wined3d_arbfp_blitter_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_wined3d_arbfp_blitter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.wined3d_blitter*, i32* }
%struct.wined3d_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_arbfp_blitter = type { %struct.wined3d_blitter, i64, i32 }

@arb_program_shader_backend = common dso_local global i32 0, align 4
@glsl_shader_backend = common dso_local global i32 0, align 4
@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate blitter.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Created blitter %p.\0A\00", align 1
@arbfp_blitter_ops = common dso_local global i32 0, align 4
@arbfp_blit_type_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_arbfp_blitter_create(%struct.wined3d_blitter** %0, %struct.wined3d_device* %1) #0 {
  %3 = alloca %struct.wined3d_blitter**, align 8
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_arbfp_blitter*, align 8
  store %struct.wined3d_blitter** %0, %struct.wined3d_blitter*** %3, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %4, align 8
  %7 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %5, align 8
  %11 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @arb_program_shader_backend
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @glsl_shader_backend
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %64

21:                                               ; preds = %15, %2
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %23 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %64

30:                                               ; preds = %21
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %64

39:                                               ; preds = %30
  %40 = call %struct.wined3d_arbfp_blitter* @heap_alloc(i32 32)
  store %struct.wined3d_arbfp_blitter* %40, %struct.wined3d_arbfp_blitter** %6, align 8
  %41 = icmp ne %struct.wined3d_arbfp_blitter* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %64

44:                                               ; preds = %39
  %45 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %6, align 8
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_arbfp_blitter* %45)
  %47 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %6, align 8
  %48 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %48, i32 0, i32 1
  store i32* @arbfp_blitter_ops, i32** %49, align 8
  %50 = load %struct.wined3d_blitter**, %struct.wined3d_blitter*** %3, align 8
  %51 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %50, align 8
  %52 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %6, align 8
  %53 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %53, i32 0, i32 0
  store %struct.wined3d_blitter* %51, %struct.wined3d_blitter** %54, align 8
  %55 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %55, i32 0, i32 2
  %57 = load i32, i32* @arbfp_blit_type_compare, align 4
  %58 = call i32 @wine_rb_init(i32* %56, i32 %57)
  %59 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %6, align 8
  %60 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %6, align 8
  %62 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %61, i32 0, i32 0
  %63 = load %struct.wined3d_blitter**, %struct.wined3d_blitter*** %3, align 8
  store %struct.wined3d_blitter* %62, %struct.wined3d_blitter** %63, align 8
  br label %64

64:                                               ; preds = %44, %42, %38, %29, %20
  ret void
}

declare dso_local %struct.wined3d_arbfp_blitter* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_arbfp_blitter*) #1

declare dso_local i32 @wine_rb_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
