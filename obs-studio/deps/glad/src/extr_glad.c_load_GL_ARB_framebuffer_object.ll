; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_ARB_framebuffer_object.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_ARB_framebuffer_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_ARB_framebuffer_object = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"glIsRenderbuffer\00", align 1
@glad_glIsRenderbuffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"glBindRenderbuffer\00", align 1
@glad_glBindRenderbuffer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"glDeleteRenderbuffers\00", align 1
@glad_glDeleteRenderbuffers = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"glGenRenderbuffers\00", align 1
@glad_glGenRenderbuffers = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"glRenderbufferStorage\00", align 1
@glad_glRenderbufferStorage = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"glGetRenderbufferParameteriv\00", align 1
@glad_glGetRenderbufferParameteriv = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"glIsFramebuffer\00", align 1
@glad_glIsFramebuffer = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"glBindFramebuffer\00", align 1
@glad_glBindFramebuffer = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"glDeleteFramebuffers\00", align 1
@glad_glDeleteFramebuffers = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"glGenFramebuffers\00", align 1
@glad_glGenFramebuffers = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"glCheckFramebufferStatus\00", align 1
@glad_glCheckFramebufferStatus = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"glFramebufferTexture1D\00", align 1
@glad_glFramebufferTexture1D = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"glFramebufferTexture2D\00", align 1
@glad_glFramebufferTexture2D = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"glFramebufferTexture3D\00", align 1
@glad_glFramebufferTexture3D = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"glFramebufferRenderbuffer\00", align 1
@glad_glFramebufferRenderbuffer = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"glGetFramebufferAttachmentParameteriv\00", align 1
@glad_glGetFramebufferAttachmentParameteriv = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"glGenerateMipmap\00", align 1
@glad_glGenerateMipmap = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"glBlitFramebuffer\00", align 1
@glad_glBlitFramebuffer = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"glRenderbufferStorageMultisample\00", align 1
@glad_glRenderbufferStorageMultisample = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"glFramebufferTextureLayer\00", align 1
@glad_glFramebufferTextureLayer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_GL_ARB_framebuffer_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_GL_ARB_framebuffer_object(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_GL_ARB_framebuffer_object, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_glIsRenderbuffer, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_glBindRenderbuffer, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_glDeleteRenderbuffers, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_glGenRenderbuffers, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_glRenderbufferStorage, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_glGetRenderbufferParameteriv, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_glIsFramebuffer, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_glBindFramebuffer, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_glDeleteFramebuffers, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i64 %25(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store i64 %26, i64* @glad_glGenFramebuffers, align 8
  %27 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %28 = call i64 %27(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i64 %28, i64* @glad_glCheckFramebufferStatus, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %30 = call i64 %29(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i64 %30, i64* @glad_glFramebufferTexture1D, align 8
  %31 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %32 = call i64 %31(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i64 %32, i64* @glad_glFramebufferTexture2D, align 8
  %33 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %34 = call i64 %33(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  store i64 %34, i64* @glad_glFramebufferTexture3D, align 8
  %35 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %36 = call i64 %35(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  store i64 %36, i64* @glad_glFramebufferRenderbuffer, align 8
  %37 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %38 = call i64 %37(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  store i64 %38, i64* @glad_glGetFramebufferAttachmentParameteriv, align 8
  %39 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %40 = call i64 %39(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  store i64 %40, i64* @glad_glGenerateMipmap, align 8
  %41 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %42 = call i64 %41(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  store i64 %42, i64* @glad_glBlitFramebuffer, align 8
  %43 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %44 = call i64 %43(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  store i64 %44, i64* @glad_glRenderbufferStorageMultisample, align 8
  %45 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %46 = call i64 %45(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  store i64 %46, i64* @glad_glFramebufferTextureLayer, align 8
  br label %47

47:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
