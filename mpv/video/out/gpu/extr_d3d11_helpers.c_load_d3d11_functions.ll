; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_load_d3d11_functions.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_load_d3d11_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@d3d11_once = common dso_local global i32 0, align 4
@d3d11_load = common dso_local global i32 0, align 4
@pD3D11CreateDevice = common dso_local global i64 0, align 8
@pCreateDXGIFactory1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"Failed to load base d3d11 functionality: CreateDevice: %s, CreateDXGIFactory1: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*)* @load_d3d11_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_d3d11_functions(%struct.mp_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_log*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %3, align 8
  %4 = load i32, i32* @d3d11_load, align 4
  %5 = call i32 @pthread_once(i32* @d3d11_once, i32 %4)
  %6 = load i64, i64* @pD3D11CreateDevice, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @pCreateDXGIFactory1, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.mp_log*, %struct.mp_log** %3, align 8
  %13 = load i64, i64* @pD3D11CreateDevice, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i64, i64* @pCreateDXGIFactory1, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @mp_fatal(%struct.mp_log* %12, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %20)
  store i32 0, i32* %2, align 4
  br label %23

22:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
