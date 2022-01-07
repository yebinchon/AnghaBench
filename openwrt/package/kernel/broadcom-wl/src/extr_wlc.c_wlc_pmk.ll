; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_pmk.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@PARAM_MODE = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@WSEC_MAX_PSK_LEN = common dso_local global i64 0, align 8
@WSEC_PASSPHRASE = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@WLC_SET_WSEC_PMK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_pmk(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PARAM_MODE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @SET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* @WSEC_MAX_PSK_LEN, align 8
  %21 = call i32 @strncpy(i32 %18, i8* %19, i64 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WSEC_MAX_PSK_LEN, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i64, i64* @WSEC_MAX_PSK_LEN, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %16
  %33 = load i32, i32* @WSEC_PASSPHRASE, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @interface, align 4
  %36 = load i32, i32* @WLC_SET_WSEC_PMK, align 4
  %37 = call i32 @wl_ioctl(i32 %35, i32 %36, %struct.TYPE_3__* %9, i32 16)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @wl_ioctl(i32, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
