; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_RButtonUp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_RButtonUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i16, i16 }

@COMCTL32_hModule = common dso_local global i32 0, align 4
@IDM_GOTODAY = common dso_local global i32 0, align 4
@MF_STRING = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@TPM_RIGHTBUTTON = common dso_local global i32 0, align 4
@TPM_NONOTIFY = common dso_local global i32 0, align 4
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@MCS_MULTISELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @MONTHCAL_RButtonUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_RButtonUp(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 2
  %7 = alloca [32 x i32], align 16
  %8 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @CreatePopupMenu()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @COMCTL32_hModule, align 4
  %11 = load i32, i32* @IDM_GOTODAY, align 4
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @LoadStringW(i32 %10, i32 %11, i32* %12, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MF_STRING, align 4
  %18 = load i32, i32* @MF_ENABLED, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %21 = call i32 @AppendMenuW(i32 %16, i32 %19, i32 1, i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @LOWORD(i32 %22)
  %24 = trunc i64 %23 to i16
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @HIWORD(i32 %26)
  %28 = trunc i64 %27 to i16
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ClientToScreen(i32 %32, %struct.TYPE_9__* %6)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TPM_RIGHTBUTTON, align 4
  %36 = load i32, i32* @TPM_NONOTIFY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TPM_RETURNCMD, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %41 = load i16, i16* %40, align 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %43 = load i16, i16* %42, align 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @TrackPopupMenu(i32 %34, i32 %39, i16 signext %41, i16 signext %43, i32 0, i32 %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MCS_MULTISELECT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %64 = call i32 @MONTHCAL_SetSelRange(%struct.TYPE_10__* %62, i32* %63)
  br label %70

65:                                               ; preds = %49
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = call i32 @MONTHCAL_SetCurSel(%struct.TYPE_10__* %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %56
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call i32 @MONTHCAL_NotifySelectionChange(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = call i32 @MONTHCAL_NotifySelect(%struct.TYPE_10__* %73)
  br label %75

75:                                               ; preds = %70, %2
  ret i32 0
}

declare dso_local i32 @CreatePopupMenu(...) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @AppendMenuW(i32, i32, i32, i32*) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @TrackPopupMenu(i32, i32, i16 signext, i16 signext, i32, i32, i32*) #1

declare dso_local i32 @MONTHCAL_SetSelRange(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @MONTHCAL_SetCurSel(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @MONTHCAL_NotifySelectionChange(%struct.TYPE_10__*) #1

declare dso_local i32 @MONTHCAL_NotifySelect(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
