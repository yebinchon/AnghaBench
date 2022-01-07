; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/netplwiz/extr_SHDisconnectNetDrives.c_UpdateButtonStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/netplwiz/extr_SHDisconnectNetDrives.c_UpdateButtonStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@IDC_CONNECTEDDRIVELIST = common dso_local global i32 0, align 4
@ID_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UpdateButtonStatus(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @IDC_CONNECTEDDRIVELIST, align 4
  %16 = call i64 @GetDlgItem(i64 %14, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @ID_OK, align 4
  %19 = call i64 @GetDlgItem(i64 %17, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %42 [
    i32 128, label %29
  ]

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @ListView_GetSelectedCount(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @EnableWindow(i64 %34, i32 %35)
  br label %41

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @EnableWindow(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %25, %41
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @ListView_GetSelectedCount(i64) #1

declare dso_local i32 @EnableWindow(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
