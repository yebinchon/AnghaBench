; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_mazda.h_mazda_fwd_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_mazda.h_mazda_fwd_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mazda_forward_cam = common dso_local global i64 0, align 8
@mazda_giraffe_switch_2_on = common dso_local global i32 0, align 4
@MAZDA_MAIN = common dso_local global i32 0, align 4
@MAZDA_CAM = common dso_local global i32 0, align 4
@MAZDA_LKAS = common dso_local global i32 0, align 4
@mazda_op_lkas_detected = common dso_local global i64 0, align 8
@MAZDA_LANEINFO = common dso_local global i32 0, align 4
@mazda_op_laneinfo_detected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @mazda_fwd_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mazda_fwd_hook(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load i64, i64* @mazda_forward_cam, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load i32, i32* @mazda_giraffe_switch_2_on, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @GET_ADDR(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAZDA_MAIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @MAZDA_CAM, align 4
  store i32 %19, i32* %5, align 4
  br label %43

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MAZDA_CAM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAZDA_LKAS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @mazda_op_lkas_detected, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAZDA_LANEINFO, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* @mazda_op_laneinfo_detected, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @MAZDA_MAIN, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %35, %28
  br label %42

41:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43, %9, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @GET_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
