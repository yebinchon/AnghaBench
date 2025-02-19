; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rtcmem.c_rtcmem_write32.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rtcmem.c_rtcmem_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_USER_MEM_NUM_DWORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RTC mem would overrun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rtcmem_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcmem_write32(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @luaL_checknumber(i32* %6, i32 1)
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @RTC_USER_MEM_NUM_DWORDS, align 4
  %16 = icmp sle i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @luaL_argcheck(i32* %11, i32 %17, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %5, align 4
  br label %19

19:                                               ; preds = %23, %1
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp sgt i32 %20, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = call i32 @lua_tonumber(i32* %26, i32 %27)
  %30 = call i32 @rtc_mem_write(i32 %24, i32 %29)
  br label %19

31:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @rtc_mem_write(i32, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
