; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_SetLocalSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_SetLocalSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_TIMEPICKER = common dso_local global i32 0, align 4
@GDT_VALID = common dso_local global i64 0, align 8
@IDC_MONTHCALENDAR = common dso_local global i32 0, align 4
@MCCM_GETDATE = common dso_local global i32 0, align 4
@DWLP_MSGRESULT = common dso_local global i32 0, align 4
@PSNRET_NOERROR = common dso_local global i32 0, align 4
@MCCM_RESET = common dso_local global i32 0, align 4
@HWND_BROADCAST = common dso_local global i32 0, align 4
@WM_TIMECHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SetLocalSystemTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetLocalSystemTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IDC_TIMEPICKER, align 4
  %7 = call i32 @GetDlgItem(i32 %5, i32 %6)
  %8 = call i64 @DateTime_GetSystemtime(i32 %7, i32* %4)
  %9 = load i64, i64* @GDT_VALID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IDC_MONTHCALENDAR, align 4
  %14 = call i32 @GetDlgItem(i32 %12, i32 %13)
  %15 = load i32, i32* @MCCM_GETDATE, align 4
  %16 = ptrtoint i32* %4 to i32
  %17 = call i64 @SendMessageW(i32 %14, i32 %15, i32 %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = call i32 @SystemSetLocalTime(i32* %4)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DWLP_MSGRESULT, align 4
  %23 = load i32, i32* @PSNRET_NOERROR, align 4
  %24 = call i32 @SetWindowLongPtrW(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @IDC_MONTHCALENDAR, align 4
  %27 = call i32 @GetDlgItem(i32 %25, i32 %26)
  %28 = load i32, i32* @MCCM_RESET, align 4
  %29 = ptrtoint i32* %4 to i32
  %30 = call i64 @SendMessageW(i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @HWND_BROADCAST, align 4
  %32 = load i32, i32* @WM_TIMECHANGE, align 4
  %33 = call i64 @SendMessageW(i32 %31, i32 %32, i32 0, i32 0)
  br label %34

34:                                               ; preds = %19, %11, %1
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @DateTime_GetSystemtime(i32, i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SystemSetLocalTime(i32*) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
