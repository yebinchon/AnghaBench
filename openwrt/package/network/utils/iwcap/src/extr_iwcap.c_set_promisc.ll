; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/iwcap/src/extr_iwcap.c_set_promisc.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/iwcap/src/extr_iwcap.c_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@ifname = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@capture_sock = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_promisc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq, align 4
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ifname, align 4
  %8 = load i32, i32* @IFNAMSIZ, align 4
  %9 = call i32 @strncpy(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @capture_sock, align 4
  %11 = load i32, i32* @SIOCGIFFLAGS, align 4
  %12 = call i64 @ioctl(i32 %10, i32 %11, %struct.ifreq* %4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @capture_sock, align 4
  %30 = load i32, i32* @SIOCSIFFLAGS, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, %struct.ifreq* %4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %58

34:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %58

35:                                               ; preds = %18, %15
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* @IFF_PROMISC, align 4
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @capture_sock, align 4
  %51 = load i32, i32* @SIOCSIFFLAGS, align 4
  %52 = call i64 @ioctl(i32 %50, i32 %51, %struct.ifreq* %4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %58

55:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %58

56:                                               ; preds = %38, %35
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %54, %34, %33, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
