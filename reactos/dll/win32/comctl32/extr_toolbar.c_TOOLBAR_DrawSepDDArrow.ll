; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawSepDDArrow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawSepDDArrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }

@CDIS_SELECTED = common dso_local global i32 0, align 4
@CDIS_CHECKED = common dso_local global i32 0, align 4
@TBSTYLE_FLAT = common dso_local global i32 0, align 4
@BDR_SUNKENOUTER = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@CDIS_HOT = common dso_local global i32 0, align 4
@CDIS_DISABLED = common dso_local global i32 0, align 4
@CDIS_INDETERMINATE = common dso_local global i32 0, align 4
@BDR_RAISEDINNER = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@TBCDRF_NOOFFSET = common dso_local global i32 0, align 4
@ARROW_HEIGHT = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32)* @TOOLBAR_DrawSepDDArrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_DrawSepDDArrow(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CDIS_SELECTED, align 4
  %26 = load i32, i32* @CDIS_CHECKED, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %20, %5
  %31 = phi i1 [ true, %5 ], [ %29, %20 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TBSTYLE_FLAT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = load i32, i32* @BDR_SUNKENOUTER, align 4
  %46 = load i32, i32* @BF_RECT, align 4
  %47 = call i32 @DrawEdge(i32 %43, %struct.TYPE_12__* %44, i32 %45, i32 %46)
  br label %79

48:                                               ; preds = %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CDIS_HOT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CDIS_DISABLED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CDIS_INDETERMINATE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = load i32, i32* @BDR_RAISEDINNER, align 4
  %76 = load i32, i32* @BF_RECT, align 4
  %77 = call i32 @DrawEdge(i32 %73, %struct.TYPE_12__* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %64, %56, %48
  br label %79

79:                                               ; preds = %78, %42
  br label %102

80:                                               ; preds = %30
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = load i32, i32* @EDGE_SUNKEN, align 4
  %87 = load i32, i32* @BF_RECT, align 4
  %88 = load i32, i32* @BF_MIDDLE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @DrawEdge(i32 %84, %struct.TYPE_12__* %85, i32 %86, i32 %89)
  br label %101

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = load i32, i32* @EDGE_RAISED, align 4
  %95 = load i32, i32* @BF_SOFT, align 4
  %96 = load i32, i32* @BF_RECT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BF_MIDDLE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @DrawEdge(i32 %92, %struct.TYPE_12__* %93, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %91, %83
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @TBCDRF_NOOFFSET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %105, %102
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CDIS_DISABLED, align 4
  %118 = load i32, i32* @CDIS_INDETERMINATE, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %112
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = load i32, i32* @ARROW_HEIGHT, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sdiv i32 %140, 2
  %142 = add nsw i32 %131, %141
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @comctl32_color, i32 0, i32 2), align 4
  %144 = call i32 @TOOLBAR_DrawArrow(i32 %123, i64 %127, i32 %142, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %154, %157
  %159 = load i32, i32* @ARROW_HEIGHT, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sdiv i32 %160, 2
  %162 = add nsw i32 %151, %161
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @comctl32_color, i32 0, i32 1), align 4
  %164 = call i32 @TOOLBAR_DrawArrow(i32 %145, i64 %148, i32 %162, i32 %163)
  br label %191

165:                                              ; preds = %112
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %175, %176
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %180, %183
  %185 = load i32, i32* @ARROW_HEIGHT, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sdiv i32 %186, 2
  %188 = add nsw i32 %177, %187
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @comctl32_color, i32 0, i32 0), align 4
  %190 = call i32 @TOOLBAR_DrawArrow(i32 %166, i64 %172, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %165, %122
  ret void
}

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @TOOLBAR_DrawArrow(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
