; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_structs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.shader_struct* }
%struct.shader_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*)* @gl_write_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_structs(%struct.gl_shader_parser* %0) #0 {
  %2 = alloca %struct.gl_shader_parser*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.shader_struct*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %8 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %6, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %15 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.shader_struct*, %struct.shader_struct** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %18, i64 %19
  store %struct.shader_struct* %20, %struct.shader_struct** %4, align 8
  %21 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %2, align 8
  %22 = load %struct.shader_struct*, %struct.shader_struct** %4, align 8
  %23 = call i32 @gl_write_struct(%struct.gl_shader_parser* %21, %struct.shader_struct* %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %5

27:                                               ; preds = %5
  ret void
}

declare dso_local i32 @gl_write_struct(%struct.gl_shader_parser*, %struct.shader_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
