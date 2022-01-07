; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.h_gl_shader_parser_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.h_gl_shader_parser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32, i8*, i8*, i32, i32, i32, i32 }

@GS_SHADER_VERTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"_input_attrib\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"_vertex_shader_attrib\00", align 1
@GS_SHADER_PIXEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"_pixel_shader_attrib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, i32)* @gl_shader_parser_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_shader_parser_init(%struct.gl_shader_parser* %0, i32 %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca i32, align 4
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %7 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GS_SHADER_VERTEX, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %13 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %15 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GS_SHADER_PIXEL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %22 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %24 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %23, i32 0, i32 2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %25, %11
  %27 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %28 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %27, i32 0, i32 6
  %29 = call i32 @shader_parser_init(i32* %28)
  %30 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %31 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %30, i32 0, i32 5
  %32 = call i32 @dstr_init(i32* %31)
  %33 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %34 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @da_init(i32 %35)
  %37 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %38 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @da_init(i32 %39)
  ret void
}

declare dso_local i32 @shader_parser_init(i32*) #1

declare dso_local i32 @dstr_init(i32*) #1

declare dso_local i32 @da_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
