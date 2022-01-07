; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_Scroll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_Scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@GWLP_ID = common dso_local global i32 0, align 4
@PGN_SCROLL = common dso_local global i32 0, align 4
@PGS_HORZ = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[%p] PGN_SCROLL returns iScroll=%d\0A\00", align 1
@PGF_SCROLLLEFT = common dso_local global i64 0, align 8
@PGF_SCROLLUP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64)* @PAGER_Scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PAGER_Scroll(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %135

11:                                               ; preds = %2
  %12 = call i32 @ZeroMemory(%struct.TYPE_12__* %5, i32 56)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GWLP_ID, align 4
  %22 = call i32 @GetWindowLongPtrW(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @PGN_SCROLL, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @GetWindowRect(i32 %30, %struct.TYPE_10__* %6)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  %36 = call i32 @GetClientRect(i32 %34, i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PGS_HORZ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %11
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  br label %69

58:                                               ; preds = %11
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i64 %63, i64* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %58, %47
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 2, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WM_NOTIFY, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ptrtoint %struct.TYPE_12__* %5 to i32
  %86 = call i32 @SendMessageW(i32 %80, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %89, i64 %91)
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %69
  %97 = load i64, i64* %4, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @PGF_SCROLLLEFT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @PGF_SCROLLUP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104, %96
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %112, %114
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i32 @PAGER_SetPos(%struct.TYPE_11__* %109, i64 %115, i32 %116, i32 %117)
  br label %130

119:                                              ; preds = %104
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %123, %125
  %127 = load i32, i32* @TRUE, align 4
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i32 @PAGER_SetPos(%struct.TYPE_11__* %120, i64 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %119, %108
  br label %134

131:                                              ; preds = %69
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  store i32 -1, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %130
  br label %135

135:                                              ; preds = %134, %2
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @PAGER_SetPos(%struct.TYPE_11__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
