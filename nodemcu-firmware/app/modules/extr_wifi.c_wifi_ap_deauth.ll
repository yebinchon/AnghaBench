; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_ap_deauth.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_wifi.c_wifi_ap_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_MAC_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @wifi_ap_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_ap_deauth(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @lua_isstring(i32* %6, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i32* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 17
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @INVALID_MAC_STR, align 4
  %17 = call i32 @luaL_argcheck(i32* %12, i32 %15, i32 1, i32 %16)
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @ets_str2macaddr(i32* %18, i8* %19)
  br label %24

21:                                               ; preds = %1
  %22 = bitcast [6 x i32]* %3 to i32**
  %23 = call i32 @memset(i32** %22, i32 255, i32 24)
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %27 = call i32 @wifi_softap_deauth(i32* %26)
  %28 = call i32 @lua_pushboolean(i32* %25, i32 %27)
  ret i32 1
}

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i32) #1

declare dso_local i32 @ets_str2macaddr(i32*, i8*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @wifi_softap_deauth(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
