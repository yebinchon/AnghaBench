; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_theme_scrollbar.c_hit_test.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_theme_scrollbar.c_hit_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@SBS_VERT = common dso_local global i32 0, align 4
@SBP_ARROWBTN = common dso_local global i32 0, align 4
@ABS_UPNORMAL = common dso_local global i32 0, align 4
@TS_DRAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not get up arrow size.\0A\00", align 1
@ABS_DOWNNORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get down arrow size.\0A\00", align 1
@ABS_LEFTNORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not get left arrow size.\0A\00", align 1
@ABS_RIGHTNORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not get right arrow size.\0A\00", align 1
@SCROLL_NOWHERE = common dso_local global i32 0, align 4
@SCROLL_MIN_RECT = common dso_local global i32 0, align 4
@SCROLL_TOP_ARROW = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_ARROW = common dso_local global i32 0, align 4
@SIF_ALL = common dso_local global i32 0, align 4
@SB_CTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"GetScrollInfo failed.\0A\00", align 1
@SCROLL_TOP_RECT = common dso_local global i32 0, align 4
@SCROLL_THUMB = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_RECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @hit_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hit_test(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_14__* %5 to i64*
  store i64 %2, i64* %19, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GWL_STYLE, align 4
  %22 = call i32 @GetWindowLongW(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SBS_VERT, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GetWindowRect(i32 %26, %struct.TYPE_13__* %8)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 0, %29
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @OffsetRect(%struct.TYPE_13__* %8, i32 %30, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SBP_ARROWBTN, align 4
  %44 = load i32, i32* @ABS_UPNORMAL, align 4
  %45 = load i32, i32* @TS_DRAW, align 4
  %46 = call i32 @GetThemePartSize(i32 %42, i32* null, i32 %43, i32 %44, i32* null, i32 %45, %struct.TYPE_11__* %11)
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %54

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %51, %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SBP_ARROWBTN, align 4
  %57 = load i32, i32* @ABS_DOWNNORMAL, align 4
  %58 = load i32, i32* @TS_DRAW, align 4
  %59 = call i32 @GetThemePartSize(i32 %55, i32* null, i32 %56, i32 %57, i32* null, i32 %58, %struct.TYPE_11__* %11)
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %67

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %64, %62
  br label %99

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SBP_ARROWBTN, align 4
  %75 = load i32, i32* @ABS_LEFTNORMAL, align 4
  %76 = load i32, i32* @TS_DRAW, align 4
  %77 = call i32 @GetThemePartSize(i32 %73, i32* null, i32 %74, i32 %75, i32* null, i32 %76, %struct.TYPE_11__* %11)
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %85

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SBP_ARROWBTN, align 4
  %88 = load i32, i32* @ABS_RIGHTNORMAL, align 4
  %89 = load i32, i32* @TS_DRAW, align 4
  %90 = call i32 @GetThemePartSize(i32 %86, i32* null, i32 %87, i32 %88, i32* null, i32 %89, %struct.TYPE_11__* %11)
  %91 = call i64 @FAILED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %98

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %95, %93
  br label %99

99:                                               ; preds = %98, %67
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ugt i32 %105, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ult i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ugt i32 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %109, %103, %99
  %120 = load i32, i32* @SCROLL_NOWHERE, align 4
  store i32 %120, i32* %4, align 4
  br label %185

121:                                              ; preds = %113
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @SCROLL_MIN_RECT, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add i32 %123, %124
  %126 = load i32, i32* %16, align 4
  %127 = add i32 %125, %126
  %128 = icmp ult i32 %122, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @SCROLL_MIN_RECT, align 4
  %132 = sub i32 %130, %131
  %133 = udiv i32 %132, 2
  store i32 %133, i32* %16, align 4
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %129, %121
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @SCROLL_TOP_ARROW, align 4
  store i32 %139, i32* %4, align 4
  br label %185

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sub i32 %142, %143
  %145 = icmp ugt i32 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @SCROLL_BOTTOM_ARROW, align 4
  store i32 %147, i32* %4, align 4
  br label %185

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 8, i32* %149, align 4
  %150 = load i32, i32* @SIF_ALL, align 4
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @SB_CTL, align 4
  %154 = call i32 @GetScrollInfo(i32 %152, i32 %153, %struct.TYPE_12__* %12)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %148
  %157 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @SCROLL_NOWHERE, align 4
  store i32 %158, i32* %4, align 4
  br label %185

159:                                              ; preds = %148
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sub i32 %160, %161
  %163 = load i32, i32* %16, align 4
  %164 = sub i32 %162, %163
  %165 = call i32 @calc_thumb_dimensions(i32 %164, %struct.TYPE_12__* %12, i32* %17, i32* %18)
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add i32 %167, %168
  %170 = icmp ult i32 %166, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %159
  %172 = load i32, i32* @SCROLL_TOP_RECT, align 4
  store i32 %172, i32* %4, align 4
  br label %185

173:                                              ; preds = %159
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add i32 %175, %176
  %178 = load i32, i32* %18, align 4
  %179 = add i32 %177, %178
  %180 = icmp ult i32 %174, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @SCROLL_THUMB, align 4
  store i32 %182, i32* %4, align 4
  br label %185

183:                                              ; preds = %173
  %184 = load i32, i32* @SCROLL_BOTTOM_RECT, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %181, %171, %156, %146, %138, %119
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @GetThemePartSize(i32, i32*, i32, i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @GetScrollInfo(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @calc_thumb_dimensions(i32, %struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
