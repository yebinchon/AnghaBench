; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawMenuBarTemp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_draw.c_MyDrawMenuBarTemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32*, i64 }

@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@COLOR_MENUBAR = common dso_local global i64 0, align 8
@COLOR_MENU = common dso_local global i64 0, align 8
@PS_SOLID = common dso_local global i32 0, align 4
@COLOR_3DFACE = common dso_local global i64 0, align 8
@MF_BYPOSITION = common dso_local global i32 0, align 4
@DT_CALCRECT = common dso_local global i32 0, align 4
@MENU_BAR_ITEMS_SPACE = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i64 0, align 8
@COLOR_HIGHLIGHT = common dso_local global i64 0, align 8
@COLOR_MENUHILIGHT = common dso_local global i64 0, align 8
@COLOR_MENUTEXT = common dso_local global i64 0, align 8
@BDR_SUNKENOUTER = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@COLOR_GRAYTEXT = common dso_local global i64 0, align 8
@TRANSPARENT = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i64 0, align 8
@COLOR_BTNSHADOW = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MyDrawMenuBarTemp(i32 %0, i32 %1, %struct.TYPE_11__* %2, i32 %3, i32 %4, %struct.TYPE_12__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__, align 8
  %22 = alloca [128 x i32], align 16
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %12, align 8
  %24 = load i32, i32* @DT_CENTER, align 4
  %25 = load i32, i32* @DT_VCENTER, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DT_SINGLELINE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %23, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %6
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @COLOR_MENUBAR, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CreateSolidBrush(i32 %40)
  store i32 %41, i32* %13, align 4
  br label %50

42:                                               ; preds = %6
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @COLOR_MENU, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CreateSolidBrush(i32 %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %42, %34
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @FillRect(i32 %51, %struct.TYPE_11__* %52, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @DeleteObject(i32 %55)
  %57 = load i32, i32* @PS_SOLID, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @COLOR_3DFACE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CreatePen(i32 %57, i32 0, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @SelectObject(i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @MoveToEx(i32 %68, i32 %71, i64 %75, i32* null)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i32 @LineTo(i32 %77, i32 %80, i64 %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @SelectObject(i32 %86, i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @DeleteObject(i32 %89)
  %91 = load i64, i64* %17, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %50
  %94 = load i64, i64* @COLOR_MENUBAR, align 8
  br label %97

95:                                               ; preds = %50
  %96 = load i64, i64* @COLOR_MENU, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %19, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @SelectObject(i32 %103, i32 %104)
  store i32 %105, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %327, %97
  %107 = load i32, i32* %18, align 4
  %108 = icmp slt i32 %107, 3
  br i1 %108, label %109, label %330

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %18, align 4
  %112 = getelementptr inbounds [128 x i32], [128 x i32]* %22, i64 0, i64 0
  %113 = load i32, i32* @MF_BYPOSITION, align 4
  %114 = call i32 @GetMenuStringW(i32 %110, i32 %111, i32* %112, i32 128, i32 %113)
  %115 = load i32, i32* %20, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  store i32 %120, i32* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = getelementptr inbounds [128 x i32], [128 x i32]* %22, i64 0, i64 0
  %128 = load i32, i32* @DT_SINGLELINE, align 4
  %129 = load i32, i32* @DT_CALCRECT, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @DrawTextW(i32 %126, i32* %127, i32 -1, %struct.TYPE_11__* %21, i32 %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i64 %134, i64* %135, align 8
  %136 = load i32, i32* @MENU_BAR_ITEMS_SPACE, align 4
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %141, %143
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %217

149:                                              ; preds = %109
  %150 = load i64, i64* %17, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @COLOR_HIGHLIGHTTEXT, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @SetTextColor(i32 %153, i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @COLOR_HIGHLIGHT, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @SetBkColor(i32 %161, i32 %167)
  %169 = call i32 @InflateRect(%struct.TYPE_11__* %21, i32 -1, i32 -1)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @COLOR_MENUHILIGHT, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @CreateSolidBrush(i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @FillRect(i32 %177, %struct.TYPE_11__* %21, i32 %178)
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @DeleteObject(i32 %180)
  %182 = call i32 @InflateRect(%struct.TYPE_11__* %21, i32 1, i32 1)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @COLOR_HIGHLIGHT, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @CreateSolidBrush(i32 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @FrameRect(i32 %190, %struct.TYPE_11__* %21, i32 %191)
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @DeleteObject(i32 %193)
  br label %216

195:                                              ; preds = %149
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @COLOR_MENUTEXT, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @SetTextColor(i32 %196, i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @COLOR_MENU, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @SetBkColor(i32 %204, i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @BDR_SUNKENOUTER, align 4
  %214 = load i32, i32* @BF_RECT, align 4
  %215 = call i32 @DrawEdge(i32 %212, %struct.TYPE_11__* %21, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %195, %152
  br label %261

217:                                              ; preds = %109
  %218 = load i32, i32* %18, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @COLOR_GRAYTEXT, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @SetTextColor(i32 %221, i32 %227)
  br label %238

229:                                              ; preds = %217
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @COLOR_MENUTEXT, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @SetTextColor(i32 %230, i32 %236)
  br label %238

238:                                              ; preds = %229, %220
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @SetBkColor(i32 %239, i32 %246)
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @CreateSolidBrush(i32 %254)
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @FillRect(i32 %256, %struct.TYPE_11__* %21, i32 %257)
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @DeleteObject(i32 %259)
  br label %261

261:                                              ; preds = %238, %216
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @TRANSPARENT, align 4
  %264 = call i32 @SetBkMode(i32 %262, i32 %263)
  %265 = load i32, i32* @MENU_BAR_ITEMS_SPACE, align 4
  %266 = sdiv i32 %265, 2
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, %266
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* @MENU_BAR_ITEMS_SPACE, align 4
  %271 = sdiv i32 %270, 2
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %273, %271
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %18, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %322

277:                                              ; preds = %261
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, 1
  store i64 %289, i64* %287, align 8
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* @COLOR_BTNHIGHLIGHT, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @SetTextColor(i32 %290, i32 %296)
  %298 = load i32, i32* %8, align 4
  %299 = getelementptr inbounds [128 x i32], [128 x i32]* %22, i64 0, i64 0
  %300 = load i32, i32* %23, align 4
  %301 = call i32 @DrawTextW(i32 %298, i32* %299, i32 -1, %struct.TYPE_11__* %21, i32 %300)
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %302, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %305, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, -1
  store i32 %310, i32* %308, align 4
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, -1
  store i64 %313, i64* %311, align 8
  %314 = load i32, i32* %8, align 4
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i64, i64* @COLOR_BTNSHADOW, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @SetTextColor(i32 %314, i32 %320)
  br label %322

322:                                              ; preds = %277, %261
  %323 = load i32, i32* %8, align 4
  %324 = getelementptr inbounds [128 x i32], [128 x i32]* %22, i64 0, i64 0
  %325 = load i32, i32* %23, align 4
  %326 = call i32 @DrawTextW(i32 %323, i32* %324, i32 -1, %struct.TYPE_11__* %21, i32 %325)
  br label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %18, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %18, align 4
  br label %106

330:                                              ; preds = %106
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %16, align 4
  %333 = call i32 @SelectObject(i32 %331, i32 %332)
  %334 = load i32, i32* @TRUE, align 4
  ret i32 %334
}

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i64, i32*) #1

declare dso_local i32 @LineTo(i32, i32, i64) #1

declare dso_local i32 @GetMenuStringW(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DrawTextW(i32, i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @InflateRect(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @FrameRect(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
