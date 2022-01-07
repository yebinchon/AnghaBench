; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_honda.h_honda_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_honda.h_honda_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@honda_gas_prev = common dso_local global i64 0, align 8
@gas_interceptor_prev = common dso_local global i64 0, align 8
@HONDA_GAS_INTERCEPTOR_THRESHOLD = common dso_local global i64 0, align 8
@honda_brake_pressed_prev = common dso_local global i64 0, align 8
@honda_moving = common dso_local global i64 0, align 8
@controls_allowed = common dso_local global i64 0, align 8
@honda_brake = common dso_local global i32 0, align 4
@long_controls_allowed = common dso_local global i32 0, align 4
@honda_fwd_brake = common dso_local global i64 0, align 8
@honda_bosch_hardware = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @honda_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @honda_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GET_ADDR(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @GET_BUS(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @honda_gas_prev, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @gas_interceptor_prev, align 8
  %18 = load i64, i64* @HONDA_GAS_INTERCEPTOR_THRESHOLD, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @honda_brake_pressed_prev, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* @honda_moving, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br label %28

28:                                               ; preds = %26, %16, %1
  %29 = phi i1 [ true, %16 ], [ true, %1 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* @controls_allowed, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 506
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @GET_BYTE(i32* %46, i32 0)
  %48 = shl i32 %47, 2
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GET_BYTE(i32* %49, i32 1)
  %51 = ashr i32 %50, 6
  %52 = and i32 %51, 3
  %53 = add nsw i32 %48, %52
  store i32 %53, i32* @honda_brake, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @long_controls_allowed, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* @honda_brake, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* @honda_brake, align 4
  %66 = icmp sgt i32 %65, 255
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i64, i64* @honda_fwd_brake, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68
  br label %73

73:                                               ; preds = %72, %42, %37
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 228
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 404
  br i1 %78, label %79, label %93

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @GET_BYTE(i32* %83, i32 0)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @GET_BYTE(i32* %85, i32 1)
  %87 = or i32 %84, %86
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %79
  br label %93

93:                                               ; preds = %92, %76
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 512
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @long_controls_allowed, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @GET_BYTE(i32* %103, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @GET_BYTE(i32* %107, i32 1)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106
  br label %112

112:                                              ; preds = %111, %99
  br label %113

113:                                              ; preds = %112, %93
  %114 = call i64 (...) @board_has_relay()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i64, i64* @honda_bosch_hardware, align 8
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i1 [ false, %113 ], [ %118, %116 ]
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 0
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 662
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load i64, i64* @honda_bosch_hardware, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 @GET_BYTE(i32* %136, i32 0)
  %138 = ashr i32 %137, 5
  %139 = and i32 %138, 7
  %140 = icmp ne i32 %139, 2
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %135
  br label %143

143:                                              ; preds = %142, %131, %128, %125, %119
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i64 @board_has_relay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
