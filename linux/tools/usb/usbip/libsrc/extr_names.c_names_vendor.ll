; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vendor = type { i64, i8*, %struct.vendor* }

@vendors = common dso_local global %struct.vendor** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @names_vendor(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vendor*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.vendor**, %struct.vendor*** @vendors, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @hashnum(i64 %6)
  %8 = getelementptr inbounds %struct.vendor*, %struct.vendor** %5, i64 %7
  %9 = load %struct.vendor*, %struct.vendor** %8, align 8
  store %struct.vendor* %9, %struct.vendor** %4, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load %struct.vendor*, %struct.vendor** %4, align 8
  %12 = icmp ne %struct.vendor* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.vendor*, %struct.vendor** %4, align 8
  %15 = getelementptr inbounds %struct.vendor, %struct.vendor* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.vendor*, %struct.vendor** %4, align 8
  %21 = getelementptr inbounds %struct.vendor, %struct.vendor* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %29

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.vendor*, %struct.vendor** %4, align 8
  %26 = getelementptr inbounds %struct.vendor, %struct.vendor* %25, i32 0, i32 2
  %27 = load %struct.vendor*, %struct.vendor** %26, align 8
  store %struct.vendor* %27, %struct.vendor** %4, align 8
  br label %10

28:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i64 @hashnum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
