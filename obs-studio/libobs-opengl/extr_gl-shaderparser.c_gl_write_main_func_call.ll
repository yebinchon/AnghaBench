; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_func_call.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_func_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_func = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [26 x i8] c"\0A\09outputval = _main_wrap(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_func*)* @gl_write_main_func_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_main_func_call(%struct.gl_shader_parser* %0, %struct.shader_func* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_func*, align 8
  %5 = alloca i64, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_func* %1, %struct.shader_func** %4, align 8
  %6 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %7 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %6, i32 0, i32 0
  %8 = call i32 @dstr_cat(i32* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %12 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %9
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %21 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %20, i32 0, i32 0
  %22 = call i32 @dstr_cat(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %25 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %24, i32 0, i32 0
  %26 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %27 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @dstr_cat(i32* %25, i8* %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %9

38:                                               ; preds = %9
  %39 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %40 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %39, i32 0, i32 0
  %41 = call i32 @dstr_cat(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dstr_cat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
