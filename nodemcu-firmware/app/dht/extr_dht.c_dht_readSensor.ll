; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/dht/extr_dht.c_dht_readSensor.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/dht/extr_dht.c_dht_readSensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dht_bytes = common dso_local global i32* null, align 8
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_PULLUP = common dso_local global i32 0, align 4
@DHTLIB_TIMEOUT = common dso_local global i64 0, align 8
@LOW = common dso_local global i64 0, align 8
@DHTLIB_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@DHTLIB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dht_readSensor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 128, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %20, %2
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32*, i32** @dht_bytes, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %26 = load i32, i32* @PLATFORM_GPIO_PULLUP, align 4
  %27 = call i32 @platform_gpio_mode(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @DIRECT_MODE_OUTPUT(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DIRECT_WRITE_LOW(i32 %30)
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %38, %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = call i32 @os_delay_us(i32 1000)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %32

41:                                               ; preds = %32
  %42 = call i32 (...) @ets_intr_lock()
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @DIRECT_WRITE_HIGH(i32 %43)
  %45 = call i32 @os_delay_us(i32 40)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DIRECT_MODE_INPUT(i32 %46)
  %48 = load i64, i64* @DHTLIB_TIMEOUT, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %61, %41
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @DIRECT_READ(i32 %50)
  %52 = load i64, i64* @LOW, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = call i32 @os_delay_us(i32 1)
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %9, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @DHTLIB_ERROR_TIMEOUT, align 4
  store i32 %60, i32* %3, align 4
  br label %144

61:                                               ; preds = %54
  br label %49

62:                                               ; preds = %49
  %63 = load i64, i64* @DHTLIB_TIMEOUT, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %76, %62
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @DIRECT_READ(i32 %65)
  %67 = load i64, i64* @LOW, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = call i32 @os_delay_us(i32 1)
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DHTLIB_ERROR_TIMEOUT, align 4
  store i32 %75, i32* %3, align 4
  br label %144

76:                                               ; preds = %69
  br label %64

77:                                               ; preds = %64
  store i32 40, i32* %8, align 4
  br label %78

78:                                               ; preds = %134, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %137

81:                                               ; preds = %78
  %82 = load i64, i64* @DHTLIB_TIMEOUT, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %95, %81
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @DIRECT_READ(i32 %84)
  %86 = load i64, i64* @LOW, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = call i32 @os_delay_us(i32 1)
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %9, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @DHTLIB_ERROR_TIMEOUT, align 4
  store i32 %94, i32* %3, align 4
  br label %144

95:                                               ; preds = %88
  br label %83

96:                                               ; preds = %83
  %97 = call i32 (...) @system_get_time()
  store i32 %97, i32* %11, align 4
  %98 = load i64, i64* @DHTLIB_TIMEOUT, align 8
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %111, %96
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @DIRECT_READ(i32 %100)
  %102 = load i64, i64* @LOW, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = call i32 @os_delay_us(i32 1)
  %106 = load i64, i64* %10, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %10, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @DHTLIB_ERROR_TIMEOUT, align 4
  store i32 %110, i32* %3, align 4
  br label %144

111:                                              ; preds = %104
  br label %99

112:                                              ; preds = %99
  %113 = call i32 (...) @system_get_time()
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp sgt i32 %115, 40
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = load i32*, i32** @dht_bytes, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %117, %112
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  store i32 128, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %130, %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %8, align 4
  br label %78

137:                                              ; preds = %78
  %138 = call i32 (...) @ets_intr_unlock()
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @DIRECT_MODE_OUTPUT(i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @DIRECT_WRITE_HIGH(i32 %141)
  %143 = load i32, i32* @DHTLIB_OK, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %109, %93, %74, %59
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @platform_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @DIRECT_MODE_OUTPUT(i32) #1

declare dso_local i32 @DIRECT_WRITE_LOW(i32) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @ets_intr_lock(...) #1

declare dso_local i32 @DIRECT_WRITE_HIGH(i32) #1

declare dso_local i32 @DIRECT_MODE_INPUT(i32) #1

declare dso_local i64 @DIRECT_READ(i32) #1

declare dso_local i32 @system_get_time(...) #1

declare dso_local i32 @ets_intr_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
