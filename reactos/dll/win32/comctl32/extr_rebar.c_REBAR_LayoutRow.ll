; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_LayoutRow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_LayoutRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Adjusting row [%d;%d). Width: %d\0A\00", align 1
@SEP_WIDTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Extra space: %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Error layouting row %d - couldn't shrink for %d pixels (%d total shrink)\0A\00", align 1
@RBS_VARHEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32, i32, i32*, i32*)* @REBAR_LayoutRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REBAR_LayoutRow(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %34, %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call %struct.TYPE_13__* @REBAR_GetBand(%struct.TYPE_12__* %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  br label %23

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %73, %37
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call %struct.TYPE_13__* @REBAR_GetBand(%struct.TYPE_12__* %44, i32 %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i64, i64* @SEP_WIDTH, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @max(i32 %59, i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %56
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @next_visible(%struct.TYPE_12__* %74, i32 %75)
  store i32 %76, i32* %14, align 4
  br label %39

77:                                               ; preds = %39
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %77
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i32 @REBAR_ShrinkBandsRTL(%struct.TYPE_12__* %86, i32 %87, i32 %88, i32 %90, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %85
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @next_visible(%struct.TYPE_12__* %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 0, %105
  %107 = call i32 @ERR(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %101, %95, %85
  br label %124

109:                                              ; preds = %77
  %110 = load i32, i32* %15, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call %struct.TYPE_13__* @REBAR_FindBandToGrow(%struct.TYPE_12__* %113, i32 %114, i32 %115)
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %13, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %112, %109
  br label %124

124:                                              ; preds = %123, %108
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @REBAR_SetRowRectsX(%struct.TYPE_12__* %125, i32 %126, i32 %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @RBS_VARHEIGHT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %124
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i64, i64* @SEP_WIDTH, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %140
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  br label %146

146:                                              ; preds = %139, %135
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @REBAR_SetBandsHeight(%struct.TYPE_12__* %147, i32 %148, i32 %149, i32 %151)
  %153 = load i32*, i32** %12, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %146, %124
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local %struct.TYPE_13__* @REBAR_GetBand(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @next_visible(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @REBAR_ShrinkBandsRTL(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @REBAR_FindBandToGrow(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @REBAR_SetRowRectsX(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @REBAR_SetBandsHeight(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
