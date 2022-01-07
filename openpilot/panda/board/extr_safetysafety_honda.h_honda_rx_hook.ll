; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_honda.h_honda_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_honda.h_honda_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@honda_moving = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@honda_alt_brake_msg = common dso_local global i64 0, align 8
@honda_brake_pressed_prev = common dso_local global i32 0, align 4
@gas_interceptor_detected = common dso_local global i32 0, align 4
@HONDA_GAS_INTERCEPTOR_THRESHOLD = common dso_local global i32 0, align 4
@gas_interceptor_prev = common dso_local global i32 0, align 4
@long_controls_allowed = common dso_local global i64 0, align 8
@honda_gas_prev = common dso_local global i32 0, align 4
@honda_fwd_brake = common dso_local global i32 0, align 4
@honda_brake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @honda_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @honda_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @GET_ADDR(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @GET_LEN(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GET_BUS(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 344
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GET_BYTE(i32* %22, i32 0)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @GET_BYTE(i32* %24, i32 1)
  %26 = or i32 %23, %25
  store i32 %26, i32* @honda_moving, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 422
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 662
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GET_BYTE(i32* %34, i32 0)
  %36 = and i32 %35, 224
  %37 = ashr i32 %36, 5
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %41 [
    i32 2, label %39
    i32 3, label %40
    i32 4, label %40
  ]

39:                                               ; preds = %33
  store i32 0, i32* @controls_allowed, align 4
  br label %42

40:                                               ; preds = %33, %33
  store i32 1, i32* @controls_allowed, align 4
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %40, %39
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i64, i64* @honda_alt_brake_msg, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 446
  %49 = zext i1 %48 to i32
  br label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 380
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i32 [ %49, %46 ], [ %53, %50 ]
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load i64, i64* @honda_alt_brake_msg, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @GET_BYTE(i32* %62, i32 0)
  %64 = and i32 %63, 16
  br label %69

65:                                               ; preds = %58
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @GET_BYTE(i32* %66, i32 6)
  %68 = and i32 %67, 32
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ]
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* @honda_brake_pressed_prev, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @honda_moving, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  store i32 0, i32* @controls_allowed, align 4
  br label %80

80:                                               ; preds = %79, %76, %69
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* @honda_brake_pressed_prev, align 4
  br label %82

82:                                               ; preds = %80, %54
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 513
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 6
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  store i32 1, i32* @gas_interceptor_detected, align 4
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @GET_INTERCEPTOR(i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @HONDA_GAS_INTERCEPTOR_THRESHOLD, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i32, i32* @gas_interceptor_prev, align 4
  %96 = load i32, i32* @HONDA_GAS_INTERCEPTOR_THRESHOLD, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i64, i64* @long_controls_allowed, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* @controls_allowed, align 4
  br label %102

102:                                              ; preds = %101, %98, %94, %88
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* @gas_interceptor_prev, align 4
  br label %104

104:                                              ; preds = %102, %85, %82
  %105 = load i32, i32* @gas_interceptor_detected, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %3, align 4
  %109 = icmp eq i32 %108, 380
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @GET_BYTE(i32* %111, i32 0)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32, i32* @honda_gas_prev, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @long_controls_allowed, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* @controls_allowed, align 4
  br label %122

122:                                              ; preds = %121, %118, %115, %110
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* @honda_gas_prev, align 4
  br label %124

124:                                              ; preds = %122, %107
  br label %125

125:                                              ; preds = %124, %104
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %129, 506
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @GET_BYTE(i32* %132, i32 3)
  %134 = and i32 %133, 32
  store i32 %134, i32* %11, align 4
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @GET_BYTE(i32* %135, i32 0)
  %137 = shl i32 %136, 2
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @GET_BYTE(i32* %138, i32 1)
  %140 = ashr i32 %139, 6
  %141 = and i32 %140, 3
  %142 = add nsw i32 %137, %141
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %131
  store i32 0, i32* @honda_fwd_brake, align 4
  br label %153

146:                                              ; preds = %131
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @honda_brake, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 1, i32* @honda_fwd_brake, align 4
  br label %152

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %150
  br label %153

153:                                              ; preds = %152, %145
  br label %154

154:                                              ; preds = %153, %128, %125
  ret void
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_LEN(i32*) #1

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @GET_INTERCEPTOR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
