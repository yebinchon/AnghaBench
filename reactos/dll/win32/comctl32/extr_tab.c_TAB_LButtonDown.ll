; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tab.c_TAB_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tab.c_TAB_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i16, i16 }
%struct.TYPE_14__ = type { i32 }

@WM_LBUTTONDOWN = common dso_local global i32 0, align 4
@TCS_FOCUSNEVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"On Tab, item %d\0A\00", align 1
@TCS_BUTTONS = common dso_local global i32 0, align 4
@TCS_MULTISELECT = common dso_local global i32 0, align 4
@MK_CONTROL = common dso_local global i32 0, align 4
@TCIS_BUTTONPRESSED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TCN_SELCHANGING = common dso_local global i32 0, align 4
@TCN_SELCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @TAB_LButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TAB_LButtonDown(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WM_LBUTTONDOWN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @TAB_RelayEvent(i64 %21, i32 %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %18, %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TCS_FOCUSNEVER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SetFocus(i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WM_LBUTTONDOWN, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @TAB_RelayEvent(i64 %49, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %41
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @LOWORD(i32 %58)
  %60 = trunc i64 %59 to i16
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i16 %60, i16* %61, align 2
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @HIWORD(i32 %62)
  %64 = trunc i64 %63 to i16
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i16 %64, i16* %65, align 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = bitcast %struct.TYPE_13__* %8 to i32*
  %68 = load i32, i32* %67, align 2
  %69 = call i32 @TAB_InternalHitTest(%struct.TYPE_12__* %66, i32 %68, i32* %10)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %169

74:                                               ; preds = %57
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %169

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TCS_BUTTONS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %80
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TCS_MULTISELECT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @MK_CONTROL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = load i32, i32* @TCIS_BUTTONPRESSED, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call %struct.TYPE_14__* @TAB_GetItem(%struct.TYPE_12__* %101, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @TAB_InternalGetItemRect(%struct.TYPE_12__* %107, i32 %108, i32* %11, i32* null)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %99
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @TRUE, align 8
  %116 = call i32 @InvalidateRect(i32 %114, i32* %11, i64 %115)
  br label %117

117:                                              ; preds = %111, %99
  br label %168

118:                                              ; preds = %94, %87, %80
  %119 = load i64, i64* @FALSE, align 8
  store i64 %119, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %144, %118
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %120
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call %struct.TYPE_14__* @TAB_GetItem(%struct.TYPE_12__* %127, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TCIS_BUTTONPRESSED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i64, i64* @TRUE, align 8
  store i64 %142, i64* %13, align 8
  br label %147

143:                                              ; preds = %135, %126
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %120

147:                                              ; preds = %141, %120
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = load i32, i32* @TCN_SELCHANGING, align 4
  %150 = call i64 @TAB_SendSimpleNotify(%struct.TYPE_12__* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %170

153:                                              ; preds = %147
  %154 = load i64, i64* %13, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = load i64, i64* @FALSE, align 8
  %159 = call i32 @TAB_DeselectAll(%struct.TYPE_12__* %157, i64 %158)
  br label %164

160:                                              ; preds = %153
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @TAB_SetCurSel(%struct.TYPE_12__* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %156
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = load i32, i32* @TCN_SELCHANGE, align 4
  %167 = call i64 @TAB_SendSimpleNotify(%struct.TYPE_12__* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %117
  br label %169

169:                                              ; preds = %168, %74, %57
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %152
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @TAB_RelayEvent(i64, i32, i32, i32, i32) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @TAB_InternalHitTest(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @TAB_GetItem(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @TAB_InternalGetItemRect(%struct.TYPE_12__*, i32, i32*, i32*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i64) #1

declare dso_local i64 @TAB_SendSimpleNotify(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @TAB_DeselectAll(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @TAB_SetCurSel(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
