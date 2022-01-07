; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SetStartupType.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SetStartupType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IDC_START_TYPE = common dso_local global i32 0, align 4
@IDS_SERVICES_AUTO = common dso_local global i64 0, align 8
@IDS_SERVICES_DIS = common dso_local global i64 0, align 8
@hInstance = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@ProcessHeap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @SetStartupType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetStartupType(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IDC_START_TYPE, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @IDS_SERVICES_AUTO, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @IDS_SERVICES_DIS, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32, i32* @hInstance, align 4
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @AllocAndLoadString(i64* %8, i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CB_ADDSTRING, align 4
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @SendMessageW(i32 %25, i32 %26, i32 0, i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @LocalFree(i64 %30)
  br label %32

32:                                               ; preds = %24, %19
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* %4, align 8
  %38 = call %struct.TYPE_4__* @GetServiceConfig(i64 %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %7, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %48 [
    i32 130, label %45
    i32 129, label %46
    i32 128, label %47
  ]

45:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %48

46:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %48

47:                                               ; preds = %41
  store i32 2, i32* %9, align 4
  br label %48

48:                                               ; preds = %41, %47, %46, %45
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CB_SETCURSEL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @SendMessageW(i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load i32, i32* @ProcessHeap, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, %struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %48, %36
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @AllocAndLoadString(i64*, i32, i64) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local %struct.TYPE_4__* @GetServiceConfig(i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
