; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_assign_program_attribs.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_assign_program_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { %struct.gs_shader* }
%struct.gs_shader = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.shader_attrib* }
%struct.shader_attrib = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_program*)* @assign_program_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_program_attribs(%struct.gs_program* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_program*, align 8
  %4 = alloca %struct.gs_shader*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shader_attrib*, align 8
  store %struct.gs_program* %0, %struct.gs_program** %3, align 8
  %7 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %8 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %7, i32 0, i32 0
  %9 = load %struct.gs_shader*, %struct.gs_shader** %8, align 8
  store %struct.gs_shader* %9, %struct.gs_shader** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %13 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %19 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.shader_attrib*, %struct.shader_attrib** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.shader_attrib, %struct.shader_attrib* %21, i64 %22
  store %struct.shader_attrib* %23, %struct.shader_attrib** %6, align 8
  %24 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %25 = load %struct.shader_attrib*, %struct.shader_attrib** %6, align 8
  %26 = call i32 @assign_program_attrib(%struct.gs_program* %24, %struct.shader_attrib* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %10

33:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @assign_program_attrib(%struct.gs_program*, %struct.shader_attrib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
