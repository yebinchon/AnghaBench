; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_xembed_update.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_xembed_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i32, i32, i32 }

@XEMBED_VERSION = common dso_local global i32 0, align 4
@_XEMBED_INFO = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_x11_state*, i32)* @vo_x11_xembed_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_xembed_update(%struct.vo_x11_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vo_x11_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %8 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %13 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %39

17:                                               ; preds = %11
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %19 = load i32, i32* @XEMBED_VERSION, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds i64, i64* %18, i64 1
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %21, align 8
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %25 = load i32, i32* @_XEMBED_INFO, align 4
  %26 = call i32 @XA(%struct.vo_x11_state* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %28 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %31 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PropModeReplace, align 4
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %37 = bitcast i64* %36 to i8*
  %38 = call i32 @XChangeProperty(i32 %29, i32 %32, i32 %33, i32 %34, i32 32, i32 %35, i8* %37, i32 2)
  br label %39

39:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
