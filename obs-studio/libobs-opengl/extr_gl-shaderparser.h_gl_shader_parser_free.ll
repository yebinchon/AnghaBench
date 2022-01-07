; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.h_gl_shader_parser_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.h_gl_shader_parser_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*)* @gl_shader_parser_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_shader_parser_free(%struct.gl_shader_parser* %0) #0 {
  %2 = alloca %struct.gl_shader_parser*, align 8
  %3 = alloca i64, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %7 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %13 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @gl_parser_attrib_free(i64 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %24 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %23, i32 0, i32 3
  %25 = bitcast %struct.TYPE_2__* %24 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @da_free(i64 %27, i64 %29)
  %31 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %32 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %31, i32 0, i32 2
  %33 = bitcast %struct.TYPE_2__* %32 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @da_free(i64 %35, i64 %37)
  %39 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %40 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %39, i32 0, i32 1
  %41 = call i32 @dstr_free(i32* %40)
  %42 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %43 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %42, i32 0, i32 0
  %44 = call i32 @shader_parser_free(i32* %43)
  ret void
}

declare dso_local i32 @gl_parser_attrib_free(i64) #1

declare dso_local i32 @da_free(i64, i64) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @shader_parser_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
