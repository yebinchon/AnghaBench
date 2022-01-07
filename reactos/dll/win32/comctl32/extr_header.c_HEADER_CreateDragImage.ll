; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_CreateDragImage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_CreateDragImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@SYSTEM_FONT = common dso_local global i32 0, align 4
@CDDS_PREPAINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CDRF_NOTIFYPOSTPAINT = common dso_local global i32 0, align 4
@CDDS_POSTPAINT = common dso_local global i32 0, align 4
@ILC_COLORDDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i64)* @HEADER_CreateDragImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @HEADER_CreateDragImage(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %138

23:                                               ; preds = %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @HEADER_SetItemBounds(%struct.TYPE_10__* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %35
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %40, %44
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %49, %53
  store i32 %54, i32* %14, align 4
  %55 = call i32 @GetDC(i32* null)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @CreateCompatibleDC(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32* @CreateCompatibleBitmap(i32 %58, i32 %59, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ReleaseDC(i32* null, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @SelectObject(i32 %64, i32* %65)
  store i32* %66, i32** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32 @SetViewportOrgEx(i32 %67, i32 %72, i32 %77, i32* null)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %31
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  br label %90

87:                                               ; preds = %31
  %88 = load i32, i32* @SYSTEM_FONT, align 4
  %89 = call i32* @GetStockObject(i32 %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32* [ %86, %83 ], [ %89, %87 ]
  store i32* %91, i32** %16, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = call i32* @SelectObject(i32 %92, i32* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @GetClientRect(i32 %97, i32* %11)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = load i32, i32* @CDDS_PREPAINT, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @HEADER_SendCtrlCustomDraw(%struct.TYPE_10__* %99, i32 %100, i32 %101, i32* %11)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @HEADER_DrawItem(%struct.TYPE_10__* %103, i32 %104, i64 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @CDRF_NOTIFYPOSTPAINT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %90
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = load i32, i32* @CDDS_POSTPAINT, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @HEADER_SendCtrlCustomDraw(%struct.TYPE_10__* %114, i32 %115, i32 %116, i32* %11)
  br label %118

118:                                              ; preds = %113, %90
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = call i32* @SelectObject(i32 %119, i32* %120)
  store i32* %121, i32** %8, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @DeleteDC(i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i32* null, i32** %3, align 8
  br label %138

127:                                              ; preds = %118
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @ILC_COLORDDB, align 4
  %131 = call i32* @ImageList_Create(i32 %128, i32 %129, i32 %130, i32 1, i32 1)
  store i32* %131, i32** %7, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @ImageList_Add(i32* %132, i32* %133, i32* null)
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @DeleteObject(i32* %135)
  %137 = load i32*, i32** %7, align 8
  store i32* %137, i32** %3, align 8
  br label %138

138:                                              ; preds = %127, %126, %22
  %139 = load i32*, i32** %3, align 8
  ret i32* %139
}

declare dso_local i32 @HEADER_SetItemBounds(%struct.TYPE_10__*) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32* @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32 @SetViewportOrgEx(i32, i32, i32, i32*) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @HEADER_SendCtrlCustomDraw(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @HEADER_DrawItem(%struct.TYPE_10__*, i32, i64, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32* @ImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ImageList_Add(i32*, i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
