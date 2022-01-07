; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video_shaders.c_pass_sample_separated_get_weights.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video_shaders.c_pass_sample_separated_get_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32 }
%struct.scaler = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"lut\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"float ypos = LUT_POS(fcoord, %d.0);\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"float weights[%d];\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"c = texture(lut, vec2(%f, ypos));\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"weights[%d] = c[%d];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_cache*, %struct.scaler*)* @pass_sample_separated_get_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_sample_separated_get_weights(%struct.gl_shader_cache* %0, %struct.scaler* %1) #0 {
  %3 = alloca %struct.gl_shader_cache*, align 8
  %4 = alloca %struct.scaler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %3, align 8
  store %struct.scaler* %1, %struct.scaler** %4, align 8
  %8 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %9 = load %struct.scaler*, %struct.scaler** %4, align 8
  %10 = getelementptr inbounds %struct.scaler, %struct.scaler* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gl_sc_uniform_texture(%struct.gl_shader_cache* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.scaler*, %struct.scaler** %4, align 8
  %14 = getelementptr inbounds %struct.scaler, %struct.scaler* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, i32, ...) @GLSLF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.scaler*, %struct.scaler** %4, align 8
  %18 = getelementptr inbounds %struct.scaler, %struct.scaler* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 3
  %24 = sdiv i32 %23, 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, i32, ...) @GLSLF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %50, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 4
  %38 = sitofp i32 %37 to double
  %39 = fadd double %38, 5.000000e-01
  %40 = load i32, i32* %6, align 4
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %39, %41
  %43 = fptosi double %42 to i32
  %44 = call i32 (i8*, i32, ...) @GLSLF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %35, %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = srem i32 %47, 4
  %49 = call i32 (i8*, i32, ...) @GLSLF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %27

53:                                               ; preds = %27
  ret void
}

declare dso_local i32 @gl_sc_uniform_texture(%struct.gl_shader_cache*, i8*, i32) #1

declare dso_local i32 @GLSLF(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
