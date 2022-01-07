; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video_shaders.c_bicubic_calcweights.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video_shaders.c_bicubic_calcweights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"vec4 %s = vec4(-0.5, 0.1666, 0.3333, -0.3333) * %s + vec4(1, 0, -0.5, 0.5);\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s = %s * %s + vec4(0, 0, -0.5, 0.5);\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s = %s * %s + vec4(-0.6666, 0, 0.8333, 0.1666);\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s.xy *= vec2(1, 1) / vec2(%s.z, %s.w);\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s.xy += vec2(1.0 + %s, 1.0 - %s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_cache*, i8*, i8*)* @bicubic_calcweights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bicubic_calcweights(%struct.gl_shader_cache* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gl_shader_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 (i8*, i8*, i8*, ...) @GLSLF(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, i8*, i8*, ...) @GLSLF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %10, i8* %11, i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i8*, i8*, ...) @GLSLF(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* %15, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, i8*, i8*, ...) @GLSLF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %18, i8* %19, i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i8*, i8*, ...) @GLSLF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %22, i8* %23, i8* %24)
  ret void
}

declare dso_local i32 @GLSLF(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
