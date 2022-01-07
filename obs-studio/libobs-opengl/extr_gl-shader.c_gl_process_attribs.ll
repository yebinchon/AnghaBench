; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_process_attribs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_process_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32 }
%struct.gl_shader_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gl_parser_attrib* }
%struct.gl_parser_attrib = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_shader*, %struct.gl_shader_parser*)* @gl_process_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_process_attribs(%struct.gs_shader* %0, %struct.gl_shader_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_shader*, align 8
  %5 = alloca %struct.gl_shader_parser*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gl_parser_attrib*, align 8
  store %struct.gs_shader* %0, %struct.gs_shader** %4, align 8
  store %struct.gl_shader_parser* %1, %struct.gl_shader_parser** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %11 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %17 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %19, i64 %20
  store %struct.gl_parser_attrib* %21, %struct.gl_parser_attrib** %7, align 8
  %22 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %23 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %7, align 8
  %24 = call i32 @gl_process_attrib(%struct.gs_shader* %22, %struct.gl_parser_attrib* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %32

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %8

31:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @gl_process_attrib(%struct.gs_shader*, %struct.gl_parser_attrib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
