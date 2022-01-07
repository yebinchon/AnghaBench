; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleLButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleLButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"[%p]: lbuttondown %d,%d item %d, focus item %d\0A\00", align 1
@LBS_NOTIFY = common dso_local global i32 0, align 4
@WM_LBTRACKPOINT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LBS_EXTENDEDSEL = common dso_local global i32 0, align 4
@LBS_MULTIPLESEL = common dso_local global i32 0, align 4
@MK_SHIFT = common dso_local global i32 0, align 4
@MK_CONTROL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_DRAGDETECT = common dso_local global i32 0, align 4
@WM_BEGINDRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32)* @LISTBOX_HandleLButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_HandleLButtonDown(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @LISTBOX_GetItemFromPoint(%struct.TYPE_14__* %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %265

36:                                               ; preds = %30, %4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @SetFocus(i64 %49)
  br label %73

51:                                               ; preds = %41
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %70

64:                                               ; preds = %51
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = phi i64 [ %63, %58 ], [ %69, %64 ]
  %72 = call i32 @SetFocus(i64 %71)
  br label %73

73:                                               ; preds = %70, %46
  br label %74

74:                                               ; preds = %73, %36
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %265

78:                                               ; preds = %74
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = icmp ne %struct.TYPE_12__* %81, null
  br i1 %82, label %101, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @LBS_NOTIFY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @WM_LBTRACKPOINT, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @MAKELPARAM(i32 %96, i32 %97)
  %99 = call i32 @SendMessageW(i32 %93, i32 %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %90, %83
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i32, i32* @TRUE, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @SetCapture(i64 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @LBS_EXTENDEDSEL, align 4
  %113 = load i32, i32* @LBS_MULTIPLESEL, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %211

117:                                              ; preds = %101
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @MK_SHIFT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @MK_CONTROL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %126
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @FALSE, align 4
  %135 = call i32 @LISTBOX_SetCaretIndex(%struct.TYPE_14__* %132, i32 %133, i32 %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 6
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @LBS_NOTIFY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @LISTBOX_SetSelection(%struct.TYPE_14__* %136, i32 %137, i32 %148, i32 %155)
  br label %210

157:                                              ; preds = %126
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i32 @LISTBOX_MoveCaret(%struct.TYPE_14__* %158, i32 %159, i32 %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @LBS_EXTENDEDSEL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %157
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @LBS_NOTIFY, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @LISTBOX_SetSelection(%struct.TYPE_14__* %169, i32 %170, i32 %178, i32 %185)
  br label %209

187:                                              ; preds = %157
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @LBS_NOTIFY, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = call i32 @LISTBOX_SetSelection(%struct.TYPE_14__* %188, i32 %189, i32 %200, i32 %207)
  br label %209

209:                                              ; preds = %187, %168
  br label %210

210:                                              ; preds = %209, %131
  br label %230

211:                                              ; preds = %101
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @FALSE, align 4
  %218 = call i32 @LISTBOX_MoveCaret(%struct.TYPE_14__* %215, i32 %216, i32 %217)
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @TRUE, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @LBS_NOTIFY, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @LISTBOX_SetSelection(%struct.TYPE_14__* %219, i32 %220, i32 %221, i32 %228)
  br label %230

230:                                              ; preds = %211, %210
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = icmp ne %struct.TYPE_12__* %233, null
  br i1 %234, label %264, label %235

235:                                              ; preds = %230
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* @GWL_EXSTYLE, align 4
  %240 = call i32 @GetWindowLongW(i64 %238, i32 %239)
  %241 = load i32, i32* @WS_EX_DRAGDETECT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %235
  %245 = load i32, i32* %8, align 4
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %9, align 4
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 %247, i32* %248, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = bitcast %struct.TYPE_13__* %11 to i64*
  %253 = load i64, i64* %252, align 4
  %254 = call i64 @DragDetect(i64 %251, i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %244
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @WM_BEGINDRAG, align 4
  %261 = call i32 @SendMessageW(i32 %259, i32 %260, i32 0, i32 0)
  br label %262

262:                                              ; preds = %256, %244
  br label %263

263:                                              ; preds = %262, %235
  br label %264

264:                                              ; preds = %263, %230
  store i32 0, i32* %5, align 4
  br label %265

265:                                              ; preds = %264, %77, %35
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i32 @LISTBOX_GetItemFromPoint(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SetFocus(i64) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i32 @SetCapture(i64) #1

declare dso_local i32 @LISTBOX_SetCaretIndex(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @LISTBOX_SetSelection(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @LISTBOX_MoveCaret(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i64 @DragDetect(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
