; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_process_attrib.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_process_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32 }
%struct.gl_parser_attrib = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32* }
%struct.shader_attrib = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_shader*, %struct.gl_parser_attrib*)* @gl_process_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_process_attrib(%struct.gs_shader* %0, %struct.gl_parser_attrib* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_shader*, align 8
  %5 = alloca %struct.gl_parser_attrib*, align 8
  %6 = alloca %struct.shader_attrib, align 8
  store %struct.gs_shader* %0, %struct.gs_shader** %4, align 8
  store %struct.gl_parser_attrib* %1, %struct.gl_parser_attrib** %5, align 8
  %7 = bitcast %struct.shader_attrib* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %5, align 8
  %9 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %5, align 8
  %15 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.shader_attrib, %struct.shader_attrib* %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.shader_attrib, %struct.shader_attrib* %6, i32 0, i32 1
  %19 = call i32 @get_attrib_type(i32 %16, i32* %17, i32* %18)
  %20 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %5, align 8
  %21 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds %struct.shader_attrib, %struct.shader_attrib* %6, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %5, align 8
  %26 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %5, align 8
  %29 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.gl_parser_attrib*, %struct.gl_parser_attrib** %5, align 8
  %32 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %35 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @da_push_back(i32 %36, %struct.shader_attrib* %6)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %13, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_attrib_type(i32, i32*, i32*) #2

declare dso_local i32 @da_push_back(i32, %struct.shader_attrib*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
