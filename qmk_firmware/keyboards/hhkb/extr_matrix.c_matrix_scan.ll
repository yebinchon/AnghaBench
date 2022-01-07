; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_prev = common dso_local global i32* null, align 8
@matrix = common dso_local global i32* null, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@TIMER_RAW = common dso_local global i64 0, align 8
@TIMER_RAW_FREQ = common dso_local global i32 0, align 4
@matrix_last_modified = common dso_local global i32 0, align 4
@USB_DeviceState = common dso_local global i64 0, align 8
@DEVICE_STATE_Suspended = common dso_local global i64 0, align 8
@DEVICE_STATE_Unattached = common dso_local global i64 0, align 8
@MATRIX_POWER_SAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32*, i32** @matrix_prev, align 8
  %6 = bitcast i32* %5 to i64*
  store i64* %6, i64** %1, align 8
  %7 = load i32*, i32** @matrix, align 8
  store i32* %7, i32** @matrix_prev, align 8
  %8 = load i64*, i64** %1, align 8
  %9 = bitcast i64* %8 to i32*
  store i32* %9, i32** @matrix, align 8
  %10 = call i64 (...) @KEY_POWER_STATE()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @KEY_POWER_ON()
  br label %14

14:                                               ; preds = %12, %0
  store i64 0, i64* %2, align 8
  br label %15

15:                                               ; preds = %104, %14
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @MATRIX_ROWS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %87, %19
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @MATRIX_COLS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @KEY_SELECT(i64 %25, i64 %26)
  %28 = call i32 @_delay_us(i32 5)
  %29 = load i32*, i32** @matrix_prev, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %3, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = call i32 (...) @KEY_PREV_ON()
  br label %40

40:                                               ; preds = %38, %24
  %41 = call i32 @_delay_us(i32 10)
  %42 = load i64, i64* @TIMER_RAW, align 8
  store i64 %42, i64* %4, align 8
  %43 = call i32 (...) @KEY_ENABLE()
  %44 = call i32 @_delay_us(i32 5)
  %45 = call i64 (...) @KEY_STATE()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load i64, i64* %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load i32*, i32** @matrix, align 8
  %53 = load i64, i64* %2, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %66

57:                                               ; preds = %40
  %58 = load i64, i64* %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  %61 = load i32*, i32** @matrix, align 8
  %62 = load i64, i64* %2, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %57, %47
  %67 = load i64, i64* @TIMER_RAW, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @TIMER_DIFF_RAW(i64 %67, i64 %68)
  %70 = load i32, i32* @TIMER_RAW_FREQ, align 4
  %71 = sdiv i32 1000000, %70
  %72 = sdiv i32 20, %71
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load i32*, i32** @matrix_prev, align 8
  %76 = load i64, i64* %2, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** @matrix, align 8
  %80 = load i64, i64* %2, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %66
  %83 = call i32 @_delay_us(i32 5)
  %84 = call i32 (...) @KEY_PREV_OFF()
  %85 = call i32 (...) @KEY_UNABLE()
  %86 = call i32 @_delay_us(i32 75)
  br label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %3, align 8
  br label %20

90:                                               ; preds = %20
  %91 = load i32*, i32** @matrix, align 8
  %92 = load i64, i64* %2, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** @matrix_prev, align 8
  %96 = load i64, i64* %2, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %94, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = call i32 (...) @timer_read32()
  store i32 %102, i32* @matrix_last_modified, align 4
  br label %103

103:                                              ; preds = %101, %90
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %2, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %2, align 8
  br label %15

107:                                              ; preds = %15
  %108 = call i64 (...) @KEY_POWER_STATE()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i64, i64* @USB_DeviceState, align 8
  %112 = load i64, i64* @DEVICE_STATE_Suspended, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* @USB_DeviceState, align 8
  %116 = load i64, i64* @DEVICE_STATE_Unattached, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @matrix_last_modified, align 4
  %120 = call i64 @timer_elapsed32(i32 %119)
  %121 = load i64, i64* @MATRIX_POWER_SAVE, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = call i32 (...) @KEY_POWER_OFF()
  %125 = call i32 (...) @suspend_power_down()
  br label %126

126:                                              ; preds = %123, %118, %114, %107
  %127 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i64 @KEY_POWER_STATE(...) #1

declare dso_local i32 @KEY_POWER_ON(...) #1

declare dso_local i32 @KEY_SELECT(i64, i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @KEY_PREV_ON(...) #1

declare dso_local i32 @KEY_ENABLE(...) #1

declare dso_local i64 @KEY_STATE(...) #1

declare dso_local i32 @TIMER_DIFF_RAW(i64, i64) #1

declare dso_local i32 @KEY_PREV_OFF(...) #1

declare dso_local i32 @KEY_UNABLE(...) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i64 @timer_elapsed32(i32) #1

declare dso_local i32 @KEY_POWER_OFF(...) #1

declare dso_local i32 @suspend_power_down(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
