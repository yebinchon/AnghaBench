; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_device_vertexshader_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_device_vertexshader_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32 }

@GS_SHADER_VERTEX = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"device_vertexshader_create (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_shader* @device_vertexshader_create(i32* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.gs_shader*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @GS_SHADER_VERTEX, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = call %struct.gs_shader* @shader_create(i32* %10, i32 %11, i8* %12, i8* %13, i8** %14)
  store %struct.gs_shader* %15, %struct.gs_shader** %9, align 8
  %16 = load %struct.gs_shader*, %struct.gs_shader** %9, align 8
  %17 = icmp ne %struct.gs_shader* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.gs_shader*, %struct.gs_shader** %9, align 8
  ret %struct.gs_shader* %22
}

declare dso_local %struct.gs_shader* @shader_create(i32*, i32, i8*, i8*, i8**) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
