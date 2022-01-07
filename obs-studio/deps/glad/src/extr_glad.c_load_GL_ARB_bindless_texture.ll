; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_ARB_bindless_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_ARB_bindless_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_ARB_bindless_texture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"glGetTextureHandleARB\00", align 1
@glad_glGetTextureHandleARB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"glGetTextureSamplerHandleARB\00", align 1
@glad_glGetTextureSamplerHandleARB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"glMakeTextureHandleResidentARB\00", align 1
@glad_glMakeTextureHandleResidentARB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"glMakeTextureHandleNonResidentARB\00", align 1
@glad_glMakeTextureHandleNonResidentARB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"glGetImageHandleARB\00", align 1
@glad_glGetImageHandleARB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"glMakeImageHandleResidentARB\00", align 1
@glad_glMakeImageHandleResidentARB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"glMakeImageHandleNonResidentARB\00", align 1
@glad_glMakeImageHandleNonResidentARB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"glUniformHandleui64ARB\00", align 1
@glad_glUniformHandleui64ARB = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"glUniformHandleui64vARB\00", align 1
@glad_glUniformHandleui64vARB = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"glProgramUniformHandleui64ARB\00", align 1
@glad_glProgramUniformHandleui64ARB = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"glProgramUniformHandleui64vARB\00", align 1
@glad_glProgramUniformHandleui64vARB = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"glIsTextureHandleResidentARB\00", align 1
@glad_glIsTextureHandleResidentARB = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"glIsImageHandleResidentARB\00", align 1
@glad_glIsImageHandleResidentARB = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"glVertexAttribL1ui64ARB\00", align 1
@glad_glVertexAttribL1ui64ARB = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"glVertexAttribL1ui64vARB\00", align 1
@glad_glVertexAttribL1ui64vARB = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"glGetVertexAttribLui64vARB\00", align 1
@glad_glGetVertexAttribLui64vARB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_GL_ARB_bindless_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_GL_ARB_bindless_texture(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_GL_ARB_bindless_texture, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_glGetTextureHandleARB, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_glGetTextureSamplerHandleARB, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_glMakeTextureHandleResidentARB, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_glMakeTextureHandleNonResidentARB, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_glGetImageHandleARB, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_glMakeImageHandleResidentARB, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_glMakeImageHandleNonResidentARB, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_glUniformHandleui64ARB, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_glUniformHandleui64vARB, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i64 %25(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  store i64 %26, i64* @glad_glProgramUniformHandleui64ARB, align 8
  %27 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %28 = call i64 %27(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  store i64 %28, i64* @glad_glProgramUniformHandleui64vARB, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %30 = call i64 %29(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  store i64 %30, i64* @glad_glIsTextureHandleResidentARB, align 8
  %31 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %32 = call i64 %31(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i64 %32, i64* @glad_glIsImageHandleResidentARB, align 8
  %33 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %34 = call i64 %33(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i64 %34, i64* @glad_glVertexAttribL1ui64ARB, align 8
  %35 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %36 = call i64 %35(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store i64 %36, i64* @glad_glVertexAttribL1ui64vARB, align 8
  %37 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %38 = call i64 %37(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  store i64 %38, i64* @glad_glGetVertexAttribLui64vARB, align 8
  br label %39

39:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
