; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_gm.h_gm_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_gm.h_gm_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gm_torque_driver = common dso_local global i32 0, align 4
@gm_moving = common dso_local global i32 0, align 4
@gm_ascm_detected = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@gm_brake_prev = common dso_local global i32 0, align 4
@gm_gas_prev = common dso_local global i32 0, align 4
@long_controls_allowed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gm_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GET_BUS(i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @GET_ADDR(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 388
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GET_BYTE(i32* %17, i32 6)
  %19 = and i32 %18, 7
  %20 = shl i32 %19, 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @GET_BYTE(i32* %21, i32 7)
  %23 = or i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @to_signed(i32 %24, i32 11)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @update_sample(i32* @gm_torque_driver, i32 %26)
  br label %28

28:                                               ; preds = %16, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 842
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GET_BYTE(i32* %32, i32 0)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GET_BYTE(i32* %34, i32 1)
  %36 = or i32 %33, %35
  store i32 %36, i32* @gm_moving, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 384
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 715
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i32 1, i32* @gm_ascm_detected, align 4
  store i32 0, i32* @controls_allowed, align 4
  br label %47

47:                                               ; preds = %46, %43, %37
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 481
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @GET_BYTE(i32* %51, i32 5)
  %53 = and i32 %52, 112
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %58 [
    i32 2, label %56
    i32 3, label %56
    i32 6, label %57
  ]

56:                                               ; preds = %50, %50
  store i32 1, i32* @controls_allowed, align 4
  br label %59

57:                                               ; preds = %50
  store i32 0, i32* @controls_allowed, align 4
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %57, %56
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 241
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GET_BYTE(i32* %64, i32 1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 10
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @gm_brake_prev, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @gm_moving, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %72
  store i32 0, i32* @controls_allowed, align 4
  br label %79

79:                                               ; preds = %78, %75, %69
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* @gm_brake_prev, align 4
  br label %81

81:                                               ; preds = %79, %60
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 417
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @GET_BYTE(i32* %85, i32 6)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @gm_gas_prev, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @long_controls_allowed, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* @controls_allowed, align 4
  br label %96

96:                                               ; preds = %95, %92, %89, %84
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* @gm_gas_prev, align 4
  br label %98

98:                                               ; preds = %96, %81
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 189
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @GET_BYTE(i32* %102, i32 0)
  %104 = and i32 %103, 32
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* @controls_allowed, align 4
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %98
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @update_sample(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
