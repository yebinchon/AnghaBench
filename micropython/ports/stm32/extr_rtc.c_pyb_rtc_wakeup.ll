; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_pyb_rtc_wakeup.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_pyb_rtc_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@RTC_WKUP_IRQn = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"wakeup value too large\00", align 1
@pyb_extint_callback = common dso_local global i32 0, align 4
@EXTI_RTC_WAKEUP = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_4__* null, align 8
@RTC_CR_WUTE = common dso_local global i32 0, align 4
@RTC_ISR_WUTWF = common dso_local global i32 0, align 4
@EXTI = common dso_local global %struct.TYPE_6__* null, align 8
@RTC_ISR_WUTF = common dso_local global i32 0, align 4
@IRQ_PRI_RTC_WKUP = common dso_local global i32 0, align 4
@RTC_CR_WUTIE = common dso_local global i32 0, align 4
@EXTI_D1 = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pyb_rtc_wakeup(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = call i32 (...) @rtc_init_finalise()
  %12 = load i32, i32* @RTC_WKUP_IRQn, align 4
  %13 = call i32 @HAL_NVIC_DisableIRQ(i32 %12)
  store i32 0, i32* %5, align 4
  %14 = load i64, i64* @mp_const_none, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ule i64 %15, 3
  br i1 %16, label %17, label %82

17:                                               ; preds = %2
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @mp_const_none, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %74

24:                                               ; preds = %17
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mp_obj_get_int(i64 %27)
  store i32 %28, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 3, i32* %6, align 4
  br label %29

29:                                               ; preds = %39, %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %30, 16
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 2000, %34
  %36 = icmp sgt i32 %33, %35
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 16
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 32768, %48
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 1000
  store i32 %52, i32* %7, align 4
  br label %67

53:                                               ; preds = %44
  store i32 4, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %54, 1000
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 65536
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  store i32 6, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 65536
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 65536
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65, %53
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %67
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i64, i64* %3, align 8
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64*, i64** %4, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %77, %74
  br label %94

82:                                               ; preds = %2
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @mp_obj_get_int(i64 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i64*, i64** %4, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @mp_obj_get_int(i64 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i64*, i64** %4, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %8, align 8
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %82, %81
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* @pyb_extint_callback, align 4
  %97 = call i64* @MP_STATE_PORT(i32 %96)
  %98 = load i64, i64* @EXTI_RTC_WAKEUP, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %95, i64* %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 202, i32* %101, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 83, i32* %103, align 4
  %104 = load i32, i32* @RTC_CR_WUTE, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %118, %94
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RTC_ISR_WUTWF, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %110

119:                                              ; preds = %110
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, -8
  %130 = or i32 %129, 16384
  %131 = or i32 %130, 1024
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 7
  %134 = or i32 %131, %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 255, i32* %138, align 4
  %139 = load i64, i64* @EXTI_RTC_WAKEUP, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 1, %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXTI, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i64, i64* @EXTI_RTC_WAKEUP, align 8
  %147 = trunc i64 %146 to i32
  %148 = shl i32 1, %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXTI, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @RTC_ISR_WUTF, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i64, i64* @EXTI_RTC_WAKEUP, align 8
  %160 = trunc i64 %159 to i32
  %161 = shl i32 1, %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXTI, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @RTC_WKUP_IRQn, align 4
  %165 = load i32, i32* @IRQ_PRI_RTC_WKUP, align 4
  %166 = call i32 @NVIC_SetPriority(i32 %164, i32 %165)
  %167 = load i32, i32* @RTC_WKUP_IRQn, align 4
  %168 = call i32 @HAL_NVIC_EnableIRQ(i32 %167)
  br label %186

169:                                              ; preds = %119
  %170 = load i32, i32* @RTC_CR_WUTIE, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTC, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 255, i32* %177, align 4
  %178 = load i64, i64* @EXTI_RTC_WAKEUP, align 8
  %179 = trunc i64 %178 to i32
  %180 = shl i32 1, %179
  %181 = xor i32 %180, -1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXTI, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %169, %122
  %187 = load i64, i64* @mp_const_none, align 8
  ret i64 %187
}

declare dso_local i32 @rtc_init_finalise(...) #1

declare dso_local i32 @HAL_NVIC_DisableIRQ(i32) #1

declare dso_local i32 @mp_obj_get_int(i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i64* @MP_STATE_PORT(i32) #1

declare dso_local i32 @NVIC_SetPriority(i32, i32) #1

declare dso_local i32 @HAL_NVIC_EnableIRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
