; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/usbreset/src/extr_usbreset.c_list_devices.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/usbreset/src/extr_usbreset.c_list_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbentry = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"/sys/bus/usb/devices\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"  Number %03d/%03d  ID %04x:%04x  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_devices() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.usbentry*, align 8
  %3 = call i32* @opendir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %32

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %12, %7
  %9 = load i32*, i32** %1, align 8
  %10 = call %struct.usbentry* @parse_devlist(i32* %9)
  store %struct.usbentry* %10, %struct.usbentry** %2, align 8
  %11 = icmp ne %struct.usbentry* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %14 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %17 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %20 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %23 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usbentry*, %struct.usbentry** %2, align 8
  %26 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i8* %27)
  br label %8

29:                                               ; preds = %8
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @closedir(i32* %30)
  br label %32

32:                                               ; preds = %29, %6
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.usbentry* @parse_devlist(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
