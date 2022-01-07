; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SetServiceStatusText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_general.c_SetServiceStatusText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@SERVICE_RUNNING = common dso_local global i64 0, align 8
@IDS_SERVICES_STARTED = common dso_local global i32 0, align 4
@IDS_SERVICES_STOPPED = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDC_SERV_STATUS = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @SetServiceStatusText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetServiceStatusText(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SERVICE_RUNNING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IDS_SERVICES_STARTED, align 4
  store i32 %17, i32* %7, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IDS_SERVICES_STOPPED, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* @hInstance, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @AllocAndLoadString(i64* %6, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IDC_SERV_STATUS, align 4
  %28 = load i32, i32* @WM_SETTEXT, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @SendDlgItemMessageW(i32 %26, i32 %27, i32 %28, i32 0, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @LocalFree(i64 %32)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @AllocAndLoadString(i64*, i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
