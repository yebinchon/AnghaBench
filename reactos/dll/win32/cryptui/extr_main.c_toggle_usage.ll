; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_toggle_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_toggle_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@IDC_CERTIFICATE_USAGES = common dso_local global i32 0, align 4
@LVIF_STATE = common dso_local global i32 0, align 4
@LVIS_STATEIMAGEMASK = common dso_local global i32 0, align 4
@LVM_GETITEMW = common dso_local global i32 0, align 4
@CheckBitmapIndexChecked = common dso_local global i32 0, align 4
@CheckBitmapIndexUnchecked = common dso_local global i32 0, align 4
@LVM_SETITEMSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @toggle_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_usage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IDC_CERTIFICATE_USAGES, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @LVIF_STATE, align 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @LVIS_STATEIMAGEMASK, align 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LVM_GETITEMW, align 4
  %21 = ptrtoint %struct.TYPE_2__* %5 to i32
  %22 = call i32 @SendMessageW(i32 %19, i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 12
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @CheckBitmapIndexChecked, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @CheckBitmapIndexUnchecked, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @CheckBitmapIndexChecked, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @INDEXTOSTATEIMAGEMASK(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LVM_SETITEMSTATE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ptrtoint %struct.TYPE_2__* %5 to i32
  %44 = call i32 @SendMessageW(i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @INDEXTOSTATEIMAGEMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
