; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_shader_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_shader_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32, i32* }
%struct.gl_shader_parser = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gs_shader* (i32*, i32, i8*, i8*, i8**)* @shader_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gs_shader* @shader_create(i32* %0, i32 %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.gs_shader*, align 8
  %12 = alloca %struct.gl_shader_parser, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %14 = call %struct.gs_shader* @bzalloc(i32 16)
  store %struct.gs_shader* %14, %struct.gs_shader** %11, align 8
  store i32 1, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.gs_shader*, %struct.gs_shader** %11, align 8
  %17 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.gs_shader*, %struct.gs_shader** %11, align 8
  %20 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @gl_shader_parser_init(%struct.gl_shader_parser* %12, i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @gl_shader_parse(%struct.gl_shader_parser* %12, i8* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %33

28:                                               ; preds = %5
  %29 = load %struct.gs_shader*, %struct.gs_shader** %11, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8**, i8*** %10, align 8
  %32 = call i32 @gl_shader_init(%struct.gs_shader* %29, %struct.gl_shader_parser* %12, i8* %30, i8** %31)
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.gs_shader*, %struct.gs_shader** %11, align 8
  %38 = call i32 @gs_shader_destroy(%struct.gs_shader* %37)
  store %struct.gs_shader* null, %struct.gs_shader** %11, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = call i32 @gl_shader_parser_free(%struct.gl_shader_parser* %12)
  %41 = load %struct.gs_shader*, %struct.gs_shader** %11, align 8
  ret %struct.gs_shader* %41
}

declare dso_local %struct.gs_shader* @bzalloc(i32) #1

declare dso_local i32 @gl_shader_parser_init(%struct.gl_shader_parser*, i32) #1

declare dso_local i32 @gl_shader_parse(%struct.gl_shader_parser*, i8*, i8*) #1

declare dso_local i32 @gl_shader_init(%struct.gs_shader*, %struct.gl_shader_parser*, i8*, i8**) #1

declare dso_local i32 @gs_shader_destroy(%struct.gs_shader*) #1

declare dso_local i32 @gl_shader_parser_free(%struct.gl_shader_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
