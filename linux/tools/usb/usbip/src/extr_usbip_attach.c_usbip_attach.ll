; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_attach.c_usbip_attach.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_attach.c_usbip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@usbip_attach.opts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 100 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"busid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"d:r:b:\00", align 1
@optarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_attach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @getopt_long(i32 %10, i8** %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @usbip_attach.opts, i64 0, i64 0), i32* null)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %24

16:                                               ; preds = %9
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %22 [
    i32 114, label %18
    i32 100, label %20
    i32 98, label %20
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** %5, align 8
  br label %23

20:                                               ; preds = %16, %16
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** %6, align 8
  br label %23

22:                                               ; preds = %16
  br label %35

23:                                               ; preds = %20, %18
  br label %9

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24
  br label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @attach_device(i8* %32, i8* %33)
  store i32 %34, i32* %8, align 4
  br label %37

35:                                               ; preds = %30, %22
  %36 = call i32 (...) @usbip_attach_usage()
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @attach_device(i8*, i8*) #1

declare dso_local i32 @usbip_attach_usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
