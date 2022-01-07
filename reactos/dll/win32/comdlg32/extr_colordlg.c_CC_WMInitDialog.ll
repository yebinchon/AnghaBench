; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_WMInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_WMInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"WM_INITDIALOG lParam=%08lX\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@szColourDialogProp = common dso_local global i32 0, align 4
@CC_SHOWHELP = common dso_local global i32 0, align 4
@pshHelp = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@SETRGBSTRINGA = common dso_local global i32 0, align 4
@CC_FULLOPEN = common dso_local global i32 0, align 4
@CC_PREVENTFULLOPEN = common dso_local global i32 0, align 4
@IDC_COLOR_DEFINE = common dso_local global i32 0, align 4
@IDC_COLOR_GRAPH = common dso_local global i32 0, align 4
@SM_CXDLGFRAME = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_H = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_B = common dso_local global i32 0, align 4
@IDC_COLOR_HL = common dso_local global i32 0, align 4
@IDC_COLOR_BL = common dso_local global i32 0, align 4
@IDC_COLOR_RES = common dso_local global i32 0, align 4
@IDC_COLOR_ADD = common dso_local global i32 0, align 4
@IDC_COLOR_RESULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EM_LIMITTEXT = common dso_local global i32 0, align 4
@WM_INITDIALOG = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_S = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_L = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_R = common dso_local global i32 0, align 4
@IDC_COLOR_EDIT_G = common dso_local global i32 0, align 4
@CC_RGBINIT = common dso_local global i32 0, align 4
@cpos = common dso_local global i32 0, align 4
@j = common dso_local global i32 0, align 4
@predefcolors = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @CC_WMInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_WMInitDialog(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__, align 4
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 24
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @EndDialog(i32 %28, i32 0)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %322

31:                                               ; preds = %3
  %32 = call %struct.TYPE_19__* @heap_alloc_zero(i32 40)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %17, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 3
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @szColourDialogProp, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %42 = call i32 @SetPropW(i32 %39, i32 %40, %struct.TYPE_19__* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CC_SHOWHELP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @pshHelp, align 4
  %54 = call i32 @GetDlgItem(i32 %52, i32 %53)
  %55 = load i32, i32* @SW_HIDE, align 4
  %56 = call i32 @ShowWindow(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %31
  %58 = load i32, i32* @SETRGBSTRINGA, align 4
  %59 = call i32 @RegisterWindowMessageA(i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 4
  %65 = call i32 @GetWindowRect(i32 %62, %struct.TYPE_16__* %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CC_FULLOPEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %57
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CC_PREVENTFULLOPEN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74, %57
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @IDC_COLOR_DEFINE, align 4
  %86 = call i32 @GetDlgItem(i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @EnableWindow(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %74
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CC_FULLOPEN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CC_PREVENTFULLOPEN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %196

108:                                              ; preds = %99, %90
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 4
  %111 = bitcast %struct.TYPE_16__* %15 to i8*
  %112 = bitcast %struct.TYPE_16__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 8 %112, i64 8, i1 false)
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %114, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %120 = call i32 @GetDlgItem(i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @ClientToScreen(i32 %123, %struct.TYPE_17__* %16)
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @ScreenToClient(i32 %125, %struct.TYPE_17__* %16)
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @GetClientRect(i32 %127, %struct.TYPE_16__* %15)
  %129 = load i32, i32* @SM_CXDLGFRAME, align 4
  %130 = call i64 @GetSystemMetrics(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %130
  store i64 %133, i64* %131, align 8
  %134 = load i32, i32* %5, align 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @SWP_NOMOVE, align 4
  %139 = load i32, i32* @SWP_NOZORDER, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @SetWindowPos(i32 %134, i32 0, i32 0, i32 0, i64 %136, i32 %137, i32 %140)
  %142 = load i32, i32* @IDC_COLOR_EDIT_H, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %153, %108
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @IDC_COLOR_EDIT_B, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @GetDlgItem(i32 %148, i32 %149)
  %151 = load i32, i32* @SW_HIDE, align 4
  %152 = call i32 @ShowWindow(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %143

156:                                              ; preds = %143
  %157 = load i32, i32* @IDC_COLOR_HL, align 4
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %168, %156
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @IDC_COLOR_BL, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @GetDlgItem(i32 %163, i32 %164)
  %166 = load i32, i32* @SW_HIDE, align 4
  %167 = call i32 @ShowWindow(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %158

171:                                              ; preds = %158
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @IDC_COLOR_RES, align 4
  %174 = call i32 @GetDlgItem(i32 %172, i32 %173)
  %175 = load i32, i32* @SW_HIDE, align 4
  %176 = call i32 @ShowWindow(i32 %174, i32 %175)
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @IDC_COLOR_ADD, align 4
  %179 = call i32 @GetDlgItem(i32 %177, i32 %178)
  %180 = load i32, i32* @SW_HIDE, align 4
  %181 = call i32 @ShowWindow(i32 %179, i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @IDC_COLOR_GRAPH, align 4
  %184 = call i32 @GetDlgItem(i32 %182, i32 %183)
  %185 = load i32, i32* @SW_HIDE, align 4
  %186 = call i32 @ShowWindow(i32 %184, i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @IDC_COLOR_RESULT, align 4
  %189 = call i32 @GetDlgItem(i32 %187, i32 %188)
  %190 = load i32, i32* @SW_HIDE, align 4
  %191 = call i32 @ShowWindow(i32 %189, i32 %190)
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @GetDlgItem(i32 %192, i32 1090)
  %194 = load i32, i32* @SW_HIDE, align 4
  %195 = call i32 @ShowWindow(i32 %193, i32 %194)
  br label %199

196:                                              ; preds = %99
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %198 = call i32 @CC_SwitchToFullSize(%struct.TYPE_19__* %197, i32* null)
  br label %199

199:                                              ; preds = %196, %171
  %200 = load i32, i32* @TRUE, align 4
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* @IDC_COLOR_EDIT_H, align 4
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %212, %199
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @IDC_COLOR_EDIT_B, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @GetDlgItem(i32 %207, i32 %208)
  %210 = load i32, i32* @EM_LIMITTEXT, align 4
  %211 = call i32 @SendMessageA(i32 %209, i32 %210, i32 3, i32 0)
  br label %212

212:                                              ; preds = %206
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %202

215:                                              ; preds = %202
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = call i64 @CC_HookCallChk(%struct.TYPE_18__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %215
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* @WM_INITDIALOG, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i64, i64* %7, align 8
  %232 = call i32 @CallWindowProcA(i32 %227, i32 %228, i32 %229, i32 %230, i64 %231)
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %221, %215
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @GetRValue(i64 %238)
  store i32 %239, i32* %11, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @GetGValue(i64 %244)
  store i32 %245, i32* %12, align 4
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @GetBValue(i64 %250)
  store i32 %251, i32* %13, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %253 = call i32 @CC_PaintSelectedColor(%struct.TYPE_19__* %252)
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call i8* @CC_RGBtoHSL(i8 signext 72, i64 %258)
  %260 = ptrtoint i8* %259 to i32
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = call i8* @CC_RGBtoHSL(i8 signext 83, i64 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = call i8* @CC_RGBtoHSL(i8 signext 76, i64 %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* @IDC_COLOR_EDIT_H, align 4
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @TRUE, align 4
  %287 = call i32 @SetDlgItemInt(i32 %281, i32 %282, i32 %285, i32 %286)
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @IDC_COLOR_EDIT_S, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @TRUE, align 4
  %294 = call i32 @SetDlgItemInt(i32 %288, i32 %289, i32 %292, i32 %293)
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @IDC_COLOR_EDIT_L, align 4
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @TRUE, align 4
  %301 = call i32 @SetDlgItemInt(i32 %295, i32 %296, i32 %299, i32 %300)
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* @IDC_COLOR_EDIT_R, align 4
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* @TRUE, align 4
  %306 = call i32 @SetDlgItemInt(i32 %302, i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* @IDC_COLOR_EDIT_G, align 4
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @TRUE, align 4
  %311 = call i32 @SetDlgItemInt(i32 %307, i32 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* @IDC_COLOR_EDIT_B, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* @TRUE, align 4
  %316 = call i32 @SetDlgItemInt(i32 %312, i32 %313, i32 %314, i32 %315)
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %318 = call i32 @CC_PaintCross(%struct.TYPE_19__* %317)
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %320 = call i32 @CC_PaintTriangle(%struct.TYPE_19__* %319)
  %321 = load i32, i32* %10, align 4
  store i32 %321, i32* %4, align 4
  br label %322

322:                                              ; preds = %233, %27
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local %struct.TYPE_19__* @heap_alloc_zero(i32) #1

declare dso_local i32 @SetPropW(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @RegisterWindowMessageA(i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @CC_SwitchToFullSize(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i64 @CC_HookCallChk(%struct.TYPE_18__*) #1

declare dso_local i32 @CallWindowProcA(i32, i32, i32, i32, i64) #1

declare dso_local i32 @GetRValue(i64) #1

declare dso_local i32 @GetGValue(i64) #1

declare dso_local i32 @GetBValue(i64) #1

declare dso_local i32 @CC_PaintSelectedColor(%struct.TYPE_19__*) #1

declare dso_local i8* @CC_RGBtoHSL(i8 signext, i64) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i32, i32) #1

declare dso_local i32 @CC_PaintCross(%struct.TYPE_19__*) #1

declare dso_local i32 @CC_PaintTriangle(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
