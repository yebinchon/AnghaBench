; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota.h_toyota_fwd_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota.h_toyota_fwd_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@toyota_camera_forwarded = common dso_local global i64 0, align 8
@toyota_giraffe_switch_1 = common dso_local global i32 0, align 4
@long_controls_allowed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @toyota_fwd_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toyota_fwd_hook(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  %10 = load i64, i64* @toyota_camera_forwarded, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %2
  %13 = load i32, i32* @toyota_giraffe_switch_1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 2, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @GET_ADDR(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 740
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 1042
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 401
  br label %33

33:                                               ; preds = %30, %27, %22
  %34 = phi i1 [ true, %27 ], [ true, %22 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 835
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* @long_controls_allowed, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i1 [ true, %33 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %19
  br label %57

57:                                               ; preds = %56, %12, %2
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @GET_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
