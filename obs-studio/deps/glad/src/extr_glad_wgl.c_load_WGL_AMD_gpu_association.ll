; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_wgl.c_load_WGL_AMD_gpu_association.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_wgl.c_load_WGL_AMD_gpu_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_WGL_AMD_gpu_association = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wglGetGPUIDsAMD\00", align 1
@glad_wglGetGPUIDsAMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"wglGetGPUInfoAMD\00", align 1
@glad_wglGetGPUInfoAMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"wglGetContextGPUIDAMD\00", align 1
@glad_wglGetContextGPUIDAMD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"wglCreateAssociatedContextAMD\00", align 1
@glad_wglCreateAssociatedContextAMD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"wglCreateAssociatedContextAttribsAMD\00", align 1
@glad_wglCreateAssociatedContextAttribsAMD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"wglDeleteAssociatedContextAMD\00", align 1
@glad_wglDeleteAssociatedContextAMD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"wglMakeAssociatedContextCurrentAMD\00", align 1
@glad_wglMakeAssociatedContextCurrentAMD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"wglGetCurrentAssociatedContextAMD\00", align 1
@glad_wglGetCurrentAssociatedContextAMD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"wglBlitContextFramebufferAMD\00", align 1
@glad_wglBlitContextFramebufferAMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_WGL_AMD_gpu_association to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_WGL_AMD_gpu_association(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_WGL_AMD_gpu_association, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_wglGetGPUIDsAMD, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_wglGetGPUInfoAMD, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_wglGetContextGPUIDAMD, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_wglCreateAssociatedContextAMD, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_wglCreateAssociatedContextAttribsAMD, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_wglDeleteAssociatedContextAMD, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_wglMakeAssociatedContextCurrentAMD, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_wglGetCurrentAssociatedContextAMD, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_wglBlitContextFramebufferAMD, align 8
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
