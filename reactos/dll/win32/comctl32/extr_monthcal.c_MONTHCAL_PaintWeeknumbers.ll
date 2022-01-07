; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintWeeknumbers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintWeeknumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_12__*, i32*, i64, i32*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i32, i64 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@MONTHCAL_PaintWeeknumbers.fmt_weekW = internal constant [3 x i8] c"%d\00", align 1
@MCS_WEEKNUMBERS = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_IFIRSTWEEKOFYEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unknown LOCALE_IFIRSTWEEKOFYEAR value %d, defaulting to 0\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BrushMonth = common dso_local global i64 0, align 8
@MCSC_TITLEBK = common dso_local global i64 0, align 8
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@PenText = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, i32*, i64)* @MONTHCAL_PaintWeeknumbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_PaintWeeknumbers(%struct.TYPE_15__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca [80 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MCS_WEEKNUMBERS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %293

33:                                               ; preds = %4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = call i32 @MONTHCAL_GetMinDate(%struct.TYPE_15__* %34, %struct.TYPE_13__* %16)
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = bitcast %struct.TYPE_13__* %16 to i8*
  %40 = bitcast %struct.TYPE_13__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i64 12, i64* %15, align 8
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %51 = load i32, i32* @LOCALE_IFIRSTWEEKOFYEAR, align 4
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(i8* %53)
  %55 = call i32 @GetLocaleInfoW(i32 %50, i32 %51, i8* %52, i32 %54)
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %57 = call i64 @atoiW(i8* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  switch i64 %58, label %62 [
    i64 1, label %59
    i64 2, label %60
    i64 0, label %61
  ]

59:                                               ; preds = %49
  store i64 6, i64* %10, align 8
  br label %65

60:                                               ; preds = %49
  store i64 3, i64* %10, align 8
  br label %65

61:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  br label %65

62:                                               ; preds = %49
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %63)
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %62, %61, %60, %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %126

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i64 1, i64* %72, align 8
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i64 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_13__* %16, i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = sub i64 %77, %78
  %80 = urem i64 %79, 7
  %81 = load i64, i64* %10, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  store i64 1, i64* %11, align 8
  br label %125

84:                                               ; preds = %70
  store i64 0, i64* %11, align 8
  store i64 0, i64* %14, align 8
  br label %85

85:                                               ; preds = %98, %84
  %86 = load i64, i64* %14, align 8
  %87 = icmp ult i64 %86, 11
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i64 @MONTHCAL_MonthLength(i64 %90, i32 %94)
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %88
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %14, align 8
  br label %85

101:                                              ; preds = %85
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %102, 7
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = udiv i64 %106, 7
  store i64 %107, i64* %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i64 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_13__* %16, i32 %111)
  store i64 %112, i64* %12, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = sub i64 %115, %116
  %118 = urem i64 %117, 7
  %119 = load i64, i64* %10, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %101
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %124

124:                                              ; preds = %121, %101
  br label %125

125:                                              ; preds = %124, %83
  br label %167

126:                                              ; preds = %65
  store i64 0, i64* %11, align 8
  store i64 0, i64* %14, align 8
  br label %127

127:                                              ; preds = %141, %126
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = sub i64 %129, 1
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @MONTHCAL_MonthLength(i64 %134, i32 %137)
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %11, align 8
  br label %141

141:                                              ; preds = %132
  %142 = load i64, i64* %14, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %14, align 8
  br label %127

144:                                              ; preds = %127
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, 7
  %147 = load i64, i64* %11, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = udiv i64 %149, 7
  store i64 %150, i64* %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 1, i32* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i64 1, i64* %152, align 8
  %153 = load i32, i32* @FALSE, align 4
  %154 = call i64 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_13__* %16, i32 %153)
  store i64 %154, i64* %12, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = sub i64 %157, %158
  %160 = urem i64 %159, 7
  %161 = load i64, i64* %10, align 8
  %162 = icmp ugt i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %144
  %164 = load i64, i64* %11, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %11, align 8
  br label %166

166:                                              ; preds = %163, %144
  br label %167

167:                                              ; preds = %166, %125
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i64, i64* %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = bitcast %struct.TYPE_14__* %19 to i8*
  %175 = bitcast %struct.TYPE_14__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 24, i1 false)
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @BrushMonth, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @FillRect(i32 %176, %struct.TYPE_14__* %19, i32 %182)
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @MCSC_TITLEBK, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @SetTextColor(i32 %184, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %193, %196
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i64 %197, i64* %198, align 8
  store i64 0, i64* %14, align 8
  br label %199

199:                                              ; preds = %241, %167
  %200 = load i64, i64* %14, align 8
  %201 = icmp ult i64 %200, 6
  br i1 %201, label %202, label %244

202:                                              ; preds = %199
  %203 = load i64, i64* %14, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i64, i64* %11, align 8
  %207 = icmp ugt i64 %206, 50
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %210 = load i64, i64* %11, align 8
  %211 = call i32 @wsprintfW(i8* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MONTHCAL_PaintWeeknumbers.fmt_weekW, i64 0, i64 0), i64 %210)
  store i64 0, i64* %11, align 8
  br label %228

212:                                              ; preds = %205, %202
  %213 = load i64, i64* %14, align 8
  %214 = icmp eq i64 %213, 5
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i64, i64* %11, align 8
  %217 = icmp ugt i64 %216, 47
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %220 = call i32 @wsprintfW(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MONTHCAL_PaintWeeknumbers.fmt_weekW, i64 0, i64 0), i64 1)
  br label %227

221:                                              ; preds = %215, %212
  %222 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* %14, align 8
  %225 = add i64 %223, %224
  %226 = call i32 @wsprintfW(i8* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MONTHCAL_PaintWeeknumbers.fmt_weekW, i64 0, i64 0), i64 %225)
  br label %227

227:                                              ; preds = %221, %218
  br label %228

228:                                              ; preds = %227, %208
  %229 = load i32, i32* %6, align 4
  %230 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %231 = load i32, i32* @DT_CENTER, align 4
  %232 = load i32, i32* @DT_VCENTER, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @DT_SINGLELINE, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @DrawTextW(i32 %229, i8* %230, i32 -1, %struct.TYPE_14__* %19, i32 %235)
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @OffsetRect(%struct.TYPE_14__* %19, i32 0, i64 %239)
  br label %241

241:                                              ; preds = %228
  %242 = load i64, i64* %14, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %14, align 8
  br label %199

244:                                              ; preds = %199
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @PenText, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @SelectObject(i32 %245, i32 %251)
  store i32 %252, i32* %18, align 4
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = load i64, i64* %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = load i64, i64* %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 3
  %271 = call i32 @MoveToEx(i32 %253, i32 %261, i64 %270, i32* null)
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = load i64, i64* %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = load i64, i64* %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @LineTo(i32 %272, i32 %280, i64 %288)
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %18, align 4
  %292 = call i32 @SelectObject(i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %244, %32
  ret void
}

declare dso_local i32 @MONTHCAL_GetMinDate(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @atoiW(i8*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i64 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @MONTHCAL_MonthLength(i64, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i64) #1

declare dso_local i32 @DrawTextW(i32, i8*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i64, i32*) #1

declare dso_local i32 @LineTo(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
