; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_fetch_ram.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_fetch_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@udd_ctrl_buffer = common dso_local global i8** null, align 8
@udd_g_ctrlreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udd_ctrl_fetch_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ctrl_fetch_ram() #0 {
  %1 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %2 = getelementptr inbounds i8*, i8** %1, i64 0
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 4), align 8
  %4 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %5 = getelementptr inbounds i8*, i8** %4, i64 1
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 3), align 8
  %7 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 3
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = shl i32 %10, 8
  %12 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 2
  %14 = load i8*, i8** %13, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 2), align 8
  %17 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 5
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 4
  %24 = load i8*, i8** %23, align 8
  %25 = sext i32 %21 to i64
  %26 = getelementptr i8, i8* %24, i64 %25
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 1), align 8
  %27 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 7
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = shl i32 %30, 8
  %32 = load i8**, i8*** @udd_ctrl_buffer, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 6
  %34 = load i8*, i8** %33, align 8
  %35 = sext i32 %31 to i64
  %36 = getelementptr i8, i8* %34, i64 %35
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
