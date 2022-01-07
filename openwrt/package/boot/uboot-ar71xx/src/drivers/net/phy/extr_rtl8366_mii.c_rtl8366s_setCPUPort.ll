; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setCPUPort.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366s_setCPUPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"rtl8366s_setCPUPort: invalid port number\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"rtl8366s_setCPUPort: rtl8366s_setCPUPortMask failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"rtl8366s_setCPUPort: rtl8366s_setCPUDisableInsTag fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"rtl8366s_setCPUPort: rtl8366s_setCPUDropUnda fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366s_setCPUPort(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 6
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %46

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @rtl8366s_setCPUPortMask(i32 %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %46

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @rtl8366s_setCPUPortMask(i32 %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %46

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @rtl8366s_setCPUDisableInsTag(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %46

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @rtl8366s_setCPUDropUnda(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43, %37, %31, %21, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rtl8366s_setCPUPortMask(i32, i32) #1

declare dso_local i64 @rtl8366s_setCPUDisableInsTag(i32) #1

declare dso_local i64 @rtl8366s_setCPUDropUnda(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
