; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_ShowFocusRect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_ShowFocusRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"fShow=%d, nItem=%d\0A\00", align 1
@LV_VIEW_ICON = common dso_local global i64 0, align 8
@LVS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@LV_VIEW_DETAILS = common dso_local global i64 0, align 8
@LVIF_PARAM = common dso_local global i32 0, align 4
@ODT_LISTVIEW = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODA_FOCUS = common dso_local global i32 0, align 4
@ODS_FOCUS = common dso_local global i32 0, align 4
@WM_DRAWITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64)* @LISTVIEW_ShowFocusRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTVIEW_ShowFocusRect(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %156

21:                                               ; preds = %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LV_VIEW_ICON, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @LISTVIEW_GetItemBox(%struct.TYPE_16__* %28, i64 %31, %struct.TYPE_14__* %6)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = call i32 @LISTVIEW_InvalidateRect(%struct.TYPE_16__* %43, %struct.TYPE_14__* %6)
  br label %156

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GetDC(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %156

53:                                               ; preds = %46
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @LVS_OWNERDRAWFIXED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %53
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LV_VIEW_DETAILS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %143

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i64 [ %74, %71 ], [ %78, %75 ]
  store i64 %80, i64* %9, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @SelectObject(i32 %81, i64 %82)
  store i64 %83, i64* %10, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @LVIF_PARAM, align 4
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = call i32 @LISTVIEW_GetItemW(%struct.TYPE_16__* %91, %struct.TYPE_15__* %8)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %79
  br label %150

95:                                               ; preds = %79
  %96 = call i32 @ZeroMemory(%struct.TYPE_17__* %7, i32 64)
  %97 = load i32, i32* @ODT_LISTVIEW, align 4
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 8
  store i32 %97, i32* %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GWLP_ID, align 4
  %103 = call i64 @GetWindowLongPtrW(i32 %101, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i64 %103, i64* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load i32, i32* @ODA_FOCUS, align 4
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 7
  store i32 %108, i32* %109, align 4
  %110 = load i64, i64* %4, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %95
  %113 = load i32, i32* @ODS_FOCUS, align 4
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %112, %95
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 5
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  store i32 %122, i32* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %128 = call i32 @LISTVIEW_GetItemBox(%struct.TYPE_16__* %124, i64 %126, %struct.TYPE_14__* %127)
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %130, i32* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @WM_DRAWITEM, align 4
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = ptrtoint %struct.TYPE_17__* %7 to i32
  %139 = call i32 @SendMessageW(i32 %134, i32 %135, i64 %137, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load i64, i64* %10, align 8
  %142 = call i64 @SelectObject(i32 %140, i64 %141)
  br label %149

143:                                              ; preds = %60, %53
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @LISTVIEW_InvalidateItem(%struct.TYPE_16__* %144, i64 %147)
  br label %149

149:                                              ; preds = %143, %117
  br label %150

150:                                              ; preds = %149, %94
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @ReleaseDC(i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %52, %42, %20
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @LISTVIEW_GetItemBox(%struct.TYPE_16__*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @LISTVIEW_InvalidateRect(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @LISTVIEW_GetItemW(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i32 @LISTVIEW_InvalidateItem(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
