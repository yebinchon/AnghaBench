; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_network.c_usbip_setup_port_number.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_network.c_usbip_setup_port_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"parsing port arg '%s'\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"port: could not parse '%s' as a decimal integer\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"port: garbage at end of '%s'\00", align 1
@UINT16_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"port: %s too high (max=%d)\00", align 1
@usbip_port = common dso_local global i64 0, align 8
@usbip_port_string = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"using port %d (\22%s\22)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_setup_port_number(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strtoul(i8* %7, i8** %3, i32 10)
  store i64 %8, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %37

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %37

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @UINT16_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = load i64, i64* @UINT16_MAX, align 8
  %30 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %28, i64 %29)
  br label %37

31:                                               ; preds = %23
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* @usbip_port, align 8
  %33 = load i8*, i8** %2, align 8
  store i8* %33, i8** @usbip_port_string, align 8
  %34 = load i64, i64* @usbip_port, align 8
  %35 = load i8*, i8** @usbip_port_string, align 8
  %36 = call i32 @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %34, i8* %35)
  br label %37

37:                                               ; preds = %31, %27, %20, %12
  ret void
}

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @err(i8*, i8*, ...) #1

declare dso_local i32 @info(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
