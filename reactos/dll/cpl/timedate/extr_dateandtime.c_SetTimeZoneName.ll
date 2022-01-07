; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_SetTimeZoneName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_SetTimeZoneName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hApplet = common dso_local global i32 0, align 4
@IDS_TIMEZONETEXT = common dso_local global i32 0, align 4
@IDS_TIMEZONEINVALID = common dso_local global i32 0, align 4
@IDC_TIMEZONE = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SetTimeZoneName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetTimeZoneName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca [128 x i32], align 16
  %6 = alloca [128 x i32], align 16
  %7 = alloca [128 x i32], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32 @GetTimeZoneInformation(%struct.TYPE_3__* %4)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @hApplet, align 4
  %11 = load i32, i32* @IDS_TIMEZONETEXT, align 4
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %13 = call i32 @LoadStringW(i32 %10, i32 %11, i32* %12, i32 128)
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %26 [
    i32 129, label %15
    i32 128, label %15
    i32 131, label %20
    i32 130, label %25
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wcscpy(i32* %16, i32 %18)
  br label %31

20:                                               ; preds = %1
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wcscpy(i32* %21, i32 %23)
  br label %31

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %1, %25
  %27 = load i32, i32* @hApplet, align 4
  %28 = load i32, i32* @IDS_TIMEZONEINVALID, align 4
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %30 = call i32 @LoadStringW(i32 %27, i32 %28, i32* %29, i32 128)
  br label %31

31:                                               ; preds = %26, %20, %15
  %32 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %34 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %35 = call i32 @wsprintfW(i32* %32, i32* %33, i32* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @IDC_TIMEZONE, align 4
  %38 = load i32, i32* @WM_SETTEXT, align 4
  %39 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @SendDlgItemMessageW(i32 %36, i32 %37, i32 %38, i32 0, i32 %40)
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @GetTimeZoneInformation(%struct.TYPE_3__*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @wcscpy(i32*, i32) #1

declare dso_local i32 @wsprintfW(i32*, i32*, i32*) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
