; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBGetTextAreaHeight.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBGetTextAreaHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i8*, i8*, i32, i32, i64 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i32, i8*, i64, i32, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@CBF_MEASUREITEM = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODT_COMBOBOX = common dso_local global i8* null, align 8
@WM_MEASUREITEM = common dso_local global i32 0, align 4
@CBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_12__*)* @CBGetTextAreaHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CBGetTextAreaHeight(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  br label %52

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @GetDC(i32 %23)
  store i32 %24, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @SelectObject(i32 %30, i64 %33)
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @GetTextMetricsW(i32 %36, %struct.TYPE_9__* %6)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @SelectObject(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ReleaseDC(i32 %47, i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr i8, i8* %50, i64 4
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %46, %18
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = call i64 @CB_OWNERDRAWN(%struct.TYPE_12__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %135

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CBF_MEASUREITEM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %56
  %64 = load i8*, i8** %5, align 8
  store i8* %64, i8** %12, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GWLP_ID, align 4
  %69 = call i32 @GetWindowLongPtrW(i32 %67, i32 %68)
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %13, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @GetClientRect(i32 %72, %struct.TYPE_10__* %11)
  %74 = load i32, i32* @CBF_MEASUREITEM, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i8*, i8** @ODT_COMBOBOX, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr i8, i8* %88, i64 -6
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @WM_MEASUREITEM, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = ptrtoint %struct.TYPE_11__* %10 to i32
  %98 = call i32 @SendMessageW(i32 %94, i32 %95, i8* %96, i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr i8, i8* %100, i64 6
  store i8* %101, i8** %5, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CBS_OWNERDRAWFIXED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %63
  %109 = load i8*, i8** @ODT_COMBOBOX, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %115, i32* %116, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @WM_MEASUREITEM, align 4
  %124 = load i8*, i8** %13, align 8
  %125 = ptrtoint %struct.TYPE_11__* %10 to i32
  %126 = call i32 @SendMessageW(i32 %122, i32 %123, i8* %124, i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %108, %63
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %56, %52
  %136 = load i8*, i8** %5, align 8
  ret i8* %136
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GetTextMetricsW(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i64 @CB_OWNERDRAWN(%struct.TYPE_12__*) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
