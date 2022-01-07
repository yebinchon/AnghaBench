; ModuleID = '/home/carl/AnghaBench/qmk_firmware/util/usb_detach/extr_usb_detach.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/util/usb_detach/extr_usb_detach.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbdevfs_ioctl = type { i32, i32*, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unable to open file\00", align 1
@USBDEVFS_DISCONNECT = common dso_local global i32 0, align 4
@USBDEVFS_IOCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"un claimed interface %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"usage: %s /dev/bus/usb/BUS/DEVICE\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Release all interfaces of this usb device for usage in virtualisation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.usbdevfs_ioctl, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %52

22:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 255
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @USBDEVFS_DISCONNECT, align 4
  %30 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %6, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @USBDEVFS_IOCTL, align 4
  %34 = call i32 @ioctl(i32 %32, i32 %33, %struct.usbdevfs_ioctl* %6)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %23

45:                                               ; preds = %23
  br label %52

46:                                               ; preds = %2
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %20, %46, %45
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.usbdevfs_ioctl*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
