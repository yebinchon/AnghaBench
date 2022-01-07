; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_alarms.c_Ala_InitData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_alarms.c_Ala_InitData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32*, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@gGPP = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@DISCHARGE_POLICY_LOW = common dso_local global i64 0, align 8
@IDC_ALARM1 = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_PERCENT = common dso_local global i64 0, align 8
@IDC_ALARMVALUE1 = common dso_local global i32 0, align 4
@IDC_ALARMBAR1 = common dso_local global i32 0, align 4
@TBM_SETRANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TBM_SETTICFREQ = common dso_local global i32 0, align 4
@TBM_SETPOS = common dso_local global i32 0, align 4
@IDS_PowerActionNone1 = common dso_local global i64 0, align 8
@IDC_ALARMAKTION1 = common dso_local global i32 0, align 4
@IDS_NOACTION = common dso_local global i64 0, align 8
@POWER_LEVEL_USER_NOTIFY_TEXT = common dso_local global i32 0, align 4
@POWER_LEVEL_USER_NOTIFY_SOUND = common dso_local global i32 0, align 4
@IDS_SOUND = common dso_local global i64 0, align 8
@IDS_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IDC_ALARMMSG1 = common dso_local global i32 0, align 4
@IDS_PowerActionNone2 = common dso_local global i64 0, align 8
@IDC_ALARMPROG1 = common dso_local global i32 0, align 4
@DISCHARGE_POLICY_CRITICAL = common dso_local global i64 0, align 8
@IDC_ALARM2 = common dso_local global i32 0, align 4
@IDC_ALARMVALUE2 = common dso_local global i32 0, align 4
@IDC_ALARMBAR2 = common dso_local global i32 0, align 4
@IDC_ALARMAKTION2 = common dso_local global i32 0, align 4
@IDC_ALARMMSG2 = common dso_local global i32 0, align 4
@IDC_ALARMPROG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @Ala_InitData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Ala_InitData(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %35 = call i32 @ReadGlobalPwrPolicy(%struct.TYPE_9__* @gGPP)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %1
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %381

39:                                               ; preds = %1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %41 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %212

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @IDC_ALARM1, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %50 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @BST_CHECKED, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @BST_UNCHECKED, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @CheckDlgButton(i32 %47, i32 %48, i32 %60)
  %62 = load i32, i32* @hApplet, align 4
  %63 = load i64, i64* @IDS_PERCENT, align 8
  %64 = load i32, i32* @MAX_PATH, align 4
  %65 = call i64 @LoadString(i32 %62, i64 %63, i32* %28, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %69 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %31, i32* %28, i32* %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @IDC_ALARMVALUE1, align 4
  %76 = call i32 @SetDlgItemText(i32 %74, i32 %75, i32* %31)
  br label %77

77:                                               ; preds = %67, %59
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @IDC_ALARMBAR1, align 4
  %80 = load i32, i32* @TBM_SETRANGE, align 4
  %81 = load i64, i64* @TRUE, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @MAKELONG(i32 0, i32 100)
  %84 = trunc i64 %83 to i32
  %85 = call i32 @SendDlgItemMessage(i32 %78, i32 %79, i32 %80, i32 %82, i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @IDC_ALARMBAR1, align 4
  %88 = load i32, i32* @TBM_SETTICFREQ, align 4
  %89 = load i64, i64* @TRUE, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @SendDlgItemMessage(i32 %86, i32 %87, i32 %88, i32 %90, i32 20)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @IDC_ALARMBAR1, align 4
  %94 = load i32, i32* @TBM_SETPOS, align 4
  %95 = load i64, i64* @TRUE, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %98 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = call i32 @SendDlgItemMessage(i32 %92, i32 %93, i32 %94, i32 %96, i32 %102)
  %104 = load i32, i32* @hApplet, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %106 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IDS_PowerActionNone1, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* @MAX_PATH, align 4
  %114 = call i64 @LoadString(i32 %104, i64 %112, i32* %16, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %77
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @IDC_ALARMAKTION1, align 4
  %119 = call i32 @SetDlgItemText(i32 %117, i32 %118, i32* %16)
  br label %120

120:                                              ; preds = %116, %77
  %121 = mul nuw i64 4, %24
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memset(i32* %25, i32 0, i32 %122)
  %124 = load i32, i32* @hApplet, align 4
  %125 = load i64, i64* @IDS_NOACTION, align 8
  %126 = load i32, i32* @MAX_PATH, align 4
  %127 = call i64 @LoadString(i32 %124, i64 %125, i32* %25, i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %129 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @LOWORD(i32 %133)
  %135 = load i32, i32* @POWER_LEVEL_USER_NOTIFY_TEXT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %176

138:                                              ; preds = %120
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %140 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @LOWORD(i32 %144)
  %146 = load i32, i32* @POWER_LEVEL_USER_NOTIFY_SOUND, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %138
  %150 = load i32, i32* @hApplet, align 4
  %151 = load i64, i64* @IDS_SOUND, align 8
  %152 = load i32, i32* @MAX_PATH, align 4
  %153 = call i64 @LoadString(i32 %150, i64 %151, i32* %22, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load i32, i32* @hApplet, align 4
  %157 = load i64, i64* @IDS_TEXT, align 8
  %158 = load i32, i32* @MAX_PATH, align 4
  %159 = call i64 @LoadString(i32 %156, i64 %157, i32* %19, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %163 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %25, i32* %162, i32* %22, i32* %19)
  br label %164

164:                                              ; preds = %161, %155, %149
  br label %175

165:                                              ; preds = %138
  %166 = load i32, i32* @hApplet, align 4
  %167 = load i64, i64* @IDS_TEXT, align 8
  %168 = load i32, i32* @MAX_PATH, align 4
  %169 = call i64 @LoadString(i32 %166, i64 %167, i32* %19, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = call i32* @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %173 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %25, i32* %172, i32* %19)
  br label %174

174:                                              ; preds = %171, %165
  br label %175

175:                                              ; preds = %174, %164
  br label %198

176:                                              ; preds = %120
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %178 = load i64, i64* @DISCHARGE_POLICY_LOW, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @LOWORD(i32 %182)
  %184 = load i32, i32* @POWER_LEVEL_USER_NOTIFY_SOUND, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %176
  %188 = load i32, i32* @hApplet, align 4
  %189 = load i64, i64* @IDS_SOUND, align 8
  %190 = load i32, i32* @MAX_PATH, align 4
  %191 = call i64 @LoadString(i32 %188, i64 %189, i32* %22, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = call i32* @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %195 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %25, i32* %194, i32* %22)
  br label %196

196:                                              ; preds = %193, %187
  br label %197

197:                                              ; preds = %196, %176
  br label %198

198:                                              ; preds = %197, %175
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @IDC_ALARMMSG1, align 4
  %201 = call i32 @SetDlgItemText(i32 %199, i32 %200, i32* %25)
  %202 = load i32, i32* @hApplet, align 4
  %203 = load i64, i64* @IDS_PowerActionNone2, align 8
  %204 = load i32, i32* @MAX_PATH, align 4
  %205 = call i64 @LoadString(i32 %202, i64 %203, i32* %34, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @IDC_ALARMPROG1, align 4
  %210 = call i32 @SetDlgItemText(i32 %208, i32 %209, i32* %34)
  br label %211

211:                                              ; preds = %207, %198
  br label %212

212:                                              ; preds = %211, %39
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %214 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %379

219:                                              ; preds = %212
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* @IDC_ALARM2, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %223 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* @BST_CHECKED, align 4
  br label %232

230:                                              ; preds = %219
  %231 = load i32, i32* @BST_UNCHECKED, align 4
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i32 [ %229, %228 ], [ %231, %230 ]
  %234 = call i32 @CheckDlgButton(i32 %220, i32 %221, i32 %233)
  %235 = load i32, i32* @hApplet, align 4
  %236 = load i64, i64* @IDS_PERCENT, align 8
  %237 = load i32, i32* @MAX_PATH, align 4
  %238 = call i64 @LoadString(i32 %235, i64 %236, i32* %28, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %232
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %242 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %31, i32* %28, i32* %245)
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* @IDC_ALARMVALUE2, align 4
  %249 = call i32 @SetDlgItemText(i32 %247, i32 %248, i32* %31)
  br label %250

250:                                              ; preds = %240, %232
  %251 = load i32, i32* %3, align 4
  %252 = load i32, i32* @IDC_ALARMBAR2, align 4
  %253 = load i32, i32* @TBM_SETRANGE, align 4
  %254 = load i64, i64* @TRUE, align 8
  %255 = trunc i64 %254 to i32
  %256 = call i64 @MAKELONG(i32 0, i32 100)
  %257 = trunc i64 %256 to i32
  %258 = call i32 @SendDlgItemMessage(i32 %251, i32 %252, i32 %253, i32 %255, i32 %257)
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* @IDC_ALARMBAR2, align 4
  %261 = load i32, i32* @TBM_SETPOS, align 4
  %262 = load i64, i64* @TRUE, align 8
  %263 = trunc i64 %262 to i32
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %265 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = ptrtoint i32* %268 to i32
  %270 = call i32 @SendDlgItemMessage(i32 %259, i32 %260, i32 %261, i32 %263, i32 %269)
  %271 = load i32, i32* @hApplet, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %273 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @IDS_PowerActionNone1, align 8
  %279 = add nsw i64 %277, %278
  %280 = load i32, i32* @MAX_PATH, align 4
  %281 = call i64 @LoadString(i32 %271, i64 %279, i32* %16, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %250
  %284 = load i32, i32* %3, align 4
  %285 = load i32, i32* @IDC_ALARMAKTION2, align 4
  %286 = call i32 @SetDlgItemText(i32 %284, i32 %285, i32* %16)
  br label %287

287:                                              ; preds = %283, %250
  %288 = mul nuw i64 4, %24
  %289 = trunc i64 %288 to i32
  %290 = call i32 @memset(i32* %25, i32 0, i32 %289)
  %291 = load i32, i32* @hApplet, align 4
  %292 = load i64, i64* @IDS_NOACTION, align 8
  %293 = load i32, i32* @MAX_PATH, align 4
  %294 = call i64 @LoadString(i32 %291, i64 %292, i32* %25, i32 %293)
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %296 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @LOWORD(i32 %300)
  %302 = load i32, i32* @POWER_LEVEL_USER_NOTIFY_TEXT, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %343

305:                                              ; preds = %287
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %307 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @LOWORD(i32 %311)
  %313 = load i32, i32* @POWER_LEVEL_USER_NOTIFY_SOUND, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %305
  %317 = load i32, i32* @hApplet, align 4
  %318 = load i64, i64* @IDS_TEXT, align 8
  %319 = load i32, i32* @MAX_PATH, align 4
  %320 = call i64 @LoadString(i32 %317, i64 %318, i32* %19, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %316
  %323 = load i32, i32* @hApplet, align 4
  %324 = load i64, i64* @IDS_SOUND, align 8
  %325 = load i32, i32* @MAX_PATH, align 4
  %326 = call i64 @LoadString(i32 %323, i64 %324, i32* %22, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %322
  %329 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %330 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %25, i32* %329, i32* %22, i32* %19)
  br label %331

331:                                              ; preds = %328, %322, %316
  br label %342

332:                                              ; preds = %305
  %333 = load i32, i32* @hApplet, align 4
  %334 = load i64, i64* @IDS_TEXT, align 8
  %335 = load i32, i32* @MAX_PATH, align 4
  %336 = call i64 @LoadString(i32 %333, i64 %334, i32* %19, i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = call i32* @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %340 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %25, i32* %339, i32* %19)
  br label %341

341:                                              ; preds = %338, %332
  br label %342

342:                                              ; preds = %341, %331
  br label %365

343:                                              ; preds = %287
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gGPP, i32 0, i32 0, i32 0), align 8
  %345 = load i64, i64* @DISCHARGE_POLICY_CRITICAL, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @LOWORD(i32 %349)
  %351 = load i32, i32* @POWER_LEVEL_USER_NOTIFY_SOUND, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %364

354:                                              ; preds = %343
  %355 = load i32, i32* @hApplet, align 4
  %356 = load i64, i64* @IDS_SOUND, align 8
  %357 = load i32, i32* @MAX_PATH, align 4
  %358 = call i64 @LoadString(i32 %355, i64 %356, i32* %22, i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = call i32* @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %362 = call i32 (i32*, i32*, i32*, ...) @_stprintf(i32* %25, i32* %361, i32* %22)
  br label %363

363:                                              ; preds = %360, %354
  br label %364

364:                                              ; preds = %363, %343
  br label %365

365:                                              ; preds = %364, %342
  %366 = load i32, i32* %3, align 4
  %367 = load i32, i32* @IDC_ALARMMSG2, align 4
  %368 = call i32 @SetDlgItemText(i32 %366, i32 %367, i32* %25)
  %369 = load i32, i32* @hApplet, align 4
  %370 = load i64, i64* @IDS_PowerActionNone2, align 8
  %371 = load i32, i32* @MAX_PATH, align 4
  %372 = call i64 @LoadString(i32 %369, i64 %370, i32* %34, i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %365
  %375 = load i32, i32* %3, align 4
  %376 = load i32, i32* @IDC_ALARMPROG2, align 4
  %377 = call i32 @SetDlgItemText(i32 %375, i32 %376, i32* %34)
  br label %378

378:                                              ; preds = %374, %365
  br label %379

379:                                              ; preds = %378, %212
  %380 = load i64, i64* @TRUE, align 8
  store i64 %380, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %381

381:                                              ; preds = %379, %37
  %382 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %382)
  %383 = load i64, i64* %2, align 8
  ret i64 %383
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ReadGlobalPwrPolicy(%struct.TYPE_9__*) #2

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #2

declare dso_local i64 @LoadString(i32, i64, i32*, i32) #2

declare dso_local i32 @_stprintf(i32*, i32*, i32*, ...) #2

declare dso_local i32 @SetDlgItemText(i32, i32, i32*) #2

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #2

declare dso_local i64 @MAKELONG(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @LOWORD(i32) #2

declare dso_local i32* @_T(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
