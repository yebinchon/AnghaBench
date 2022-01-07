; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_texture_code.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_texture_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cf_parser }
%struct.cf_parser = type { %struct.cf_token* }
%struct.cf_token = type { i32 }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Sample\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SampleBias\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SampleGrad\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"textureGrad\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SampleLevel\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"textureLod\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"texelFetch\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c").xy, 0)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_shader_parser*, %struct.cf_token**, %struct.shader_var*)* @gl_write_texture_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_write_texture_code(%struct.gl_shader_parser* %0, %struct.cf_token** %1, %struct.shader_var* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gl_shader_parser*, align 8
  %6 = alloca %struct.cf_token**, align 8
  %7 = alloca %struct.shader_var*, align 8
  %8 = alloca %struct.cf_parser*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %5, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %6, align 8
  store %struct.shader_var* %2, %struct.shader_var** %7, align 8
  %11 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %12 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.cf_parser* %13, %struct.cf_parser** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  %15 = load %struct.cf_token*, %struct.cf_token** %14, align 8
  %16 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %17 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %16, i32 0, i32 0
  store %struct.cf_token* %15, %struct.cf_token** %17, align 8
  %18 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %19 = call i32 @cf_next_token(%struct.cf_parser* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %24 = call i64 @cf_token_is(%struct.cf_parser* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %101

27:                                               ; preds = %22
  %28 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %29 = call i32 @cf_next_token(%struct.cf_parser* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %101

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %33 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %34 = call i64 @cf_token_is(%struct.cf_parser* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %38 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %39 = call i32 @gl_write_texture_call(%struct.gl_shader_parser* %37, %struct.shader_var* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %39, i32* %9, align 4
  br label %79

40:                                               ; preds = %32
  %41 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %42 = call i64 @cf_token_is(%struct.cf_parser* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %46 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %47 = call i32 @gl_write_texture_call(%struct.gl_shader_parser* %45, %struct.shader_var* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %47, i32* %9, align 4
  br label %78

48:                                               ; preds = %40
  %49 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %50 = call i64 @cf_token_is(%struct.cf_parser* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %54 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %55 = call i32 @gl_write_texture_call(%struct.gl_shader_parser* %53, %struct.shader_var* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %55, i32* %9, align 4
  br label %77

56:                                               ; preds = %48
  %57 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %58 = call i64 @cf_token_is(%struct.cf_parser* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %62 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %63 = call i32 @gl_write_texture_call(%struct.gl_shader_parser* %61, %struct.shader_var* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store i32 %63, i32* %9, align 4
  br label %76

64:                                               ; preds = %56
  %65 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %66 = call i64 @cf_token_is(%struct.cf_parser* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %70 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %71 = call i32 @gl_write_texture_call(%struct.gl_shader_parser* %69, %struct.shader_var* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %73 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %72, i32 0, i32 0
  %74 = call i32 @dstr_cat(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %44
  br label %79

79:                                               ; preds = %78, %36
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %101

83:                                               ; preds = %79
  %84 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %85 = call i32 @cf_next_token(%struct.cf_parser* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %101

88:                                               ; preds = %83
  %89 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %90 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %91 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %90, i32 0, i32 0
  %92 = call i32 @gl_write_function_contents(%struct.gl_shader_parser* %89, %struct.cf_token** %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %94 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %93, i32 0, i32 0
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @dstr_cat(i32* %94, i8* %95)
  %97 = load %struct.cf_parser*, %struct.cf_parser** %8, align 8
  %98 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %97, i32 0, i32 0
  %99 = load %struct.cf_token*, %struct.cf_token** %98, align 8
  %100 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  store %struct.cf_token* %99, %struct.cf_token** %100, align 8
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %88, %87, %82, %31, %26, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @cf_next_token(%struct.cf_parser*) #1

declare dso_local i64 @cf_token_is(%struct.cf_parser*, i8*) #1

declare dso_local i32 @gl_write_texture_call(%struct.gl_shader_parser*, %struct.shader_var*, i8*, i32) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_function_contents(%struct.gl_shader_parser*, %struct.cf_token**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
