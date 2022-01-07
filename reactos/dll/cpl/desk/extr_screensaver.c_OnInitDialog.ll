; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_screensaver.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_screensaver.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@IDC_SCREENS_LIST = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DWLP_USER = common dso_local global i32 0, align 4
@IDC_SCREENS_TIME = common dso_local global i32 0, align 4
@UDM_SETRANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SCRNSAVE.EXE\00", align 1
@MAX_SCREENSAVERS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CB_FINDSTRINGEXACT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@CB_SETCURSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ScreenSaveTimeOut\00", align 1
@UDM_SETPOS32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_8__*)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OnInitDialog(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IDC_SCREENS_LIST, align 4
  %14 = call i32 @GetDlgItem(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %17 = call %struct.TYPE_8__* @HeapAlloc(i32 %15, i32 %16, i32 4)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @EndDialog(i32 %21, i32 -1)
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %3, align 8
  br label %128

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DWLP_USER, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = ptrtoint %struct.TYPE_8__* %27 to i32
  %29 = call i32 @SetWindowLongPtr(i32 %25, i32 %26, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IDC_SCREENS_TIME, align 4
  %34 = load i32, i32* @UDM_SETRANGE, align 4
  %35 = call i32 @MAKELONG(i16 signext 240, i16 signext 1)
  %36 = call i32 @SendDlgItemMessage(i32 %32, i32 %33, i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = call i32 @AddScreenSavers(i32 %37, %struct.TYPE_8__* %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @CheckRegScreenSaverIsSecure(i32 %40)
  %42 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = call i64 @GetCurrentScreenSaverValue(i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %24
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %66, %46
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @MAX_SCREENSAVERS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @_tcscmp(i64 %53, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %9, align 8
  br label %69

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %48

69:                                               ; preds = %63, %48
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CB_FINDSTRINGEXACT, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @SendMessage(i32 %73, i32 %74, i64 -1, i32 %82)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @CB_ERR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @CB_SETCURSEL, align 4
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @SendMessage(i32 %88, i32 %89, i64 %90, i32 0)
  br label %92

92:                                               ; preds = %87, %72
  br label %97

93:                                               ; preds = %69
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @CB_SETCURSEL, align 4
  %96 = call i64 @SendMessage(i32 %94, i32 %95, i64 0, i32 0)
  br label %97

97:                                               ; preds = %93, %92
  %98 = call i32 (...) @GetProcessHeap()
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @HeapFree(i32 %98, i32 0, i64 %99)
  br label %105

101:                                              ; preds = %24
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CB_SETCURSEL, align 4
  %104 = call i64 @SendMessage(i32 %102, i32 %103, i64 0, i32 0)
  br label %105

105:                                              ; preds = %101, %97
  %106 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %107 = call i64 @GetCurrentScreenSaverValue(i32 %106)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @_ttoi(i64 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sdiv i32 %113, 60
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @IDC_SCREENS_TIME, align 4
  %117 = load i32, i32* @UDM_SETPOS32, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @SendDlgItemMessage(i32 %115, i32 %116, i32 %117, i32 0, i32 %118)
  %120 = call i32 (...) @GetProcessHeap()
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @HeapFree(i32 %120, i32 0, i64 %121)
  br label %123

123:                                              ; preds = %110, %105
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = call i32 @SelectionChanged(i32 %124, %struct.TYPE_8__* %125)
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %123, %20
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i16 signext, i16 signext) #1

declare dso_local i32 @AddScreenSavers(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CheckRegScreenSaverIsSecure(i32) #1

declare dso_local i64 @GetCurrentScreenSaverValue(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @_tcscmp(i64, i32) #1

declare dso_local i64 @SendMessage(i32, i32, i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i32 @_ttoi(i64) #1

declare dso_local i32 @SelectionChanged(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
