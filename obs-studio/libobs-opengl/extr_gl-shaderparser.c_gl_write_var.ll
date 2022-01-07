; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_var.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_var = type { i64, i8*, i32 }

@SHADER_VAR_UNIFORM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"uniform \00", align 1
@SHADER_VAR_CONST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@SHADER_VAR_INOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"inout \00", align 1
@SHADER_VAR_OUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"out \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_var*)* @gl_write_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_var(%struct.gl_shader_parser* %0, %struct.shader_var* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_var*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_var* %1, %struct.shader_var** %4, align 8
  %5 = load %struct.shader_var*, %struct.shader_var** %4, align 8
  %6 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SHADER_VAR_UNIFORM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %12 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %11, i32 0, i32 0
  %13 = call i32 @dstr_cat(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.shader_var*, %struct.shader_var** %4, align 8
  %16 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHADER_VAR_CONST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %22 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %21, i32 0, i32 0
  %23 = call i32 @dstr_cat(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %46

24:                                               ; preds = %14
  %25 = load %struct.shader_var*, %struct.shader_var** %4, align 8
  %26 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHADER_VAR_INOUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %32 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %31, i32 0, i32 0
  %33 = call i32 @dstr_cat(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.shader_var*, %struct.shader_var** %4, align 8
  %36 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SHADER_VAR_OUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %42 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %41, i32 0, i32 0
  %43 = call i32 @dstr_cat(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %20
  br label %47

47:                                               ; preds = %46, %10
  %48 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %49 = load %struct.shader_var*, %struct.shader_var** %4, align 8
  %50 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gl_write_type(%struct.gl_shader_parser* %48, i32 %51)
  %53 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %54 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %53, i32 0, i32 0
  %55 = call i32 @dstr_cat(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %57 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %56, i32 0, i32 0
  %58 = load %struct.shader_var*, %struct.shader_var** %4, align 8
  %59 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @dstr_cat(i32* %57, i8* %60)
  ret void
}

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_type(%struct.gl_shader_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
