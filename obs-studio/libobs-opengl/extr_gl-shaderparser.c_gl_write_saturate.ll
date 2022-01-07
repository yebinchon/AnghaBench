; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_saturate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_saturate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cf_parser }
%struct.cf_parser = type { %struct.cf_token* }
%struct.cf_token = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clamp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c", 0.0, 1.0)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_shader_parser*, %struct.cf_token**)* @gl_write_saturate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_write_saturate(%struct.gl_shader_parser* %0, %struct.cf_token** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gl_shader_parser*, align 8
  %5 = alloca %struct.cf_token**, align 8
  %6 = alloca %struct.cf_parser*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %4, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %5, align 8
  %7 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %8 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.cf_parser* %9, %struct.cf_parser** %6, align 8
  %10 = load %struct.cf_token**, %struct.cf_token*** %5, align 8
  %11 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  %12 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %13 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %12, i32 0, i32 0
  store %struct.cf_token* %11, %struct.cf_token** %13, align 8
  %14 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %15 = call i32 @cf_next_token(%struct.cf_parser* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %20 = call i32 @cf_token_is(%struct.cf_parser* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %38

23:                                               ; preds = %18
  %24 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %25 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %24, i32 0, i32 0
  %26 = call i32 @dstr_cat(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %28 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %29 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %28, i32 0, i32 0
  %30 = call i32 @gl_write_function_contents(%struct.gl_shader_parser* %27, %struct.cf_token** %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %32 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %31, i32 0, i32 0
  %33 = call i32 @dstr_cat(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %35 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %34, i32 0, i32 0
  %36 = load %struct.cf_token*, %struct.cf_token** %35, align 8
  %37 = load %struct.cf_token**, %struct.cf_token*** %5, align 8
  store %struct.cf_token* %36, %struct.cf_token** %37, align 8
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %23, %22, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cf_next_token(%struct.cf_parser*) #1

declare dso_local i32 @cf_token_is(%struct.cf_parser*, i8*) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_function_contents(%struct.gl_shader_parser*, %struct.cf_token**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
