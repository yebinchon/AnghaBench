; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_Paint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i64, i64, i32, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }

@EF_FOCUSED = common dso_local global i32 0, align 4
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@SM_CXBORDER = common dso_local global i32 0, align 4
@SM_CYBORDER = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@COLOR_WINDOWFRAME = common dso_local global i32 0, align 4
@PATCOPY = common dso_local global i32 0, align 4
@COLOR_GRAYTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64)* @EDIT_WM_Paint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_Paint(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EF_FOCUSED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ES_NOHIDESEL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %30, %23
  %38 = phi i1 [ true, %23 ], [ %36, %30 ]
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi i1 [ false, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  br label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @BeginPaint(i32 %49, i32* %5)
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i64 [ %45, %44 ], [ %50, %46 ]
  store i64 %52, i64* %7, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GetClientRect(i32 %57, %struct.TYPE_19__* %10)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @EDIT_NotifyCtlColor(%struct.TYPE_20__* %59, i64 %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @IntersectClipRect(i64 %62, i64 %64, i64 %66, i64 %68, i64 %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @WS_BORDER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %208

78:                                               ; preds = %51
  %79 = load i32, i32* @SM_CXBORDER, align 4
  %80 = call i64 @GetSystemMetrics(i32 %79)
  store i64 %80, i64* %15, align 8
  %81 = load i32, i32* @SM_CYBORDER, align 4
  %82 = call i64 @GetSystemMetrics(i32 %81)
  store i64 %82, i64* %16, align 8
  %83 = bitcast %struct.TYPE_19__* %9 to i8*
  %84 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 32, i1 false)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ES_MULTILINE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %78
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WS_HSCROLL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %99
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %98, %91
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @WS_VSCROLL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %78
  %117 = load i64, i64* %7, align 8
  %118 = load i32, i32* @COLOR_WINDOWFRAME, align 4
  %119 = call i64 @GetSysColorBrush(i32 %118)
  %120 = call i64 @SelectObject(i64 %117, i64 %119)
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %127, %129
  %131 = load i64, i64* %16, align 8
  %132 = load i32, i32* @PATCOPY, align 4
  %133 = call i32 @PatBlt(i64 %121, i64 %123, i64 %125, i64 %130, i64 %131, i32 %132)
  %134 = load i64, i64* %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %141, %143
  %145 = load i32, i32* @PATCOPY, align 4
  %146 = call i32 @PatBlt(i64 %134, i64 %136, i64 %138, i64 %139, i64 %144, i32 %145)
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %154, %156
  %158 = load i64, i64* %15, align 8
  %159 = sub nsw i64 0, %158
  %160 = load i32, i32* @PATCOPY, align 4
  %161 = call i32 @PatBlt(i64 %147, i64 %149, i64 %152, i64 %157, i64 %159, i32 %160)
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, 1
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %171, %173
  %175 = load i32, i32* @PATCOPY, align 4
  %176 = call i32 @PatBlt(i64 %162, i64 %165, i64 %167, i64 %169, i64 %174, i32 %175)
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* %14, align 8
  %179 = call i64 @SelectObject(i64 %177, i64 %178)
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %15, align 8
  %184 = add nsw i64 %182, %183
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %16, align 8
  %188 = add nsw i64 %186, %187
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %15, align 8
  %192 = sub nsw i64 %190, %191
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %15, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i64 @max(i64 %192, i64 %196)
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %16, align 8
  %201 = sub nsw i64 %199, %200
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %16, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i64 @max(i64 %201, i64 %205)
  %207 = call i32 @IntersectClipRect(i64 %180, i64 %184, i64 %188, i64 %197, i64 %206)
  br label %208

208:                                              ; preds = %116, %51
  %209 = load i64, i64* %7, align 8
  %210 = call i32 @GetClipBox(i64 %209, %struct.TYPE_19__* %9)
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* %13, align 8
  %213 = call i32 @FillRect(i64 %211, %struct.TYPE_19__* %9, i64 %212)
  %214 = load i64, i64* %7, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @IntersectClipRect(i64 %214, i64 %218, i64 %222, i64 %226, i64 %230)
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @ES_MULTILINE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %208
  %239 = bitcast %struct.TYPE_19__* %9 to i8*
  %240 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %239, i8* align 8 %240, i64 32, i1 false)
  %241 = load i64, i64* %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @IntersectClipRect(i64 %241, i64 %243, i64 %245, i64 %247, i64 %249)
  br label %251

251:                                              ; preds = %238, %208
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i64, i64* %7, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @SelectObject(i64 %257, i64 %260)
  store i64 %261, i64* %8, align 8
  br label %262

262:                                              ; preds = %256, %251
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %262
  %268 = load i64, i64* %7, align 8
  %269 = load i32, i32* @COLOR_GRAYTEXT, align 4
  %270 = call i32 @GetSysColor(i32 %269)
  %271 = call i32 @SetTextColor(i64 %268, i32 %270)
  br label %272

272:                                              ; preds = %267, %262
  %273 = load i64, i64* %7, align 8
  %274 = call i32 @GetClipBox(i64 %273, %struct.TYPE_19__* %12)
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @ES_MULTILINE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %325

281:                                              ; preds = %272
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %283 = call i64 @get_vertical_line_count(%struct.TYPE_20__* %282)
  store i64 %283, i64* %18, align 8
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %6, align 8
  br label %287

287:                                              ; preds = %321, %281
  %288 = load i64, i64* %6, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %18, align 8
  %293 = add nsw i64 %291, %292
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %296, %299
  %301 = sub nsw i64 %300, 1
  %302 = call i64 @min(i64 %293, i64 %301)
  %303 = icmp sle i64 %288, %302
  br i1 %303, label %304, label %324

304:                                              ; preds = %287
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %306 = load i64, i64* %7, align 8
  %307 = load i64, i64* %6, align 8
  %308 = call i32 @EDIT_UpdateUniscribeData(%struct.TYPE_20__* %305, i64 %306, i64 %307)
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %310 = load i64, i64* %6, align 8
  %311 = call i32 @EDIT_GetLineRect(%struct.TYPE_20__* %309, i64 %310, i32 0, i32 -1, %struct.TYPE_19__* %11)
  %312 = call i64 @IntersectRect(%struct.TYPE_19__* %9, %struct.TYPE_19__* %12, %struct.TYPE_19__* %11)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %304
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %316 = load i64, i64* %7, align 8
  %317 = load i64, i64* %6, align 8
  %318 = load i32, i32* %17, align 4
  %319 = call i32 @EDIT_PaintLine(%struct.TYPE_20__* %315, i64 %316, i64 %317, i32 %318)
  br label %320

320:                                              ; preds = %314, %304
  br label %321

321:                                              ; preds = %320
  %322 = load i64, i64* %6, align 8
  %323 = add nsw i64 %322, 1
  store i64 %323, i64* %6, align 8
  br label %287

324:                                              ; preds = %287
  br label %339

325:                                              ; preds = %272
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %327 = load i64, i64* %7, align 8
  %328 = call i32 @EDIT_UpdateUniscribeData(%struct.TYPE_20__* %326, i64 %327, i64 0)
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %330 = call i32 @EDIT_GetLineRect(%struct.TYPE_20__* %329, i64 0, i32 0, i32 -1, %struct.TYPE_19__* %11)
  %331 = call i64 @IntersectRect(%struct.TYPE_19__* %9, %struct.TYPE_19__* %12, %struct.TYPE_19__* %11)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %325
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %335 = load i64, i64* %7, align 8
  %336 = load i32, i32* %17, align 4
  %337 = call i32 @EDIT_PaintLine(%struct.TYPE_20__* %334, i64 %335, i64 0, i32 %336)
  br label %338

338:                                              ; preds = %333, %325
  br label %339

339:                                              ; preds = %338, %324
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 5
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load i64, i64* %7, align 8
  %346 = load i64, i64* %8, align 8
  %347 = call i64 @SelectObject(i64 %345, i64 %346)
  br label %348

348:                                              ; preds = %344, %339
  %349 = load i64, i64* %4, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %348
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @EndPaint(i32 %354, i32* %5)
  br label %356

356:                                              ; preds = %351, %348
  ret void
}

declare dso_local i64 @BeginPaint(i32, i32*) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @EDIT_NotifyCtlColor(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @IntersectClipRect(i64, i64, i64, i64, i64) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SelectObject(i64, i64) #1

declare dso_local i64 @GetSysColorBrush(i32) #1

declare dso_local i32 @PatBlt(i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @GetClipBox(i64, %struct.TYPE_19__*) #1

declare dso_local i32 @FillRect(i64, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @SetTextColor(i64, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_20__*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @EDIT_UpdateUniscribeData(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @EDIT_GetLineRect(%struct.TYPE_20__*, i64, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @IntersectRect(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @EDIT_PaintLine(%struct.TYPE_20__*, i64, i64, i32) #1

declare dso_local i32 @EndPaint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
