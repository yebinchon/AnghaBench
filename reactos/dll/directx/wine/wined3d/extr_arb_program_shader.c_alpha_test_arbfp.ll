; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_alpha_test_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_alpha_test_arbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, float)*, i32 (i32)*, i32 (i32)* }
%struct.wined3d_state = type { i64* }

@.str = private unnamed_addr constant [37 x i8] c"context %p, state %p, state_id %#x.\0A\00", align 1
@WINED3D_RS_ALPHATESTENABLE = common dso_local global i64 0, align 8
@GL_ALPHA_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"glEnable GL_ALPHA_TEST\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"glDisable GL_ALPHA_TEST\00", align 1
@WINED3D_RS_ALPHAREF = common dso_local global i64 0, align 8
@WINED3D_RS_ALPHAFUNC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"glAlphaFunc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @alpha_test_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_test_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 0
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %7, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %13, %struct.wined3d_state* %14, i32 %15)
  %17 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @WINED3D_RS_ALPHATESTENABLE, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %26 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load i32, i32* @GL_ALPHA_TEST, align 4
  %31 = call i32 %29(i32 %30)
  %32 = call i32 @checkGLcall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %42

33:                                               ; preds = %3
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %35 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* @GL_ALPHA_TEST, align 4
  %40 = call i32 %38(i32 %39)
  %41 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %70

42:                                               ; preds = %24
  %43 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %44 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @WINED3D_RS_ALPHAREF, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to float
  %50 = fdiv float %49, 2.550000e+02
  store float %50, float* %9, align 4
  %51 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @WINED3D_RS_ALPHAFUNC, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @wined3d_gl_compare_func(i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %42
  %61 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %62 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (i32, float)*, i32 (i32, float)** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load float, float* %9, align 4
  %68 = call i32 %65(i32 %66, float %67)
  %69 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %33, %60, %42
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @wined3d_gl_compare_func(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
