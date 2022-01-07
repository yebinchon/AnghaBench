; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_shader_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_shader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i64, i32 }
%struct.gl_shader_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"glCreateShader\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"glShaderSource\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"glCompileShader\00", align 1
@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"glGetShaderiv\00", align 1
@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Error compiling shader:\0A%s\0A\00", align 1
@GS_SHADER_VERTEX = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_shader*, %struct.gl_shader_parser*, i8*, i8**)* @gl_shader_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_shader_init(%struct.gs_shader* %0, %struct.gl_shader_parser* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_shader*, align 8
  %7 = alloca %struct.gl_shader_parser*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.gs_shader* %0, %struct.gs_shader** %6, align 8
  store %struct.gl_shader_parser* %1, %struct.gl_shader_parser** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %17 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @convert_shader_type(i64 %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @glCreateShader(i32 %20)
  %22 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %23 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = call i32 @gl_success(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %28 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %4
  store i32 0, i32* %5, align 4
  br label %121

32:                                               ; preds = %26
  %33 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %34 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %7, align 8
  %37 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast i8** %38 to i32**
  %40 = call i32 @glShaderSource(i32 %35, i32 1, i32** %39, i32 0)
  %41 = call i32 @gl_success(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %121

44:                                               ; preds = %32
  %45 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %46 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @glCompileShader(i32 %47)
  %49 = call i32 @gl_success(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %121

52:                                               ; preds = %44
  %53 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %54 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %57 = call i32 @glGetShaderiv(i32 %55, i32 %56, i32* %11)
  %58 = call i32 @gl_success(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %121

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  %65 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %66 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %69 = call i32 @glGetShaderiv(i32 %67, i32 %68, i32* %13)
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 1, %71
  %73 = trunc i64 %72 to i32
  %74 = call i8* @malloc(i32 %73)
  store i8* %74, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %75 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %76 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @glGetShaderInfoLog(i32 %77, i32 %78, i32* %15, i8* %79)
  %81 = load i32, i32* @LOG_ERROR, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 (i32, i8*, ...) @blog(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @free(i8* %84)
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %64, %61
  %87 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %88 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = call i32 @gl_get_shader_info(i32 %89, i8* %90, i8** %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %97 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %7, align 8
  %98 = call i32 @gl_add_params(%struct.gs_shader* %96, %struct.gl_shader_parser* %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %95, %86
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %104 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GS_SHADER_VERTEX, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %110 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %7, align 8
  %111 = call i32 @gl_process_attribs(%struct.gs_shader* %109, %struct.gl_shader_parser* %110)
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %108, %102, %99
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %117 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %7, align 8
  %118 = call i32 @gl_add_samplers(%struct.gs_shader* %116, %struct.gl_shader_parser* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %60, %51, %43, %31
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @convert_shader_type(i64) #1

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @glShaderSource(i32, i32, i32**, i32) #1

declare dso_local i32 @glCompileShader(i32) #1

declare dso_local i32 @glGetShaderiv(i32, i32, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @glGetShaderInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gl_get_shader_info(i32, i8*, i8**) #1

declare dso_local i32 @gl_add_params(%struct.gs_shader*, %struct.gl_shader_parser*) #1

declare dso_local i32 @gl_process_attribs(%struct.gs_shader*, %struct.gl_shader_parser*) #1

declare dso_local i32 @gl_add_samplers(%struct.gs_shader*, %struct.gl_shader_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
