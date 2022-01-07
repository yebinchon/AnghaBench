; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_validate_link.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_validate_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@d3d_shader = common dso_local global i32 0, align 4
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Program %u link status invalid.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shader_glsl_validate_link(%struct.wined3d_gl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @d3d_shader, align 4
  %7 = call i32 @TRACE_ON(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @d3d_shader, align 4
  %11 = call i32 @FIXME_ON(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %32

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GL_LINK_STATUS, align 4
  %17 = call i32 @glGetProgramiv(i32 %15, i32 %16, i32* %5)
  %18 = call i32 @GL_EXTCALL(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @shader_glsl_dump_program_source(%struct.wined3d_gl_info* %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %14
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @print_glsl_info_log(%struct.wined3d_gl_info* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @TRACE_ON(i32) #1

declare dso_local i32 @FIXME_ON(i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_glsl_dump_program_source(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @print_glsl_info_log(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
