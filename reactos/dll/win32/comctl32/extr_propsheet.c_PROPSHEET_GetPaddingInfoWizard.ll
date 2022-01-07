; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_GetPaddingInfoWizard.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_GetPaddingInfoWizard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IDHELP = common dso_local global i32 0, align 4
@INTRNL_ANY_WIZARD = common dso_local global i32 0, align 4
@IDC_NEXT_BUTTON = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@IDC_SUNKEN_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"padding negative ! Please report this !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32, %struct.TYPE_12__*)* @PROPSHEET_GetPaddingInfoWizard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @PROPSHEET_GetPaddingInfoWizard(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IDHELP, align 4
  store i32 %17, i32* %8, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @INTRNL_ANY_WIZARD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @IDC_NEXT_BUTTON, align 4
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @IDCANCEL, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @GetDlgItem(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @GetWindowRect(i32 %35, %struct.TYPE_11__* %6)
  %37 = load i32, i32* %4, align 4
  %38 = bitcast %struct.TYPE_11__* %6 to %struct.TYPE_13__*
  %39 = call i32 @MapWindowPoints(i32 0, i32 %37, %struct.TYPE_13__* %38, i32 2)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IDC_SUNKEN_LINE, align 4
  %48 = call i32 @GetDlgItem(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @GetWindowRect(i32 %49, %struct.TYPE_11__* %6)
  %51 = load i32, i32* %4, align 4
  %52 = bitcast %struct.TYPE_11__* %6 to %struct.TYPE_13__*
  %53 = call i32 @MapWindowPoints(i32 0, i32 %51, %struct.TYPE_13__* %52, i32 2)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %31
  %70 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %31
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  %75 = bitcast %struct.TYPE_14__* %3 to { i64, i64 }*
  %76 = load { i64, i64 }, { i64, i64 }* %75, align 8
  ret { i64, i64 } %76
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @MapWindowPoints(i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
