; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_vars.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_func = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" outputval;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_func*)* @gl_write_main_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_main_vars(%struct.gl_shader_parser* %0, %struct.shader_func* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_func*, align 8
  %5 = alloca i64, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_func* %1, %struct.shader_func** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %45, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %9 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %6
  %14 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %15 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %14, i32 0, i32 0
  %16 = call i32 @dstr_cat(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %18 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %17, i32 0, i32 0
  %19 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %20 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @dstr_cat(i32* %18, i8* %26)
  %28 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %29 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %28, i32 0, i32 0
  %30 = call i32 @dstr_cat(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %32 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %31, i32 0, i32 0
  %33 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %34 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @dstr_cat(i32* %32, i8* %40)
  %42 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %43 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %42, i32 0, i32 0
  %44 = call i32 @dstr_cat(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %13
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %6

48:                                               ; preds = %6
  %49 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %50 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %55 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %54, i32 0, i32 0
  %56 = call i32 @dstr_cat(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %58 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %57, i32 0, i32 0
  %59 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %60 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @dstr_cat(i32* %58, i8* %61)
  %63 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %64 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %63, i32 0, i32 0
  %65 = call i32 @dstr_cat(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @dstr_cat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
