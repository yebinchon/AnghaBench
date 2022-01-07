; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_Refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_16__*, %struct.TYPE_14__, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRANSPARENT = common dso_local global i32 0, align 4
@DTS_SHOWNONE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DTS_UPDOWN = common dso_local global i32 0, align 4
@DFC_SCROLL = common dso_local global i32 0, align 4
@DFCS_SCROLLDOWN = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @DATETIME_Refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DATETIME_Refresh(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [80 x i64], align 16
  %15 = alloca %struct.TYPE_16__, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %221

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 11
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %8, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SelectObject(i32 %25, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TRANSPARENT, align 4
  %32 = call i32 @SetBkMode(i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %35 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i64* %35)
  %37 = call i32 @DATETIME_ReturnTxt(%struct.TYPE_17__* %33, i32 0, i64* %34, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %40 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %41 = call i32 @strlenW(i64* %40)
  %42 = call i32 @GetTextExtentPoint32W(i32 %38, i64* %39, i32 %41, %struct.TYPE_15__* %9)
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DTS_SHOWNONE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 18, i32 2
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  store i32 %55, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %211, %22
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %214

65:                                               ; preds = %59
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %69 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %70 = call i32 @ARRAY_SIZE(i64* %69)
  %71 = call i32 @DATETIME_ReturnTxt(%struct.TYPE_17__* %66, i32 %67, i64* %68, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %74 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %75 = call i32 @strlenW(i64* %74)
  %76 = call i32 @GetTextExtentPoint32W(i32 %72, i64* %73, i32 %75, %struct.TYPE_15__* %9)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @DATETIME_ReturnFieldWidth(%struct.TYPE_17__* %77, i32 %78, i32 %79, i32* %11)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i64 %85
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %6, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @WS_DISABLED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %65
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @comctl32_color, i32 0, i32 3), align 4
  %117 = call i32 @SetTextColor(i32 %115, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %196

118:                                              ; preds = %65
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %191

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %191

129:                                              ; preds = %123
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @comctl32_color, i32 0, i32 2), align 4
  %131 = call i32 @CreateSolidBrush(i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %129
  %137 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i64* %137, i32 %140, i32 %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 %151
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %4, align 4
  %154 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %155 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %156 = call i32 @strlenW(i64* %155)
  %157 = call i32 @GetTextExtentPoint32W(i32 %153, i64* %154, i32 %156, %struct.TYPE_15__* %9)
  br label %158

158:                                              ; preds = %136, %129
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @SetRect(%struct.TYPE_16__* %15, i32 0, i32 0, i32 %160, i32 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %170, %172
  %174 = sdiv i32 %173, 2
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %177, %179
  %181 = sdiv i32 %180, 2
  %182 = call i32 @OffsetRect(%struct.TYPE_16__* %15, i32 %174, i32 %181)
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @FillRect(i32 %183, %struct.TYPE_16__* %15, i32 %184)
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @DeleteObject(i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @comctl32_color, i32 0, i32 1), align 4
  %190 = call i32 @SetTextColor(i32 %188, i32 %189)
  store i32 %190, i32* %10, align 4
  br label %195

191:                                              ; preds = %123, %118
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @comctl32_color, i32 0, i32 0), align 4
  %194 = call i32 @SetTextColor(i32 %192, i32 %193)
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %191, %158
  br label %196

196:                                              ; preds = %195, %114
  %197 = load i32, i32* %4, align 4
  %198 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %199 = getelementptr inbounds [80 x i64], [80 x i64]* %14, i64 0, i64 0
  %200 = call i32 @strlenW(i64* %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = load i32, i32* @DT_CENTER, align 4
  %203 = load i32, i32* @DT_VCENTER, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @DT_SINGLELINE, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @DrawTextW(i32 %197, i64* %198, i32 %200, %struct.TYPE_16__* %201, i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @SetTextColor(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %196
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %59

214:                                              ; preds = %59
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @SetBkMode(i32 %215, i32 %216)
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @SelectObject(i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %214, %2
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @DTS_UPDOWN, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %257, label %228

228:                                              ; preds = %221
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 5
  %232 = load i32, i32* @DFC_SCROLL, align 4
  %233 = load i32, i32* @DFCS_SCROLLDOWN, align 4
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %228
  %239 = load i32, i32* @DFCS_PUSHED, align 4
  br label %241

240:                                              ; preds = %228
  br label %241

241:                                              ; preds = %240, %238
  %242 = phi i32 [ %239, %238 ], [ 0, %240 ]
  %243 = or i32 %233, %242
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @WS_DISABLED, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %241
  %251 = load i32, i32* @DFCS_INACTIVE, align 4
  br label %253

252:                                              ; preds = %241
  br label %253

253:                                              ; preds = %252, %250
  %254 = phi i32 [ %251, %250 ], [ 0, %252 ]
  %255 = or i32 %243, %254
  %256 = call i32 @DrawFrameControl(i32 %229, i32* %231, i32 %232, i32 %255)
  br label %257

257:                                              ; preds = %253, %221
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @DATETIME_ReturnTxt(%struct.TYPE_17__*, i32, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i64*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i32 @DATETIME_ReturnFieldWidth(%struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DrawTextW(i32, i64*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @DrawFrameControl(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
