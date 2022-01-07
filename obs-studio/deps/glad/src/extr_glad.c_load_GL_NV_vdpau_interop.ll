; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_NV_vdpau_interop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_load_GL_NV_vdpau_interop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_NV_vdpau_interop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glVDPAUInitNV\00", align 1
@glad_glVDPAUInitNV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"glVDPAUFiniNV\00", align 1
@glad_glVDPAUFiniNV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"glVDPAURegisterVideoSurfaceNV\00", align 1
@glad_glVDPAURegisterVideoSurfaceNV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"glVDPAURegisterOutputSurfaceNV\00", align 1
@glad_glVDPAURegisterOutputSurfaceNV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"glVDPAUIsSurfaceNV\00", align 1
@glad_glVDPAUIsSurfaceNV = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"glVDPAUUnregisterSurfaceNV\00", align 1
@glad_glVDPAUUnregisterSurfaceNV = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"glVDPAUGetSurfaceivNV\00", align 1
@glad_glVDPAUGetSurfaceivNV = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"glVDPAUSurfaceAccessNV\00", align 1
@glad_glVDPAUSurfaceAccessNV = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"glVDPAUMapSurfacesNV\00", align 1
@glad_glVDPAUMapSurfacesNV = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"glVDPAUUnmapSurfacesNV\00", align 1
@glad_glVDPAUUnmapSurfacesNV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_GL_NV_vdpau_interop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_GL_NV_vdpau_interop(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_GL_NV_vdpau_interop, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_glVDPAUInitNV, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_glVDPAUFiniNV, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_glVDPAURegisterVideoSurfaceNV, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_glVDPAURegisterOutputSurfaceNV, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_glVDPAUIsSurfaceNV, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_glVDPAUUnregisterSurfaceNV, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_glVDPAUGetSurfaceivNV, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_glVDPAUSurfaceAccessNV, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_glVDPAUMapSurfacesNV, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i64 %25(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i64 %26, i64* @glad_glVDPAUUnmapSurfacesNV, align 8
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
