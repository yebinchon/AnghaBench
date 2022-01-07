; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_delay.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tmr_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmr_delay(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @luaL_checkinteger(i32* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %16, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 1000000
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1000000
  store i32 %18, i32* %4, align 4
  %19 = call i32 @os_delay_us(i32 1000000)
  %20 = call i32 (...) @system_soft_wdt_feed()
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @os_delay_us(i32 %25)
  %27 = call i32 (...) @system_soft_wdt_feed()
  br label %28

28:                                               ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @system_soft_wdt_feed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
