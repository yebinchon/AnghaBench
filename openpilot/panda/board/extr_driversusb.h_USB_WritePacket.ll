; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_USB_WritePacket.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_USB_WritePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_RESP_LEN = common dso_local global i32 0, align 4
@USB_OTG_DIEPTSIZ_PKTCNT = common dso_local global i32 0, align 4
@USB_OTG_DIEPTSIZ_XFRSIZ = common dso_local global i32 0, align 4
@USB_OTG_DIEPCTL_CNAK = common dso_local global i32 0, align 4
@USB_OTG_DIEPCTL_EPENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB_WritePacket(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_RESP_LEN, align 4
  %14 = sub i32 %13, 1
  %15 = add i32 %12, %14
  %16 = load i32, i32* @MAX_RESP_LEN, align 4
  %17 = udiv i32 %15, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, 3
  %20 = udiv i32 %19, 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 19
  %23 = load i32, i32* @USB_OTG_DIEPTSIZ_PKTCNT, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @USB_OTG_DIEPTSIZ_XFRSIZ, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_2__* @USBx_INEP(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @USB_OTG_DIEPCTL_CNAK, align 4
  %33 = load i32, i32* @USB_OTG_DIEPCTL_EPENA, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_2__* @USBx_INEP(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %51, %3
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %42

54:                                               ; preds = %42
  ret void
}

declare dso_local %struct.TYPE_2__* @USBx_INEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
