; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_list.c_usbip_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_list.c_usbip_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@usbip_list.opts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8 -127, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 -127, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 100 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"parsable\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@USBIDS_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pr:ld\00", align 1
@optarg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_list(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* @USBIDS_FILE, align 4
  %9 = call i64 @usbip_names_init(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @USBIDS_FILE, align 4
  %13 = call i32 @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = call i32 @getopt_long(i32 %16, i8** %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @usbip_list.opts, i64 0, i64 0), i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %34 [
    i32 112, label %24
    i32 114, label %25
    i32 108, label %28
    i32 100, label %31
  ]

24:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %35

25:                                               ; preds = %22
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @list_exported_devices(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %39

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @list_devices(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @list_gadget_devices(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %39

34:                                               ; preds = %22
  br label %37

35:                                               ; preds = %24
  br label %15

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %34
  %38 = call i32 (...) @usbip_list_usage()
  br label %39

39:                                               ; preds = %37, %31, %28, %25
  %40 = call i32 (...) @usbip_names_free()
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @usbip_names_init(i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @list_exported_devices(i32) #1

declare dso_local i32 @list_devices(i32) #1

declare dso_local i32 @list_gadget_devices(i32) #1

declare dso_local i32 @usbip_list_usage(...) #1

declare dso_local i32 @usbip_names_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
