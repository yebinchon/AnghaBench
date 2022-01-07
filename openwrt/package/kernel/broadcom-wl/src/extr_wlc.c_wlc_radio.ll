; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_radio.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARAM_MODE = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@WLC_GET_RADIO = common dso_local global i32 0, align 4
@WLC_SET_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_radio(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PARAM_MODE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @GET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32, i32* @interface, align 4
  %18 = load i32, i32* @WLC_GET_RADIO, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @wl_ioctl(i32 %17, i32 %18, i32* %19, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = or i32 65536, %33
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @interface, align 4
  %37 = load i32, i32* @WLC_SET_RADIO, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @wl_ioctl(i32 %36, i32 %37, i32* %38, i32 4)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %28, %16
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @wl_ioctl(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
