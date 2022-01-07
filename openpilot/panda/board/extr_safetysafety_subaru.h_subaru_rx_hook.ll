; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_subaru.h_subaru_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_subaru.h_subaru_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subaru_torque_driver = common dso_local global i32 0, align 4
@subaru_cruise_engaged_last = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @subaru_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subaru_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @GET_BUS(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GET_ADDR(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 281
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 881
  br i1 %17, label %18, label %35

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 281
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 16, i32 29
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GET_BYTES_04(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 2047
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @to_signed(i32 %31, i32 11)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @update_sample(i32* @subaru_torque_driver, i32 %33)
  br label %35

35:                                               ; preds = %21, %18, %15
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 576
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 324
  br i1 %40, label %41, label %66

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 576
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 9, i32 17
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GET_BYTES_48(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @subaru_cruise_engaged_last, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 1, i32* @controls_allowed, align 4
  br label %60

60:                                               ; preds = %59, %56, %44
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* @controls_allowed, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* @subaru_cruise_engaged_last, align 4
  br label %66

66:                                               ; preds = %64, %41, %38
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTES_04(i32*) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @update_sample(i32*, i32) #1

declare dso_local i32 @GET_BYTES_48(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
