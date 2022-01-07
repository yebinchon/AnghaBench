; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_iterator_visibleitems.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_iterator_visibleitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }

@NULLREGION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"building visible range:\0A\00", align 1
@LV_VIEW_DETAILS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)* @iterator_visibleitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterator_visibleitems(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @GetClipBox(i32 %13, %struct.TYPE_21__* %11)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @NULLREGION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = call i32 @iterator_empty(%struct.TYPE_24__* %19)
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %4, align 4
  br label %163

22:                                               ; preds = %3
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = call i32 @iterator_frameditems(%struct.TYPE_24__* %23, %struct.TYPE_23__* %24, %struct.TYPE_21__* %11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %163

29:                                               ; preds = %22
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @SIMPLEREGION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %4, align 4
  br label %163

35:                                               ; preds = %29
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @LISTVIEW_GetItemBox(%struct.TYPE_23__* %41, i32 %44, %struct.TYPE_21__* %10)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @RectVisible(i32 %46, %struct.TYPE_21__* %10)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %40
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = call i32 @LISTVIEW_GetOrigin(%struct.TYPE_23__* %54, %struct.TYPE_22__* %8)
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %100, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %61
  %72 = call i64 @ranges_create(i32 50)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = icmp ne i64 %72, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %4, align 4
  br label %163

78:                                               ; preds = %71
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 3
  %84 = bitcast %struct.TYPE_25__* %83 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ranges_add(i64 %81, i64 %86, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %78
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @ranges_destroy(i64 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %4, align 4
  br label %163

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %61, %53
  br label %101

101:                                              ; preds = %159, %100
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = call i64 @iterator_next(%struct.TYPE_24__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %160

105:                                              ; preds = %101
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @LISTVIEW_GetItemOrigin(%struct.TYPE_23__* %106, i32 %109, %struct.TYPE_22__* %9)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LV_VIEW_DETAILS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  br label %125

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %121, %123
  br label %125

125:                                              ; preds = %119, %116
  %126 = phi i64 [ %118, %116 ], [ %124, %119 ]
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %129, %131
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i64 %139, i64* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i64 %146, i64* %147, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @RectVisible(i32 %148, %struct.TYPE_21__* %10)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %125
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ranges_delitem(i64 %154, i32 %157)
  br label %159

159:                                              ; preds = %151, %125
  br label %101

160:                                              ; preds = %101
  %161 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %91, %76, %33, %27, %18
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @GetClipBox(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @iterator_empty(%struct.TYPE_24__*) #1

declare dso_local i32 @iterator_frameditems(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LISTVIEW_GetItemBox(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @RectVisible(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @LISTVIEW_GetOrigin(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @ranges_create(i32) #1

declare dso_local i32 @ranges_add(i64, i64, i64) #1

declare dso_local i32 @ranges_destroy(i64) #1

declare dso_local i64 @iterator_next(%struct.TYPE_24__*) #1

declare dso_local i32 @LISTVIEW_GetItemOrigin(%struct.TYPE_23__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ranges_delitem(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
