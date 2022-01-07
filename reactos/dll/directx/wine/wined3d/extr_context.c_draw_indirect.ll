; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_draw_indirect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_draw_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_state = type { i32, i64 }
%struct.wined3d_indirect_draw_parameters = type { i64, %struct.wined3d_buffer* }
%struct.wined3d_buffer = type { i32 }

@ARB_DRAW_INDIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"OpenGL implementation does not support indirect draws.\0A\00", align 1
@GL_DRAW_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Ignoring index offset %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"draw indirect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.wined3d_indirect_draw_parameters*, i32)* @draw_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_indirect(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.wined3d_indirect_draw_parameters* %2, i32 %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.wined3d_indirect_draw_parameters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_buffer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store %struct.wined3d_indirect_draw_parameters* %2, %struct.wined3d_indirect_draw_parameters** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %9, align 8
  %16 = load %struct.wined3d_indirect_draw_parameters*, %struct.wined3d_indirect_draw_parameters** %7, align 8
  %17 = getelementptr inbounds %struct.wined3d_indirect_draw_parameters, %struct.wined3d_indirect_draw_parameters* %16, i32 0, i32 1
  %18 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %17, align 8
  store %struct.wined3d_buffer* %18, %struct.wined3d_buffer** %10, align 8
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %20 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @ARB_DRAW_INDIRECT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %79

28:                                               ; preds = %4
  %29 = load i32, i32* @GL_DRAW_INDIRECT_BUFFER, align 4
  %30 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %10, align 8
  %31 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @glBindBuffer(i32 %29, i32 %32)
  %34 = call i32 @GL_EXTCALL(i32 %33)
  %35 = load %struct.wined3d_indirect_draw_parameters*, %struct.wined3d_indirect_draw_parameters** %7, align 8
  %36 = getelementptr inbounds %struct.wined3d_indirect_draw_parameters, %struct.wined3d_indirect_draw_parameters* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @GL_UNSIGNED_SHORT, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @GL_UNSIGNED_INT, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %12, align 4
  %50 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %61 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @glDrawElementsIndirect(i32 %62, i32 %63, i8* %64)
  %66 = call i32 @GL_EXTCALL(i32 %65)
  br label %74

67:                                               ; preds = %28
  %68 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %69 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @glDrawArraysIndirect(i32 %70, i8* %71)
  %73 = call i32 @GL_EXTCALL(i32 %72)
  br label %74

74:                                               ; preds = %67, %59
  %75 = load i32, i32* @GL_DRAW_INDIRECT_BUFFER, align 4
  %76 = call i32 @glBindBuffer(i32 %75, i32 0)
  %77 = call i32 @GL_EXTCALL(i32 %76)
  %78 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %26
  ret void
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glDrawElementsIndirect(i32, i32, i8*) #1

declare dso_local i32 @glDrawArraysIndirect(i32, i8*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
