; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawFrameScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@DFCS_FLAT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Marlett\00", align 1
@TRANSPARENT = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i64 0, align 8
@COLOR_BTNSHADOW = common dso_local global i64 0, align 8
@COLOR_BTNTEXT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_12__*)* @MyDrawFrameScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MyDrawFrameScroll(i32 %0, i32 %1, i32 %2, %struct.TYPE_12__* %3) #0 {
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
  switch i32 %18, label %23 [
    i32 132, label %19
    i32 131, label %19
    i32 128, label %20
    i32 130, label %21
    i32 129, label %22
  ]

19:                                               ; preds = %4, %4
  store i8 54, i8* %16, align 1
  br label %25

20:                                               ; preds = %4
  store i8 53, i8* %16, align 1
  br label %25

21:                                               ; preds = %4
  store i8 51, i8* %16, align 1
  br label %25

22:                                               ; preds = %4
  store i8 52, i8* %16, align 1
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %5, align 4
  br label %152

25:                                               ; preds = %22, %21, %20, %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DFCS_PUSHED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @EDGE_SUNKEN, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @EDGE_RAISED, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DFCS_FLAT, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @BF_MIDDLE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @BF_RECT, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = call i32 @MyIntDrawRectEdge(i32 %26, i32 %27, i32 %37, i32 %44, %struct.TYPE_12__* %45)
  %47 = call i32 @ZeroMemory(%struct.TYPE_11__* %10, i32 32)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @MyMakeSquareRect(i32 %48, %struct.TYPE_10__* %14)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DFCS_PUSHED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %36
  %67 = call i32 @OffsetRect(%struct.TYPE_10__* %14, i32 1, i32 1)
  br label %68

68:                                               ; preds = %66, %36
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @FW_NORMAL, align 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* @DEFAULT_CHARSET, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @lstrcpy(i32 %81, i32 %82)
  %84 = call i32 @CreateFontIndirect(%struct.TYPE_11__* %10)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @SelectObject(i32 %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @GetTextColor(i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @GetBkMode(i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @TRANSPARENT, align 4
  %94 = call i32 @SetBkMode(i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @DFCS_INACTIVE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %68
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @COLOR_BTNHIGHLIGHT, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @SetTextColor(i32 %100, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  %115 = call i32 @TextOut(i32 %108, i64 %111, i64 %114, i8* %16, i32 1)
  br label %116

116:                                              ; preds = %99, %68
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @DFCS_INACTIVE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i64, i64* @COLOR_BTNSHADOW, align 8
  br label %129

127:                                              ; preds = %116
  %128 = load i64, i64* @COLOR_BTNTEXT, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  %131 = getelementptr inbounds i32, i32* %120, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @SetTextColor(i32 %117, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @TextOut(i32 %134, i64 %136, i64 %138, i8* %16, i32 1)
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @SetTextColor(i32 %140, i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @SelectObject(i32 %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @SetBkMode(i32 %146, i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @DeleteObject(i32 %149)
  %151 = load i32, i32* @TRUE, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %129, %23
  %153 = load i32, i32* %5, align 4
  ret i32 %153
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
