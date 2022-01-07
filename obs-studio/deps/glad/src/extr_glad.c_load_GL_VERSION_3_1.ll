; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_VERSION_3_1.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_VERSION_3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_3_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glDrawArraysInstanced\00", align 1
@glad_glDrawArraysInstanced = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"glDrawElementsInstanced\00", align 1
@glad_glDrawElementsInstanced = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"glTexBuffer\00", align 1
@glad_glTexBuffer = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"glPrimitiveRestartIndex\00", align 1
@glad_glPrimitiveRestartIndex = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"glCopyBufferSubData\00", align 1
@glad_glCopyBufferSubData = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"glGetUniformIndices\00", align 1
@glad_glGetUniformIndices = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"glGetActiveUniformsiv\00", align 1
@glad_glGetActiveUniformsiv = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"glGetActiveUniformName\00", align 1
@glad_glGetActiveUniformName = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"glGetUniformBlockIndex\00", align 1
@glad_glGetUniformBlockIndex = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"glGetActiveUniformBlockiv\00", align 1
@glad_glGetActiveUniformBlockiv = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"glGetActiveUniformBlockName\00", align 1
@glad_glGetActiveUniformBlockName = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"glUniformBlockBinding\00", align 1
@glad_glUniformBlockBinding = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_GL_VERSION_3_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_GL_VERSION_3_1(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_GL_VERSION_3_1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_glDrawArraysInstanced, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_glDrawElementsInstanced, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_glTexBuffer, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_glPrimitiveRestartIndex, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_glCopyBufferSubData, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_glGetUniformIndices, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_glGetActiveUniformsiv, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_glGetActiveUniformName, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_glGetUniformBlockIndex, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i64 %25(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i64 %26, i64* @glad_glGetActiveUniformBlockiv, align 8
  %27 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %28 = call i64 %27(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  store i64 %28, i64* @glad_glGetActiveUniformBlockName, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %30 = call i64 %29(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i64 %30, i64* @glad_glUniformBlockBinding, align 8
  br label %31

31:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
