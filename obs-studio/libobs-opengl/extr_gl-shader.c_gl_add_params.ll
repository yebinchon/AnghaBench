; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i8*, i8* }
%struct.gl_shader_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"ViewProj\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_shader*, %struct.gl_shader_parser*)* @gl_add_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_add_params(%struct.gs_shader* %0, %struct.gl_shader_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_shader*, align 8
  %5 = alloca %struct.gl_shader_parser*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gs_shader* %0, %struct.gs_shader** %4, align 8
  store %struct.gl_shader_parser* %1, %struct.gl_shader_parser** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %11 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %9, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %18 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %19 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @gl_add_param(%struct.gs_shader* %17, i64 %24, i32* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %41

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %34 = call i8* @gs_shader_get_param_by_name(%struct.gs_shader* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %36 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %38 = call i8* @gs_shader_get_param_by_name(%struct.gs_shader* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %40 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @gl_add_param(%struct.gs_shader*, i64, i32*) #1

declare dso_local i8* @gs_shader_get_param_by_name(%struct.gs_shader*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
