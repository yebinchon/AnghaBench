; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_write2422_block.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_write2422_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@i2c0_buf = common dso_local global i8* null, align 8
@USB2422_shadow = common dso_local global i32 0, align 4
@DC_USB_WRITE2422_BLOCK_BEGIN = common dso_local global i32 0, align 4
@USB2422_ADDR = common dso_local global i32 0, align 4
@SERCOM0 = common dso_local global %struct.TYPE_12__* null, align 8
@DC_USB_WRITE2422_BLOCK_SYNC_SYSOP = common dso_local global i32 0, align 4
@DC_USB_WRITE2422_BLOCK_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB_write2422_block() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @i2c0_buf, align 8
  store i8* %4, i8** %1, align 8
  store i8* bitcast (i32* @USB2422_shadow to i8*), i8** %3, align 8
  %5 = load i32, i32* @DC_USB_WRITE2422_BLOCK_BEGIN, align 4
  %6 = call i32 @DBGC(i32 %5)
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %2, align 8
  br label %8

8:                                                ; preds = %49, %0
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 256
  %12 = icmp ult i8* %9, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i8
  %20 = load i8*, i8** %1, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %21, align 1
  %22 = load i8*, i8** %1, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 32, i8* %23, align 1
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @memcpy(i8* %25, i8* %26, i32 32)
  %28 = load i32, i32* @USB2422_ADDR, align 4
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @i2c0_transmit(i32 %28, i8* %29, i32 34, i32 50000)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SERCOM0, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 3, i32* %35, align 8
  br label %36

36:                                               ; preds = %44, %13
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SERCOM0, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @DC_USB_WRITE2422_BLOCK_SYNC_SYSOP, align 4
  %46 = call i32 @DBGC(i32 %45)
  br label %36

47:                                               ; preds = %36
  %48 = call i32 @wait_us(i32 100)
  br label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 32
  store i8* %51, i8** %2, align 8
  br label %8

52:                                               ; preds = %8
  %53 = load i32, i32* @DC_USB_WRITE2422_BLOCK_COMPLETE, align 4
  %54 = call i32 @DBGC(i32 %53)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @i2c0_transmit(i32, i8*, i32, i32) #1

declare dso_local i32 @wait_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
