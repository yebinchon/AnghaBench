; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_volkswagen.h_volkswagen_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_volkswagen.h_volkswagen_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_EPS_01 = common dso_local global i32 0, align 4
@volkswagen_torque_driver = common dso_local global i32 0, align 4
@MSG_ACC_06 = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@MSG_MOTOR_20 = common dso_local global i32 0, align 4
@volkswagen_gas_prev = common dso_local global i32 0, align 4
@long_controls_allowed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @volkswagen_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volkswagen_rx_hook(i32* %0) #0 {
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
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MSG_EPS_01, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GET_BYTE(i32* %20, i32 5)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GET_BYTE(i32* %22, i32 6)
  %24 = and i32 %23, 31
  %25 = shl i32 %24, 8
  %26 = or i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GET_BYTE(i32* %27, i32 6)
  %29 = and i32 %28, 128
  %30 = ashr i32 %29, 7
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @update_sample(i32* @volkswagen_torque_driver, i32 %37)
  br label %39

39:                                               ; preds = %36, %15, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MSG_ACC_06, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @GET_BYTE(i32* %44, i32 7)
  %46 = and i32 %45, 112
  %47 = ashr i32 %46, 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 5
  br label %56

56:                                               ; preds = %53, %50, %43
  %57 = phi i1 [ true, %50 ], [ true, %43 ], [ %55, %53 ]
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  store i32 %59, i32* @controls_allowed, align 4
  br label %60

60:                                               ; preds = %56, %39
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MSG_MOTOR_20, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @GET_BYTES_04(i32* %65)
  %67 = ashr i32 %66, 12
  %68 = and i32 %67, 255
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* @volkswagen_gas_prev, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* @long_controls_allowed, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* @controls_allowed, align 4
  br label %78

78:                                               ; preds = %77, %74, %71, %64
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* @volkswagen_gas_prev, align 4
  br label %80

80:                                               ; preds = %78, %60
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @update_sample(i32*, i32) #1

declare dso_local i32 @GET_BYTES_04(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
