; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_testdev_ffs_ifnum.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_testdev_ffs_ifnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.usb_interface_descriptor, [200 x i8] }
%struct.usb_interface_descriptor = type { i32, i64, i32, i64, i64, i64, i64 }

@USB_DT_INTERFACE = common dso_local global i64 0, align 8
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @testdev_ffs_ifnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testdev_ffs_ifnum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %union.anon, align 8
  store i32* %0, i32** %3, align 8
  br label %5

5:                                                ; preds = %65, %1
  %6 = bitcast %union.anon* %4 to [255 x i8]*
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fread(i8* %7, i8 zeroext 1, i32 1, i32* %8)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %66

12:                                               ; preds = %5
  %13 = bitcast %union.anon* %4 to [255 x i8]*
  %14 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = bitcast %union.anon* %4 to [255 x i8]*
  %17 = getelementptr inbounds [255 x i8], [255 x i8]* %16, i64 0, i64 0
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = trunc i32 %20 to i8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @fread(i8* %15, i8 zeroext %21, i32 1, i32* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %66

26:                                               ; preds = %12
  %27 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %28 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %30, 56
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %34 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_DT_INTERFACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %40 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %45 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %51 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %56 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = bitcast %union.anon* %4 to %struct.usb_interface_descriptor*
  %61 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i8
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %54, %49, %43, %38, %32, %26
  br label %5

66:                                               ; preds = %59, %25, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @fread(i8*, i8 zeroext, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
