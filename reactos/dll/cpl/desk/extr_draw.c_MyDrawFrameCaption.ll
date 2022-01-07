; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameCaption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameCaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Marlett\00", align 1
@TRANSPARENT = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i64 0, align 8
@COLOR_BTNSHADOW = common dso_local global i64 0, align 8
@COLOR_BTNTEXT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_12__*)* @MyDrawFrameCaption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MyDrawFrameCaption(i32 %0, i32 %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  switch i32 %18, label %24 [
    i32 132, label %19
    i32 131, label %20
    i32 129, label %21
    i32 130, label %22
    i32 128, label %23
  ]

19:                                               ; preds = %4
  store i8 114, i8* %16, align 1
  br label %26

20:                                               ; preds = %4
  store i8 115, i8* %16, align 1
  br label %26

21:                                               ; preds = %4
  store i8 48, i8* %16, align 1
  br label %26

22:                                               ; preds = %4
  store i8 49, i8* %16, align 1
  br label %26

23:                                               ; preds = %4
  store i8 50, i8* %16, align 1
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %151

26:                                               ; preds = %23, %22, %21, %20, %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DFCS_PUSHED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EDGE_SUNKEN, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EDGE_RAISED, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32, i32* @BF_RECT, align 4
  %40 = load i32, i32* @BF_MIDDLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BF_SOFT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = call i32 @MyIntDrawRectEdge(i32 %27, i32 %28, i32 %38, i32 %43, %struct.TYPE_12__* %44)
  %46 = call i32 @ZeroMemory(%struct.TYPE_11__* %10, i32 32)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MyMakeSquareRect(i32 %47, %struct.TYPE_10__* %14)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @DFCS_PUSHED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %37
  %66 = call i32 @OffsetRect(%struct.TYPE_10__* %14, i32 1, i32 1)
  br label %67

67:                                               ; preds = %65, %37
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %69, %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @FW_NORMAL, align 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* @DEFAULT_CHARSET, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @lstrcpy(i32 %80, i32 %81)
  %83 = call i32 @CreateFontIndirect(%struct.TYPE_11__* %10)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @SelectObject(i32 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @GetTextColor(i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @GetBkMode(i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @TRANSPARENT, align 4
  %93 = call i32 @SetBkMode(i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @DFCS_INACTIVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %67
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @COLOR_BTNHIGHLIGHT, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SetTextColor(i32 %99, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  %114 = call i32 @TextOut(i32 %107, i64 %110, i64 %113, i8* %16, i32 1)
  br label %115

115:                                              ; preds = %98, %67
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @DFCS_INACTIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i64, i64* @COLOR_BTNSHADOW, align 8
  br label %128

126:                                              ; preds = %115
  %127 = load i64, i64* @COLOR_BTNTEXT, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  %130 = getelementptr inbounds i32, i32* %119, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @SetTextColor(i32 %116, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @TextOut(i32 %133, i64 %135, i64 %137, i8* %16, i32 1)
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @SetTextColor(i32 %139, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @SelectObject(i32 %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @SetBkMode(i32 %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @DeleteObject(i32 %148)
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %128, %24
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @MyIntDrawRectEdge(i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @MyMakeSquareRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @lstrcpy(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @CreateFontIndirect(%struct.TYPE_11__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @GetBkMode(i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @TextOut(i32, i64, i64, i8*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
