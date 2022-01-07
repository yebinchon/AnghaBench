; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_function.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_func = type { i8*, %struct.cf_token*, %struct.TYPE_2__, i32 }
%struct.cf_token = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.shader_var* }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"_main_wrap\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_func*)* @gl_write_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_function(%struct.gl_shader_parser* %0, %struct.shader_func* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_func*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cf_token*, align 8
  %7 = alloca %struct.shader_var*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_func* %1, %struct.shader_func** %4, align 8
  %8 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %9 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %10 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @gl_write_type(%struct.gl_shader_parser* %8, i32 %11)
  %13 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %14 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %13, i32 0, i32 0
  %15 = call i32 @dstr_cat(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %17 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %23 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %22, i32 0, i32 0
  %24 = call i32 @dstr_cat(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %27 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %26, i32 0, i32 0
  %28 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %29 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @dstr_cat(i32* %27, i8* %30)
  br label %32

32:                                               ; preds = %25, %21
  %33 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %34 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %33, i32 0, i32 0
  %35 = call i32 @dstr_cat(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %60, %32
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %39 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %45 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.shader_var*, %struct.shader_var** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %47, i64 %48
  store %struct.shader_var* %49, %struct.shader_var** %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %54 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %53, i32 0, i32 0
  %55 = call i32 @dstr_cat(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %58 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %59 = call i32 @gl_write_var(%struct.gl_shader_parser* %57, %struct.shader_var* %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %65 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %64, i32 0, i32 0
  %66 = call i32 @dstr_cat(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %68 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %67, i32 0, i32 1
  %69 = load %struct.cf_token*, %struct.cf_token** %68, align 8
  store %struct.cf_token* %69, %struct.cf_token** %6, align 8
  %70 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %71 = call i32 @gl_write_function_contents(%struct.gl_shader_parser* %70, %struct.cf_token** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %73 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %72, i32 0, i32 0
  %74 = call i32 @dstr_cat(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gl_write_type(%struct.gl_shader_parser*, i32) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gl_write_var(%struct.gl_shader_parser*, %struct.shader_var*) #1

declare dso_local i32 @gl_write_function_contents(%struct.gl_shader_parser*, %struct.cf_token**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
