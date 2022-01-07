; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_handle_setup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_handle_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"bRequestType = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bRequest     = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"wValue       = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"wIndex       = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"wLength      = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ctrlrequest*)* @handle_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_setup(%struct.usb_ctrlrequest* %0) #0 {
  %2 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usb_ctrlrequest* %0, %struct.usb_ctrlrequest** %2, align 8
  %3 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
