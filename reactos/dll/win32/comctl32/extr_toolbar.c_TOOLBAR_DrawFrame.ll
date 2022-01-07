; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@CDIS_DISABLED = common dso_local global i32 0, align 4
@CDIS_INDETERMINATE = common dso_local global i32 0, align 4
@CDIS_SELECTED = common dso_local global i32 0, align 4
@CDIS_CHECKED = common dso_local global i32 0, align 4
@TBCDRF_NOEDGES = common dso_local global i32 0, align 4
@TBSTYLE_FLAT = common dso_local global i32 0, align 4
@BDR_SUNKENOUTER = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@CDIS_HOT = common dso_local global i32 0, align 4
@BDR_RAISEDINNER = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32)* @TOOLBAR_DrawFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_DrawFrame(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CDIS_DISABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CDIS_INDETERMINATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %26, %4
  %35 = phi i1 [ true, %4 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CDIS_SELECTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CDIS_CHECKED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %47, %39
  %56 = phi i1 [ true, %39 ], [ %54, %47 ]
  br label %57

57:                                               ; preds = %55, %34
  %58 = phi i1 [ false, %34 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TBCDRF_NOEDGES, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %118

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TBSTYLE_FLAT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @BDR_SUNKENOUTER, align 4
  %78 = load i32, i32* @BF_RECT, align 4
  %79 = call i32 @DrawEdge(i32 %76, i32* %10, i32 %77, i32 %78)
  br label %97

80:                                               ; preds = %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CDIS_HOT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @BDR_RAISEDINNER, align 4
  %94 = load i32, i32* @BF_RECT, align 4
  %95 = call i32 @DrawEdge(i32 %92, i32* %10, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %88, %80
  br label %97

97:                                               ; preds = %96, %75
  br label %118

98:                                               ; preds = %65
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @EDGE_SUNKEN, align 4
  %104 = load i32, i32* @BF_RECT, align 4
  %105 = load i32, i32* @BF_MIDDLE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @DrawEdge(i32 %102, i32* %10, i32 %103, i32 %106)
  br label %117

108:                                              ; preds = %98
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @EDGE_RAISED, align 4
  %111 = load i32, i32* @BF_SOFT, align 4
  %112 = load i32, i32* @BF_RECT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @BF_MIDDLE, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @DrawEdge(i32 %109, i32* %10, i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %108, %101
  br label %118

118:                                              ; preds = %64, %117, %97
  ret void
}

declare dso_local i32 @DrawEdge(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
