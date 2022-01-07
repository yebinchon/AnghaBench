; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintTitle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintTitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__*, i32, i32*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@MONTHCAL_PaintTitle.mmmmW = internal constant [5 x i8] c"MMMM\00", align 1
@MONTHCAL_PaintTitle.mmmW = internal constant [4 x i8] c"MMM\00", align 1
@MONTHCAL_PaintTitle.mmW = internal constant [3 x i8] c"MM\00", align 1
@MONTHCAL_PaintTitle.fmtyearW = internal constant [4 x i8] c"%ld\00", align 1
@MONTHCAL_PaintTitle.fmtmmW = internal constant [5 x i8] c"%02d\00", align 1
@MONTHCAL_PaintTitle.fmtmW = internal constant [3 x i8] c"%d\00", align 1
@BrushTitle = common dso_local global i64 0, align 8
@MCSC_TITLEBK = common dso_local global i64 0, align 8
@MCSC_TITLETEXT = common dso_local global i64 0, align 8
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DATE_YEARMONTH = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@LOCALE_SYEARMONTH = common dso_local global i64 0, align 8
@LOCALE_SMONTHNAME1 = common dso_local global i64 0, align 8
@LOCALE_SABBREVMONTHNAME1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, i32*, i64)* @MONTHCAL_PaintTitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_PaintTitle(%struct.TYPE_16__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i8], align 16
  %14 = alloca [6 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %9, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @BrushTitle, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FillRect(i32 %31, %struct.TYPE_15__* %32, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @MCSC_TITLEBK, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SetBkColor(i32 %40, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @MCSC_TITLETEXT, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SetTextColor(i32 %48, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SelectObject(i32 %56, i32 %59)
  %61 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %62 = load i32, i32* @DATE_YEARMONTH, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i8* %65)
  %67 = call i32 @GetDateFormatW(i32 %61, i32 %62, %struct.TYPE_13__* %63, i32* null, i8* %64, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %71 = call i32 @strlenW(i8* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = load i32, i32* @DT_CENTER, align 4
  %74 = load i32, i32* @DT_VCENTER, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @DT_SINGLELINE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @DrawTextW(i32 %68, i8* %69, i32 %71, %struct.TYPE_15__* %72, i32 %77)
  %79 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %80 = load i64, i64* @LOCALE_SYEARMONTH, align 8
  %81 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %82 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %83 = call i32 @ARRAY_SIZE(i8* %82)
  %84 = call i32 @GetLocaleInfoW(i32 %79, i64 %80, i8* %81, i32 %83)
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @wsprintfW(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MONTHCAL_PaintTitle.fmtyearW, i64 0, i64 0), i64 %88)
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %91 = call i64 @strstrW(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MONTHCAL_PaintTitle.mmmmW, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %4
  %94 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %95 = load i64, i64* @LOCALE_SMONTHNAME1, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = sub nsw i64 %99, 1
  %101 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %102 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %103 = call i32 @ARRAY_SIZE(i8* %102)
  %104 = call i32 @GetLocaleInfoW(i32 %94, i64 %100, i8* %101, i32 %103)
  br label %139

105:                                              ; preds = %4
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %107 = call i64 @strstrW(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MONTHCAL_PaintTitle.mmmW, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %111 = load i64, i64* @LOCALE_SABBREVMONTHNAME1, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = sub nsw i64 %115, 1
  %117 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %119 = call i32 @ARRAY_SIZE(i8* %118)
  %120 = call i32 @GetLocaleInfoW(i32 %110, i64 %116, i8* %117, i32 %119)
  br label %138

121:                                              ; preds = %105
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %123 = call i64 @strstrW(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MONTHCAL_PaintTitle.mmW, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @wsprintfW(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MONTHCAL_PaintTitle.fmtmmW, i64 0, i64 0), i64 %129)
  br label %137

131:                                              ; preds = %121
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @wsprintfW(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MONTHCAL_PaintTitle.fmtmW, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %109
  br label %139

139:                                              ; preds = %138, %93
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %156, %139
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 %148
  %150 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %151 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %152 = call i32 @strlenW(i8* %151)
  %153 = call i32 @strncmpW(i8* %149, i8* %150, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %140

159:                                              ; preds = %155, %140
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %176, %159
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 %168
  %170 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %171 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %172 = call i32 @strlenW(i8* %171)
  %173 = call i32 @strncmpW(i8* %169, i8* %170, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %166
  br label %179

176:                                              ; preds = %166
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %160

179:                                              ; preds = %175, %160
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 0, i32* %180, align 4
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, i32* %6, align 4
  %185 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @GetTextExtentPoint32W(i32 %184, i8* %185, i32 %186, %struct.TYPE_14__* %18)
  br label %188

188:                                              ; preds = %183, %179
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  store i32 %190, i32* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 0, i32* %198, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %188
  %202 = load i32, i32* %6, align 4
  %203 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @GetTextExtentPoint32W(i32 %202, i8* %203, i32 %204, %struct.TYPE_14__* %18)
  br label %206

206:                                              ; preds = %201, %188
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  store i32 %208, i32* %215, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 %218
  %220 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %221 = call i32 @strlenW(i8* %220)
  %222 = call i32 @GetTextExtentPoint32W(i32 %216, i8* %219, i32 %221, %struct.TYPE_14__* %18)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %230, %232
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = load i64, i64* %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  store i32 %233, i32* %240, align 4
  %241 = load i32, i32* %6, align 4
  %242 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %243 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %244 = call i32 @strlenW(i8* %243)
  %245 = call i32 @GetTextExtentPoint32W(i32 %241, i8* %242, i32 %244, %struct.TYPE_14__* %18)
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %253, %255
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = load i64, i64* %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  store i32 %256, i32* %263, align 4
  %264 = load i32, i32* %6, align 4
  %265 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %266 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %267 = call i32 @strlenW(i8* %266)
  %268 = call i32 @GetTextExtentPoint32W(i32 %264, i8* %265, i32 %267, %struct.TYPE_14__* %18)
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %271, %274
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = sub nsw i32 %275, %277
  %279 = sdiv i32 %278, 2
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %279, %282
  store i32 %283, i32* %17, align 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = load i64, i64* %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load i32, i32* %17, align 4
  %291 = call i32 @OffsetRect(%struct.TYPE_17__* %289, i32 %290, i32 0)
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = load i64, i64* %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @OffsetRect(%struct.TYPE_17__* %297, i32 %298, i32 0)
  ret void
}

declare dso_local i32 @FillRect(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetDateFormatW(i32, i32, %struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @DrawTextW(i32, i8*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @GetLocaleInfoW(i32, i64, i8*, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i64) #1

declare dso_local i64 @strstrW(i8*, i8*) #1

declare dso_local i32 @strncmpW(i8*, i8*, i32) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i8*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
