; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_theme_scrollbar.c_paint_scrollbar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_theme_scrollbar.c_paint_scrollbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@SBS_VERT = common dso_local global i32 0, align 4
@SBS_SIZEBOX = common dso_local global i32 0, align 4
@SBS_SIZEGRIP = common dso_local global i32 0, align 4
@SBS_SIZEBOXTOPLEFTALIGN = common dso_local global i32 0, align 4
@SZB_TOPLEFTALIGN = common dso_local global i32 0, align 4
@SZB_RIGHTALIGN = common dso_local global i32 0, align 4
@SBP_SIZEBOX = common dso_local global i32 0, align 4
@OBJID_CLIENT = common dso_local global i32 0, align 4
@SIF_ALL = common dso_local global i32 0, align 4
@SB_CTL = common dso_local global i32 0, align 4
@SCRBS_DISABLED = common dso_local global i32 0, align 4
@SCRBS_NORMAL = common dso_local global i32 0, align 4
@tracking_win = common dso_local global i64 0, align 8
@tracking_hot_part = common dso_local global i64 0, align 8
@SCROLL_TOP_RECT = common dso_local global i64 0, align 8
@SCRBS_HOT = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_RECT = common dso_local global i64 0, align 8
@SCROLL_THUMB = common dso_local global i64 0, align 8
@ABS_UPDISABLED = common dso_local global i32 0, align 4
@ABS_DOWNDISABLED = common dso_local global i32 0, align 4
@ABS_UPNORMAL = common dso_local global i32 0, align 4
@ABS_DOWNNORMAL = common dso_local global i32 0, align 4
@SCROLL_TOP_ARROW = common dso_local global i64 0, align 8
@ABS_UPHOT = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_ARROW = common dso_local global i64 0, align 8
@ABS_DOWNHOT = common dso_local global i32 0, align 4
@SBP_ARROWBTN = common dso_local global i32 0, align 4
@TS_DRAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not get up arrow size.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get down arrow size.\0A\00", align 1
@SCROLL_MIN_RECT = common dso_local global i64 0, align 8
@SBP_UPPERTRACKVERT = common dso_local global i32 0, align 4
@SBP_THUMBBTNVERT = common dso_local global i32 0, align 4
@SBP_GRIPPERVERT = common dso_local global i32 0, align 4
@TMT_CONTENTMARGINS = common dso_local global i32 0, align 4
@SBP_LOWERTRACKVERT = common dso_local global i32 0, align 4
@ABS_LEFTDISABLED = common dso_local global i32 0, align 4
@ABS_RIGHTDISABLED = common dso_local global i32 0, align 4
@ABS_LEFTNORMAL = common dso_local global i32 0, align 4
@ABS_RIGHTNORMAL = common dso_local global i32 0, align 4
@ABS_LEFTHOT = common dso_local global i32 0, align 4
@ABS_RIGHTHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not get left arrow size.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not get right arrow size.\0A\00", align 1
@SBP_UPPERTRACKHORZ = common dso_local global i32 0, align 4
@SBP_THUMBBTNHORZ = common dso_local global i32 0, align 4
@SBP_GRIPPERHORZ = common dso_local global i32 0, align 4
@SBP_LOWERTRACKHORZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @paint_scrollbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paint_scrollbar(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca %struct.TYPE_18__, align 8
  %21 = alloca %struct.TYPE_15__, align 4
  %22 = alloca %struct.TYPE_15__, align 4
  %23 = alloca %struct.TYPE_15__, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_19__, align 4
  %27 = alloca %struct.TYPE_15__, align 4
  %28 = alloca %struct.TYPE_15__, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_19__, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @GWL_STYLE, align 4
  %34 = call i32 @GetWindowLongW(i64 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SBS_VERT, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @IsWindowEnabled(i64 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @GetWindowRect(i64 %43, %struct.TYPE_18__* %7)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 0, %49
  %51 = call i32 @OffsetRect(%struct.TYPE_18__* %7, i64 %47, i64 %50)
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @BeginPaint(i64 %52, i32* %6)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SBS_SIZEBOX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %2
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SBS_SIZEGRIP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58, %2
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @SBS_SIZEBOXTOPLEFTALIGN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @SZB_TOPLEFTALIGN, align 4
  store i32 %69, i32* %11, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @SZB_RIGHTALIGN, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SBP_SIZEBOX, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @DrawThemeBackground(i32 %73, i32 %74, i32 %75, i32 %76, %struct.TYPE_18__* %7, i32* null)
  br label %580

78:                                               ; preds = %58
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 4, i32* %79, align 4
  %80 = load i64, i64* %3, align 8
  %81 = load i32, i32* @OBJID_CLIENT, align 4
  %82 = call i32 @GetScrollBarInfo(i64 %80, i32 %81, %struct.TYPE_17__* %12)
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 8, i32* %83, align 4
  %84 = load i32, i32* @SIF_ALL, align 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load i64, i64* %3, align 8
  %87 = load i32, i32* @SB_CTL, align 4
  %88 = call i32 @GetScrollInfo(i64 %86, i32 %87, %struct.TYPE_16__* %13)
  %89 = bitcast %struct.TYPE_18__* %20 to i8*
  %90 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 32, i1 false)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @SCRBS_DISABLED, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* @SCRBS_DISABLED, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* @SCRBS_DISABLED, align 4
  store i32 %96, i32* %18, align 4
  br label %126

97:                                               ; preds = %78
  %98 = load i32, i32* @SCRBS_NORMAL, align 4
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* @SCRBS_NORMAL, align 4
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* @SCRBS_NORMAL, align 4
  store i32 %100, i32* %18, align 4
  %101 = load i64, i64* @tracking_win, align 8
  %102 = load i64, i64* %3, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %97
  %105 = load i64, i64* @tracking_hot_part, align 8
  %106 = load i64, i64* @SCROLL_TOP_RECT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @SCRBS_HOT, align 4
  store i32 %109, i32* %16, align 4
  br label %124

110:                                              ; preds = %104
  %111 = load i64, i64* @tracking_hot_part, align 8
  %112 = load i64, i64* @SCROLL_BOTTOM_RECT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @SCRBS_HOT, align 4
  store i32 %115, i32* %17, align 4
  br label %123

116:                                              ; preds = %110
  %117 = load i64, i64* @tracking_hot_part, align 8
  %118 = load i64, i64* @SCROLL_THUMB, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @SCRBS_HOT, align 4
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %108
  br label %125

125:                                              ; preds = %124, %97
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %354

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* @ABS_UPDISABLED, align 4
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* @ABS_DOWNDISABLED, align 4
  store i32 %134, i32* %25, align 4
  br label %156

135:                                              ; preds = %129
  %136 = load i32, i32* @ABS_UPNORMAL, align 4
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* @ABS_DOWNNORMAL, align 4
  store i32 %137, i32* %25, align 4
  %138 = load i64, i64* @tracking_win, align 8
  %139 = load i64, i64* %3, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load i64, i64* @tracking_hot_part, align 8
  %143 = load i64, i64* @SCROLL_TOP_ARROW, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @ABS_UPHOT, align 4
  store i32 %146, i32* %24, align 4
  br label %154

147:                                              ; preds = %141
  %148 = load i64, i64* @tracking_hot_part, align 8
  %149 = load i64, i64* @SCROLL_BOTTOM_ARROW, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @ABS_DOWNHOT, align 4
  store i32 %152, i32* %25, align 4
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %145
  br label %155

155:                                              ; preds = %154, %135
  br label %156

156:                                              ; preds = %155, %132
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @SBP_ARROWBTN, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* @TS_DRAW, align 4
  %162 = call i32 @GetThemePartSize(i32 %157, i32 %158, i32 %159, i32 %160, i32* null, i32 %161, %struct.TYPE_15__* %22)
  %163 = call i64 @FAILED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %583

167:                                              ; preds = %156
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @SBP_ARROWBTN, align 4
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* @TS_DRAW, align 4
  %173 = call i32 @GetThemePartSize(i32 %168, i32 %169, i32 %170, i32 %171, i32* null, i32 %172, %struct.TYPE_15__* %23)
  %174 = call i64 @FAILED(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %583

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %180, %182
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  %187 = sub nsw i64 %183, %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  %191 = sub nsw i64 %187, %190
  %192 = load i64, i64* @SCROLL_MIN_RECT, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %178
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %196, %198
  %200 = load i64, i64* @SCROLL_MIN_RECT, align 8
  %201 = sub nsw i64 %199, %200
  %202 = sdiv i64 %201, 2
  %203 = trunc i64 %202 to i32
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %194, %178
  %207 = bitcast %struct.TYPE_18__* %19 to i8*
  %208 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 32, i1 false)
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  %214 = add nsw i64 %210, %213
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i64 %214, i64* %215, align 8
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @SBP_ARROWBTN, align 4
  %219 = load i32, i32* %24, align 4
  %220 = call i32 @DrawThemeBackground(i32 %216, i32 %217, i32 %218, i32 %219, %struct.TYPE_18__* %19, i32* null)
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  store i64 %222, i64* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i64 %225, i64* %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  %232 = sub nsw i64 %228, %231
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i64 %232, i64* %233, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @SBP_ARROWBTN, align 4
  %237 = load i32, i32* %25, align 4
  %238 = call i32 @DrawThemeBackground(i32 %234, i32 %235, i32 %236, i32 %237, %struct.TYPE_18__* %19, i32* null)
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  store i64 %240, i64* %241, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = sub nsw i64 %243, %245
  %247 = trunc i64 %246 to i32
  %248 = call i32 @calc_thumb_dimensions(i32 %247, %struct.TYPE_16__* %13, i32* %14, i32* %15)
  %249 = load i32, i32* %14, align 4
  %250 = icmp ugt i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %206
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i64 %253, i64* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = zext i32 %257 to i64
  %259 = add nsw i64 %256, %258
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i64 %259, i64* %260, align 8
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* @SBP_UPPERTRACKVERT, align 4
  %264 = load i32, i32* %16, align 4
  %265 = call i32 @DrawThemeBackground(i32 %261, i32 %262, i32 %263, i32 %264, %struct.TYPE_18__* %19, i32* null)
  br label %266

266:                                              ; preds = %251, %206
  %267 = load i32, i32* %15, align 4
  %268 = icmp ugt i32 %267, 0
  br i1 %268, label %269, label %324

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = zext i32 %272 to i64
  %274 = add nsw i64 %271, %273
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i64 %274, i64* %275, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* %15, align 4
  %279 = zext i32 %278 to i64
  %280 = add nsw i64 %277, %279
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i64 %280, i64* %281, align 8
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* @SBP_THUMBBTNVERT, align 4
  %285 = load i32, i32* %18, align 4
  %286 = call i32 @DrawThemeBackground(i32 %282, i32 %283, i32 %284, i32 %285, %struct.TYPE_18__* %19, i32* null)
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @SBP_GRIPPERVERT, align 4
  %290 = load i32, i32* %18, align 4
  %291 = load i32, i32* @TS_DRAW, align 4
  %292 = call i32 @GetThemePartSize(i32 %287, i32 %288, i32 %289, i32 %290, i32* null, i32 %291, %struct.TYPE_15__* %21)
  %293 = call i64 @SUCCEEDED(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %323

295:                                              ; preds = %269
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* %5, align 4
  %298 = load i32, i32* @SBP_THUMBBTNVERT, align 4
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* @TMT_CONTENTMARGINS, align 4
  %301 = call i32 @GetThemeMargins(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, %struct.TYPE_18__* %19, %struct.TYPE_19__* %26)
  %302 = call i64 @SUCCEEDED(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %15, align 4
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = sub i32 %307, %309
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sub i32 %310, %312
  %314 = icmp ule i32 %306, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %304
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* %5, align 4
  %318 = load i32, i32* @SBP_GRIPPERVERT, align 4
  %319 = load i32, i32* %18, align 4
  %320 = call i32 @DrawThemeBackground(i32 %316, i32 %317, i32 %318, i32 %319, %struct.TYPE_18__* %19, i32* null)
  br label %321

321:                                              ; preds = %315, %304
  br label %322

322:                                              ; preds = %321, %295
  br label %323

323:                                              ; preds = %322, %269
  br label %324

324:                                              ; preds = %323, %266
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %15, align 4
  %327 = add i32 %325, %326
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = sub nsw i64 %330, %332
  %334 = icmp slt i64 %328, %333
  br i1 %334, label %335, label %353

335:                                              ; preds = %324
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i64 %337, i64* %338, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* %15, align 4
  %342 = zext i32 %341 to i64
  %343 = add nsw i64 %340, %342
  %344 = load i32, i32* %14, align 4
  %345 = zext i32 %344 to i64
  %346 = add nsw i64 %343, %345
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i64 %346, i64* %347, align 8
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* @SBP_LOWERTRACKVERT, align 4
  %351 = load i32, i32* %17, align 4
  %352 = call i32 @DrawThemeBackground(i32 %348, i32 %349, i32 %350, i32 %351, %struct.TYPE_18__* %19, i32* null)
  br label %353

353:                                              ; preds = %335, %324
  br label %579

354:                                              ; preds = %126
  %355 = load i32, i32* %10, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i32, i32* @ABS_LEFTDISABLED, align 4
  store i32 %358, i32* %29, align 4
  %359 = load i32, i32* @ABS_RIGHTDISABLED, align 4
  store i32 %359, i32* %30, align 4
  br label %381

360:                                              ; preds = %354
  %361 = load i32, i32* @ABS_LEFTNORMAL, align 4
  store i32 %361, i32* %29, align 4
  %362 = load i32, i32* @ABS_RIGHTNORMAL, align 4
  store i32 %362, i32* %30, align 4
  %363 = load i64, i64* @tracking_win, align 8
  %364 = load i64, i64* %3, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %360
  %367 = load i64, i64* @tracking_hot_part, align 8
  %368 = load i64, i64* @SCROLL_TOP_ARROW, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %366
  %371 = load i32, i32* @ABS_LEFTHOT, align 4
  store i32 %371, i32* %29, align 4
  br label %379

372:                                              ; preds = %366
  %373 = load i64, i64* @tracking_hot_part, align 8
  %374 = load i64, i64* @SCROLL_BOTTOM_ARROW, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = load i32, i32* @ABS_RIGHTHOT, align 4
  store i32 %377, i32* %30, align 4
  br label %378

378:                                              ; preds = %376, %372
  br label %379

379:                                              ; preds = %378, %370
  br label %380

380:                                              ; preds = %379, %360
  br label %381

381:                                              ; preds = %380, %357
  %382 = load i32, i32* %4, align 4
  %383 = load i32, i32* %5, align 4
  %384 = load i32, i32* @SBP_ARROWBTN, align 4
  %385 = load i32, i32* %29, align 4
  %386 = load i32, i32* @TS_DRAW, align 4
  %387 = call i32 @GetThemePartSize(i32 %382, i32 %383, i32 %384, i32 %385, i32* null, i32 %386, %struct.TYPE_15__* %27)
  %388 = call i64 @FAILED(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %381
  %391 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %583

392:                                              ; preds = %381
  %393 = load i32, i32* %4, align 4
  %394 = load i32, i32* %5, align 4
  %395 = load i32, i32* @SBP_ARROWBTN, align 4
  %396 = load i32, i32* %30, align 4
  %397 = load i32, i32* @TS_DRAW, align 4
  %398 = call i32 @GetThemePartSize(i32 %393, i32 %394, i32 %395, i32 %396, i32* null, i32 %397, %struct.TYPE_15__* %28)
  %399 = call i64 @FAILED(i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %392
  %402 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %583

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = sub nsw i64 %405, %407
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  %412 = sub nsw i64 %408, %411
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  %416 = sub nsw i64 %412, %415
  %417 = load i64, i64* @SCROLL_MIN_RECT, align 8
  %418 = icmp slt i64 %416, %417
  br i1 %418, label %419, label %431

419:                                              ; preds = %403
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = sub nsw i64 %421, %423
  %425 = load i64, i64* @SCROLL_MIN_RECT, align 8
  %426 = sub nsw i64 %424, %425
  %427 = sdiv i64 %426, 2
  %428 = trunc i64 %427 to i32
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store i32 %428, i32* %429, align 4
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  store i32 %428, i32* %430, align 4
  br label %431

431:                                              ; preds = %419, %403
  %432 = bitcast %struct.TYPE_18__* %19 to i8*
  %433 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %432, i8* align 8 %433, i64 32, i1 false)
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = zext i32 %437 to i64
  %439 = add nsw i64 %435, %438
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i64 %439, i64* %440, align 8
  %441 = load i32, i32* %4, align 4
  %442 = load i32, i32* %5, align 4
  %443 = load i32, i32* @SBP_ARROWBTN, align 4
  %444 = load i32, i32* %29, align 4
  %445 = call i32 @DrawThemeBackground(i32 %441, i32 %442, i32 %443, i32 %444, %struct.TYPE_18__* %19, i32* null)
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %447 = load i64, i64* %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  store i64 %447, i64* %448, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i64 %450, i64* %451, align 8
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %453 = load i64, i64* %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = zext i32 %455 to i64
  %457 = sub nsw i64 %453, %456
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i64 %457, i64* %458, align 8
  %459 = load i32, i32* %4, align 4
  %460 = load i32, i32* %5, align 4
  %461 = load i32, i32* @SBP_ARROWBTN, align 4
  %462 = load i32, i32* %30, align 4
  %463 = call i32 @DrawThemeBackground(i32 %459, i32 %460, i32 %461, i32 %462, %struct.TYPE_18__* %19, i32* null)
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  store i64 %465, i64* %466, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = sub nsw i64 %468, %470
  %472 = trunc i64 %471 to i32
  %473 = call i32 @calc_thumb_dimensions(i32 %472, %struct.TYPE_16__* %13, i32* %14, i32* %15)
  %474 = load i32, i32* %14, align 4
  %475 = icmp ugt i32 %474, 0
  br i1 %475, label %476, label %491

476:                                              ; preds = %431
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i64 %478, i64* %479, align 8
  %480 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load i32, i32* %14, align 4
  %483 = zext i32 %482 to i64
  %484 = add nsw i64 %481, %483
  %485 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i64 %484, i64* %485, align 8
  %486 = load i32, i32* %4, align 4
  %487 = load i32, i32* %5, align 4
  %488 = load i32, i32* @SBP_UPPERTRACKHORZ, align 4
  %489 = load i32, i32* %16, align 4
  %490 = call i32 @DrawThemeBackground(i32 %486, i32 %487, i32 %488, i32 %489, %struct.TYPE_18__* %19, i32* null)
  br label %491

491:                                              ; preds = %476, %431
  %492 = load i32, i32* %15, align 4
  %493 = icmp ugt i32 %492, 0
  br i1 %493, label %494, label %549

494:                                              ; preds = %491
  %495 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i32, i32* %14, align 4
  %498 = zext i32 %497 to i64
  %499 = add nsw i64 %496, %498
  %500 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i64 %499, i64* %500, align 8
  %501 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = load i32, i32* %15, align 4
  %504 = zext i32 %503 to i64
  %505 = add nsw i64 %502, %504
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i64 %505, i64* %506, align 8
  %507 = load i32, i32* %4, align 4
  %508 = load i32, i32* %5, align 4
  %509 = load i32, i32* @SBP_THUMBBTNHORZ, align 4
  %510 = load i32, i32* %18, align 4
  %511 = call i32 @DrawThemeBackground(i32 %507, i32 %508, i32 %509, i32 %510, %struct.TYPE_18__* %19, i32* null)
  %512 = load i32, i32* %4, align 4
  %513 = load i32, i32* %5, align 4
  %514 = load i32, i32* @SBP_GRIPPERHORZ, align 4
  %515 = load i32, i32* %18, align 4
  %516 = load i32, i32* @TS_DRAW, align 4
  %517 = call i32 @GetThemePartSize(i32 %512, i32 %513, i32 %514, i32 %515, i32* null, i32 %516, %struct.TYPE_15__* %21)
  %518 = call i64 @SUCCEEDED(i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %548

520:                                              ; preds = %494
  %521 = load i32, i32* %4, align 4
  %522 = load i32, i32* %5, align 4
  %523 = load i32, i32* @SBP_THUMBBTNHORZ, align 4
  %524 = load i32, i32* %18, align 4
  %525 = load i32, i32* @TMT_CONTENTMARGINS, align 4
  %526 = call i32 @GetThemeMargins(i32 %521, i32 %522, i32 %523, i32 %524, i32 %525, %struct.TYPE_18__* %19, %struct.TYPE_19__* %31)
  %527 = call i64 @SUCCEEDED(i32 %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %547

529:                                              ; preds = %520
  %530 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* %15, align 4
  %533 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %534 = load i32, i32* %533, align 4
  %535 = sub i32 %532, %534
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  %537 = load i32, i32* %536, align 4
  %538 = sub i32 %535, %537
  %539 = icmp ule i32 %531, %538
  br i1 %539, label %540, label %546

540:                                              ; preds = %529
  %541 = load i32, i32* %4, align 4
  %542 = load i32, i32* %5, align 4
  %543 = load i32, i32* @SBP_GRIPPERHORZ, align 4
  %544 = load i32, i32* %18, align 4
  %545 = call i32 @DrawThemeBackground(i32 %541, i32 %542, i32 %543, i32 %544, %struct.TYPE_18__* %19, i32* null)
  br label %546

546:                                              ; preds = %540, %529
  br label %547

547:                                              ; preds = %546, %520
  br label %548

548:                                              ; preds = %547, %494
  br label %549

549:                                              ; preds = %548, %491
  %550 = load i32, i32* %14, align 4
  %551 = load i32, i32* %15, align 4
  %552 = add i32 %550, %551
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %555 = load i64, i64* %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = sub nsw i64 %555, %557
  %559 = icmp slt i64 %553, %558
  br i1 %559, label %560, label %578

560:                                              ; preds = %549
  %561 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i64 %562, i64* %563, align 8
  %564 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = load i32, i32* %15, align 4
  %567 = zext i32 %566 to i64
  %568 = add nsw i64 %565, %567
  %569 = load i32, i32* %14, align 4
  %570 = zext i32 %569 to i64
  %571 = add nsw i64 %568, %570
  %572 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i64 %571, i64* %572, align 8
  %573 = load i32, i32* %4, align 4
  %574 = load i32, i32* %5, align 4
  %575 = load i32, i32* @SBP_LOWERTRACKHORZ, align 4
  %576 = load i32, i32* %17, align 4
  %577 = call i32 @DrawThemeBackground(i32 %573, i32 %574, i32 %575, i32 %576, %struct.TYPE_18__* %19, i32* null)
  br label %578

578:                                              ; preds = %560, %549
  br label %579

579:                                              ; preds = %578, %353
  br label %580

580:                                              ; preds = %579, %72
  %581 = load i64, i64* %3, align 8
  %582 = call i32 @EndPaint(i64 %581, i32* %6)
  br label %583

583:                                              ; preds = %580, %401, %390, %176, %165
  ret void
}

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_18__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @BeginPaint(i64, i32*) #1

declare dso_local i32 @DrawThemeBackground(i32, i32, i32, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @GetScrollBarInfo(i64, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @GetScrollInfo(i64, i32, %struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @GetThemePartSize(i32, i32, i32, i32, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @calc_thumb_dimensions(i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @GetThemeMargins(i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @EndPaint(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
