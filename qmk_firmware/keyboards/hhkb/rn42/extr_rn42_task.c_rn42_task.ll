; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_rn42_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_rn42_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rn42_task.state = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"LED status: %02X\0A\00", align 1
@config_mode = common dso_local global i32 0, align 4
@force_usb = common dso_local global i32 0, align 4
@rn42_driver = common dso_local global i32 0, align 4
@lufa_driver = common dso_local global i32 0, align 4
@rn42_task.prev_timer = internal global i32 0, align 4
@LOW_VOLTAGE = common dso_local global i64 0, align 8
@LED_ON = common dso_local global i32 0, align 4
@LED_CHARGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%02u:%02u:%02u\09%umV\0A\00", align 1
@keymap_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rn42_nkro_last = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rn42_task() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  br label %9

9:                                                ; preds = %51, %0
  %10 = call i32 (...) @rn42_getc()
  store i32 %10, i32* %1, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load i32, i32* @rn42_task.state, align 4
  switch i32 %13, label %50 [
    i32 0, label %14
    i32 1, label %32
    i32 2, label %38
    i32 3, label %44
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 254
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* @rn42_task.state, align 4
  br label %31

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = icmp sle i32 0, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 127
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %30

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %17
  br label %51

32:                                               ; preds = %12
  %33 = load i32, i32* %1, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* @rn42_task.state, align 4
  br label %37

36:                                               ; preds = %32
  store i32 0, i32* @rn42_task.state, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %51

38:                                               ; preds = %12
  %39 = load i32, i32* %1, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 3, i32* @rn42_task.state, align 4
  br label %43

42:                                               ; preds = %38
  store i32 0, i32* @rn42_task.state, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %51

44:                                               ; preds = %12
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @rn42_set_leds(i32 %48)
  store i32 0, i32* @rn42_task.state, align 4
  br label %51

50:                                               ; preds = %12
  store i32 0, i32* @rn42_task.state, align 4
  br label %51

51:                                               ; preds = %50, %44, %43, %37, %31
  br label %9

52:                                               ; preds = %9
  %53 = load i32, i32* @config_mode, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @force_usb, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = call i32 (...) @rn42_rts()
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = call i32* (...) @host_get_driver()
  %63 = icmp ne i32* %62, @rn42_driver
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i32 (...) @clear_keyboard()
  %66 = call i32 @host_set_driver(i32* @rn42_driver)
  br label %67

67:                                               ; preds = %64, %61
  br label %75

68:                                               ; preds = %58, %55
  %69 = call i32* (...) @host_get_driver()
  %70 = icmp ne i32* %69, @lufa_driver
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = call i32 (...) @clear_keyboard()
  %73 = call i32 @host_set_driver(i32* @lufa_driver)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* @rn42_task.prev_timer, align 4
  %78 = call i32 @timer_elapsed(i32 %77)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp sgt i32 %79, 1000
  br i1 %80, label %81, label %121

81:                                               ; preds = %76
  %82 = load i32, i32* %2, align 4
  %83 = sdiv i32 %82, 1000
  %84 = mul nsw i32 %83, 1000
  %85 = load i32, i32* @rn42_task.prev_timer, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* @rn42_task.prev_timer, align 4
  %87 = call i64 (...) @battery_status()
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @LOW_VOLTAGE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32, i32* @LED_ON, align 4
  %93 = call i32 @battery_led(i32 %92)
  br label %97

94:                                               ; preds = %81
  %95 = load i32, i32* @LED_CHARGER, align 4
  %96 = call i32 @battery_led(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = call i32 (...) @timer_read32()
  %99 = sdiv i32 %98, 1000
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = srem i32 %100, 60
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = call i32 (...) @battery_voltage()
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sdiv i32 %105, 3600
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %6, align 8
  %108 = load i32, i32* %4, align 4
  %109 = srem i32 %108, 3600
  %110 = sdiv i32 %109, 60
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %7, align 8
  %112 = load i32, i32* %4, align 4
  %113 = srem i32 %112, 60
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %115, i64 %116, i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %103, %97
  br label %121

121:                                              ; preds = %120, %76
  %122 = call i32 (...) @rn42_rts()
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = call i64 (...) @rn42_linked()
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @status_led(i32 1)
  br label %131

129:                                              ; preds = %124, %121
  %130 = call i32 @status_led(i32 0)
  br label %131

131:                                              ; preds = %129, %127
  ret void
}

declare dso_local i32 @rn42_getc(...) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @dprintf(i8*, i64, ...) #1

declare dso_local i32 @rn42_set_leds(i32) #1

declare dso_local i32 @rn42_rts(...) #1

declare dso_local i32* @host_get_driver(...) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @host_set_driver(i32*) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i64 @battery_status(...) #1

declare dso_local i32 @battery_led(i32) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @battery_voltage(...) #1

declare dso_local i64 @rn42_linked(...) #1

declare dso_local i32 @status_led(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
