; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_theme_scrollbar.c_redraw_part.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_theme_scrollbar.c_redraw_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@SBS_VERT = common dso_local global i32 0, align 4
@SCROLL_NOWHERE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
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
@SCROLL_MIN_RECT = common dso_local global i32 0, align 4
@SCROLL_TOP_ARROW = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_ARROW = common dso_local global i32 0, align 4
@SIF_ALL = common dso_local global i32 0, align 4
@SB_CTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"GetScrollInfo failed.\0A\00", align 1
@SCROLL_TOP_RECT = common dso_local global i32 0, align 4
@SCROLL_THUMB = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_RECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @redraw_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redraw_part(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GWL_STYLE, align 4
  %20 = call i32 @GetWindowLongW(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SBS_VERT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SCROLL_NOWHERE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @InvalidateRect(i32 %28, %struct.TYPE_12__* null, i32 %29)
  br label %282

31:                                               ; preds = %3
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @GetWindowRect(i32 %32, %struct.TYPE_12__* %10)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 0, %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 0, %38
  %40 = call i32 @OffsetRect(%struct.TYPE_12__* %10, i32 %36, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SBP_ARROWBTN, align 4
  %48 = load i32, i32* @ABS_UPNORMAL, align 4
  %49 = load i32, i32* @TS_DRAW, align 4
  %50 = call i32 @GetThemePartSize(i32 %46, i32* null, i32 %47, i32 %48, i32* null, i32 %49, %struct.TYPE_10__* %9)
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %58

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SBP_ARROWBTN, align 4
  %61 = load i32, i32* @ABS_DOWNNORMAL, align 4
  %62 = load i32, i32* @TS_DRAW, align 4
  %63 = call i32 @GetThemePartSize(i32 %59, i32* null, i32 %60, i32 %61, i32* null, i32 %62, %struct.TYPE_10__* %9)
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %71

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %68, %66
  br label %101

72:                                               ; preds = %31
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SBP_ARROWBTN, align 4
  %77 = load i32, i32* @ABS_LEFTNORMAL, align 4
  %78 = load i32, i32* @TS_DRAW, align 4
  %79 = call i32 @GetThemePartSize(i32 %75, i32* null, i32 %76, i32 %77, i32* null, i32 %78, %struct.TYPE_10__* %9)
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %87

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %82
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SBP_ARROWBTN, align 4
  %90 = load i32, i32* @ABS_RIGHTNORMAL, align 4
  %91 = load i32, i32* @TS_DRAW, align 4
  %92 = call i32 @GetThemePartSize(i32 %88, i32* null, i32 %89, i32 %90, i32* null, i32 %91, %struct.TYPE_10__* %9)
  %93 = call i64 @FAILED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %100

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %97, %95
  br label %101

101:                                              ; preds = %100, %71
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @SCROLL_MIN_RECT, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add i32 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = add i32 %105, %106
  %108 = icmp ult i32 %102, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @SCROLL_MIN_RECT, align 4
  %112 = sub i32 %110, %111
  %113 = udiv i32 %112, 2
  store i32 %113, i32* %14, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %109, %101
  %115 = bitcast %struct.TYPE_12__* %11 to i8*
  %116 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 16, i1 false)
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @SCROLL_TOP_ARROW, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %125, %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 %127, i32* %128, align 4
  br label %135

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add i32 %131, %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %123
  br label %278

136:                                              ; preds = %114
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @SCROLL_BOTTOM_ARROW, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %14, align 4
  %147 = sub i32 %145, %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  br label %155

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %14, align 4
  %153 = sub i32 %151, %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %143
  br label %277

156:                                              ; preds = %136
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 8, i32* %157, align 4
  %158 = load i32, i32* @SIF_ALL, align 4
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @SB_CTL, align 4
  %162 = call i32 @GetScrollInfo(i32 %160, i32 %161, %struct.TYPE_11__* %17)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %156
  %165 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %282

166:                                              ; preds = %156
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sub i32 %167, %168
  %170 = load i32, i32* %14, align 4
  %171 = sub i32 %169, %170
  %172 = call i32 @calc_thumb_dimensions(i32 %171, %struct.TYPE_11__* %17, i32* %15, i32* %16)
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @SCROLL_TOP_RECT, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %166
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add i32 %181, %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %183, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %15, align 4
  %188 = add i32 %186, %187
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 %188, i32* %189, align 4
  br label %201

190:                                              ; preds = %176
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %13, align 4
  %194 = add i32 %192, %193
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %194, i32* %195, align 4
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %15, align 4
  %199 = add i32 %197, %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %190, %179
  br label %276

202:                                              ; preds = %166
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @SCROLL_THUMB, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %236

206:                                              ; preds = %202
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %13, align 4
  %213 = add i32 %211, %212
  %214 = load i32, i32* %15, align 4
  %215 = add i32 %213, %214
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %16, align 4
  %220 = add i32 %218, %219
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 %220, i32* %221, align 4
  br label %235

222:                                              ; preds = %206
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %13, align 4
  %226 = add i32 %224, %225
  %227 = load i32, i32* %15, align 4
  %228 = add i32 %226, %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %228, i32* %229, align 4
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %16, align 4
  %233 = add i32 %231, %232
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %222, %209
  br label %275

236:                                              ; preds = %202
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @SCROLL_BOTTOM_RECT, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %236
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %13, align 4
  %247 = add i32 %245, %246
  %248 = load i32, i32* %15, align 4
  %249 = add i32 %247, %248
  %250 = load i32, i32* %16, align 4
  %251 = add i32 %249, %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %251, i32* %252, align 4
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %14, align 4
  %256 = sub i32 %254, %255
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 %256, i32* %257, align 4
  br label %273

258:                                              ; preds = %240
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %13, align 4
  %262 = add i32 %260, %261
  %263 = load i32, i32* %15, align 4
  %264 = add i32 %262, %263
  %265 = load i32, i32* %16, align 4
  %266 = add i32 %264, %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %266, i32* %267, align 4
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %14, align 4
  %271 = sub i32 %269, %270
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i32 %271, i32* %272, align 4
  br label %273

273:                                              ; preds = %258, %243
  br label %274

274:                                              ; preds = %273, %236
  br label %275

275:                                              ; preds = %274, %235
  br label %276

276:                                              ; preds = %275, %201
  br label %277

277:                                              ; preds = %276, %155
  br label %278

278:                                              ; preds = %277, %135
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @TRUE, align 4
  %281 = call i32 @InvalidateRect(i32 %279, %struct.TYPE_12__* %11, i32 %280)
  br label %282

282:                                              ; preds = %278, %164, %27
  ret void
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @GetThemePartSize(i32, i32*, i32, i32, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @WARN(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetScrollInfo(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @calc_thumb_dimensions(i32, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
