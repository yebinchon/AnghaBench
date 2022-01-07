; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_assign_program_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_assign_program_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { i32, i32 }
%struct.gs_shader_param = type { i32 }
%struct.program_param = type { i32, %struct.gs_shader_param* }

@.str = private unnamed_addr constant [21 x i8] c"glGetUniformLocation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_program*, %struct.gs_shader_param*)* @assign_program_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_program_param(%struct.gs_program* %0, %struct.gs_shader_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_program*, align 8
  %5 = alloca %struct.gs_shader_param*, align 8
  %6 = alloca %struct.program_param, align 8
  store %struct.gs_program* %0, %struct.gs_program** %4, align 8
  store %struct.gs_shader_param* %1, %struct.gs_shader_param** %5, align 8
  %7 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %8 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gs_shader_param*, %struct.gs_shader_param** %5, align 8
  %11 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @glGetUniformLocation(i32 %9, i32 %12)
  %14 = getelementptr inbounds %struct.program_param, %struct.program_param* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = call i32 @gl_success(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.program_param, %struct.program_param* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %30

23:                                               ; preds = %18
  %24 = load %struct.gs_shader_param*, %struct.gs_shader_param** %5, align 8
  %25 = getelementptr inbounds %struct.program_param, %struct.program_param* %6, i32 0, i32 1
  store %struct.gs_shader_param* %24, %struct.gs_shader_param** %25, align 8
  %26 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %27 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @da_push_back(i32 %28, %struct.program_param* %6)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %22, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @glGetUniformLocation(i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @da_push_back(i32, %struct.program_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
