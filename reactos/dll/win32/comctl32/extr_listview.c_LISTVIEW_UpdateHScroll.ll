; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_UpdateHScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_UpdateHScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@LV_VIEW_LIST = common dso_local global i64 0, align 8
@LV_VIEW_DETAILS = common dso_local global i64 0, align 8
@HDM_ORDERTOINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"horzInfo.nMax=%d\0A\00", align 1
@SIF_RANGE = common dso_local global i32 0, align 4
@SIF_PAGE = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"horzInfo=%s\0A\00", align 1
@SIF_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @LISTVIEW_UpdateHScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTVIEW_UpdateHScroll(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_19__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = call i32 @ZeroMemory(%struct.TYPE_19__* %3, i32 20)
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  store i32 20, i32* %10, align 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LV_VIEW_LIST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = call i32 @LISTVIEW_GetCountPerColumn(%struct.TYPE_21__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %26
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %26
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %49
  br label %86

62:                                               ; preds = %1
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LV_VIEW_DETAILS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  br label %85

73:                                               ; preds = %62
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %75 = call i64 @LISTVIEW_GetViewRect(%struct.TYPE_21__* %74, %struct.TYPE_20__* %6)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %73
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %61
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %88 = call i64 @LISTVIEW_IsHeaderEnabled(%struct.TYPE_21__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @DPA_GetPtrCount(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @HDM_ORDERTOINDEX, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @DPA_GetPtrCount(i32 %103)
  %105 = sub nsw i64 %104, 1
  %106 = call i32 @SendMessageW(i64 %99, i32 %100, i64 %105, i32 0)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @LISTVIEW_GetHeaderRect(%struct.TYPE_21__* %107, i32 %108, %struct.TYPE_20__* %7)
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %96, %90
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i32, i32* @SIF_RANGE, align 4
  %119 = load i32, i32* @SIF_PAGE, align 4
  %120 = or i32 %118, %119
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @max(i32 %124, i32 0)
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SB_HORZ, align 4
  %131 = call i32 @GetScrollPos(i32 %129, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SB_HORZ, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i64 @SetScrollInfo(i32 %134, i32 %135, %struct.TYPE_19__* %3, i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %4, align 4
  %142 = call i32 @debugscrollinfo(%struct.TYPE_19__* %3)
  %143 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %117
  %149 = load i32, i32* @SIF_POS, align 4
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 3
  store i32 %149, i32* %150, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SB_HORZ, align 4
  %155 = call i32 @GetScrollInfo(i32 %153, i32 %154, %struct.TYPE_19__* %3)
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @LISTVIEW_UpdateHeaderSize(%struct.TYPE_21__* %156, i32 %158)
  br label %160

160:                                              ; preds = %148, %117
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %162 = call i32 @LISTVIEW_UpdateSize(%struct.TYPE_21__* %161)
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @LISTVIEW_GetCountPerColumn(%struct.TYPE_21__*) #1

declare dso_local i64 @LISTVIEW_GetViewRect(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @LISTVIEW_IsHeaderEnabled(%struct.TYPE_21__*) #1

declare dso_local i64 @DPA_GetPtrCount(i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i64, i32) #1

declare dso_local i32 @LISTVIEW_GetHeaderRect(%struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @GetScrollPos(i32, i32) #1

declare dso_local i64 @SetScrollInfo(i32, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @debugscrollinfo(%struct.TYPE_19__*) #1

declare dso_local i32 @GetScrollInfo(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @LISTVIEW_UpdateHeaderSize(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @LISTVIEW_UpdateSize(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
