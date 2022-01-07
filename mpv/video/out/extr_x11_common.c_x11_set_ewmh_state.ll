; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_x11_set_ewmh_state.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_x11_set_ewmh_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i32 }

@NET_WM_STATE_ADD = common dso_local global i64 0, align 8
@NET_WM_STATE_REMOVE = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_x11_state*, i8*, i32)* @x11_set_ewmh_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_set_ewmh_state(%struct.vo_x11_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.vo_x11_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i64], align 16
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @NET_WM_STATE_ADD, align 8
  br label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @NET_WM_STATE_REMOVE, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* %8, align 8
  %17 = getelementptr inbounds i64, i64* %8, i64 1
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %19 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @False, align 4
  %23 = call i64 @XInternAtom(i32 %20, i8* %21, i32 %22)
  store i64 %23, i64* %17, align 8
  %24 = getelementptr inbounds i64, i64* %17, i64 1
  %25 = getelementptr inbounds i64, i64* %8, i64 5
  br label %26

26:                                               ; preds = %26, %15
  %27 = phi i64* [ %24, %15 ], [ %28, %26 ]
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = icmp eq i64* %28, %25
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %33 = call i32 @x11_send_ewmh_msg(%struct.vo_x11_state* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %32)
  ret void
}

declare dso_local i64 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @x11_send_ewmh_msg(%struct.vo_x11_state*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
