; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_vif_enabled.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_vif_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"bss\00", align 1
@vif = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@WLC_SET_VAR = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@WLC_GET_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_vif_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_vif_enabled(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @vif, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @interface, align 4
  %29 = load i32, i32* @WLC_SET_VAR, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %31 = call i32 @wl_ioctl(i32 %28, i32 %29, i32* %30, i32 12)
  store i32 %31, i32* %9, align 4
  br label %46

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @GET, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @interface, align 4
  %39 = load i32, i32* @WLC_GET_VAR, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %41 = call i32 @wl_ioctl(i32 %38, i32 %39, i32* %40, i32 12)
  store i32 %41, i32* %9, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %32
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @wl_ioctl(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
