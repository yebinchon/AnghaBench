; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_command.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD0 = common dso_local global i32 0, align 4
@m_spi_no = common dso_local global i32 0, align 4
@CMD12 = common dso_local global i32 0, align 4
@m_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sdcard_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdcard_command(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @sdcard_chipselect_low()
  %8 = call i32 @sdcard_wait_not_busy(i32 100000)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CMD0, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 149, i32 135
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @m_spi_no, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 64
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 24
  %20 = or i32 %17, %19
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @platform_spi_transaction(i32 %14, i32 16, i32 %20, i32 32, i32 %24, i32 0, i32 0, i32 0)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @CMD12, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @m_spi_no, align 4
  %31 = call i32 @platform_spi_transaction(i32 %30, i32 8, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %32

32:                                               ; preds = %29, %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* @m_spi_no, align 4
  %35 = call i32 @platform_spi_send_recv(i32 %34, i32 8, i32 255)
  store i32 %35, i32* @m_status, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 255
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ false, %33 ], [ %40, %38 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %33

47:                                               ; preds = %41
  %48 = load i32, i32* @m_status, align 4
  ret i32 %48
}

declare dso_local i32 @sdcard_chipselect_low(...) #1

declare dso_local i32 @sdcard_wait_not_busy(i32) #1

declare dso_local i32 @platform_spi_transaction(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @platform_spi_send_recv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
