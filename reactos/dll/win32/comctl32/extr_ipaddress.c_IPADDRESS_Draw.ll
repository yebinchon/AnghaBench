; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_Draw.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_ipaddress.c_IPADDRESS_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@IPADDRESS_Draw.dotW = internal constant [2 x i8] c".\00", align 1
@ETS_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WC_EDITW = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@ETS_DISABLED = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@ETS_READONLY = common dso_local global i32 0, align 4
@ETS_FOCUSED = common dso_local global i32 0, align 4
@EP_EDITTEXT = common dso_local global i32 0, align 4
@TMT_FILLCOLOR = common dso_local global i32 0, align 4
@TMT_TEXTCOLOR = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @IPADDRESS_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IPADDRESS_Draw(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @ETS_NORMAL, align 4
  store i32 %13, i32* %11, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @GetClientRect(i64 %17, %struct.TYPE_15__* %5)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @WC_EDITW, align 4
  %23 = call i64 @OpenThemeData(i64 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @GWL_STYLE, align 4
  %31 = call i32 @GetWindowLongW(i64 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @ETS_DISABLED, align 4
  store i32 %37, i32* %11, align 4
  br label %55

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @ES_READONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ETS_READONLY, align 4
  store i32 %44, i32* %11, align 4
  br label %54

45:                                               ; preds = %38
  %46 = call i64 (...) @GetFocus()
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ETS_FOCUSED, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @EP_EDITTEXT, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @TMT_FILLCOLOR, align 4
  %60 = call i32 @GetThemeColor(i64 %56, i32 %57, i32 %58, i32 %59, i64* %7)
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @EP_EDITTEXT, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @TMT_TEXTCOLOR, align 4
  %65 = call i32 @GetThemeColor(i64 %61, i32 %62, i32 %63, i32 %64, i64* %8)
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* @EP_EDITTEXT, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @IsThemeBackgroundPartiallyTransparent(i64 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %55
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @DrawThemeParentBackground(i64 %74, i32 %75, %struct.TYPE_15__* %5)
  br label %77

77:                                               ; preds = %71, %55
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @EP_EDITTEXT, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @DrawThemeBackground(i64 %78, i32 %79, i32 %80, i32 %81, %struct.TYPE_15__* %5, i32 0)
  br label %106

83:                                               ; preds = %2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @comctl32_color, i32 0, i32 3), align 8
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @comctl32_color, i32 0, i32 2), align 8
  store i64 %90, i64* %8, align 8
  br label %94

91:                                               ; preds = %83
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @comctl32_color, i32 0, i32 1), align 8
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @comctl32_color, i32 0, i32 0), align 8
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %4, align 4
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = call i32 @FillRect(i32 %95, %struct.TYPE_15__* %5, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @EDGE_SUNKEN, align 4
  %102 = load i32, i32* @BF_RECT, align 4
  %103 = load i32, i32* @BF_ADJUST, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @DrawEdge(i32 %100, %struct.TYPE_15__* %5, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %94, %77
  %107 = load i32, i32* %4, align 4
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @SetBkColor(i32 %107, i64 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @SetTextColor(i32 %110, i64 %111)
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %174, %106
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %177

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @GetWindowRect(i32 %124, %struct.TYPE_15__* %6)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = bitcast %struct.TYPE_15__* %6 to i32*
  %130 = call i32 @MapWindowPoints(i32 0, i64 %128, i32* %129, i32 2)
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @GetWindowRect(i32 %142, %struct.TYPE_15__* %6)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = bitcast %struct.TYPE_15__* %6 to i32*
  %148 = call i32 @MapWindowPoints(i32 0, i64 %146, i32* %147, i32 2)
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  store i32 %150, i32* %151, align 4
  %152 = load i64, i64* %9, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %116
  %155 = load i64, i64* %9, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @EP_EDITTEXT, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @DT_SINGLELINE, align 4
  %160 = load i32, i32* @DT_CENTER, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @DT_BOTTOM, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @DrawThemeText(i64 %155, i32 %156, i32 %157, i32 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @IPADDRESS_Draw.dotW, i64 0, i64 0), i32 1, i32 %163, i32 0, %struct.TYPE_15__* %5)
  br label %173

165:                                              ; preds = %116
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @DT_SINGLELINE, align 4
  %168 = load i32, i32* @DT_CENTER, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @DT_BOTTOM, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @DrawTextW(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @IPADDRESS_Draw.dotW, i64 0, i64 0), i32 1, %struct.TYPE_15__* %5, i32 %171)
  br label %173

173:                                              ; preds = %165, %154
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %113

177:                                              ; preds = %113
  %178 = load i64, i64* %9, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @CloseThemeData(i64 %181)
  br label %183

183:                                              ; preds = %180, %177
  ret i32 0
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_15__*) #1

declare dso_local i64 @OpenThemeData(i64, i32) #1

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i64 @GetFocus(...) #1

declare dso_local i32 @GetThemeColor(i64, i32, i32, i32, i64*) #1

declare dso_local i64 @IsThemeBackgroundPartiallyTransparent(i64, i32, i32) #1

declare dso_local i32 @DrawThemeParentBackground(i64, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i64) #1

declare dso_local i32 @SetTextColor(i32, i64) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @MapWindowPoints(i32, i64, i32*, i32) #1

declare dso_local i32 @DrawThemeText(i64, i32, i32, i32, i8*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @DrawTextW(i32, i8*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @CloseThemeData(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
