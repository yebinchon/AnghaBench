; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_sysfs_utils.c_write_sysfs_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_sysfs_utils.c_write_sysfs_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error opening attribute %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error writing to attribute %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_sysfs_attribute(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = call i32 @open(i8* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @write(i32 %19, i8* %20, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @close(i32 %28)
  store i32 -1, i32* %4, align 4
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @close(i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %25, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
