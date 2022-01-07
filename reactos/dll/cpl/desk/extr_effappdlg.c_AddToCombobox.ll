; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_effappdlg.c_AddToCombobox.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_effappdlg.c_AddToCombobox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hApplet = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i64)* @AddToCombobox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddToCombobox(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [80 x i32], align 16
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %31, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32, i32* @hApplet, align 4
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %21 = ptrtoint i32* %20 to i32
  %22 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %23 = call i32 @ARRAYSIZE(i32* %22)
  %24 = call i32 @LoadString(i32 %18, i64 %19, i32 %21, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @CB_ADDSTRING, align 4
  %28 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 0
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @SendDlgItemMessage(i32 %25, i64 %26, i32 %27, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @LoadString(i32, i64, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @SendDlgItemMessage(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
