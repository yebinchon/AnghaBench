; ModuleID = '/home/carl/AnghaBench/reactos/base/system/logonui/extr_NT5design.c_NT5_DrawBaseBackground.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/logonui/extr_NT5design.c_NT5_DrawBaseBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@g_pInfo = common dso_local global %struct.TYPE_11__* null, align 8
@NT5_TOP_BORDER_HEIGHT = common dso_local global i64 0, align 8
@NT5_BOTTOM_BORDER_HEIGHT = common dso_local global i64 0, align 8
@PATCOPY = common dso_local global i32 0, align 4
@IDB_MAIN_PANEL_SHINE = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@IDB_TOP_DIVIDER_STRIP = common dso_local global i32 0, align 4
@IDB_BOTTOM_DIVIDER_STRIP = common dso_local global i32 0, align 4
@GRADIENT_FILL_RECT_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NT5_DrawBaseBackground(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x %struct.TYPE_8__], align 16
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32* @CreateCompatibleDC(i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %257

24:                                               ; preds = %1
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @CreateCompatibleBitmap(i32* %25, i64 %28, i64 %31)
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %256

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @SelectObject(i32* %36, i32* %37)
  %39 = call i32 @RGB(i32 90, i32 126, i32 220)
  %40 = call i32* @CreateSolidBrush(i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @SelectObject(i32* %41, i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* @NT5_BOTTOM_BORDER_HEIGHT, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i32, i32* @PATCOPY, align 4
  %57 = call i32 @PatBlt(i32* %44, i32 0, i64 %45, i64 %48, i64 %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @DeleteObject(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IDB_MAIN_PANEL_SHINE, align 4
  %64 = call i32 @MAKEINTRESOURCEW(i32 %63)
  %65 = load i32, i32* @IMAGE_BITMAP, align 4
  %66 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %67 = call i64 @LoadImageW(i32 %62, i32 %64, i32 %65, i32 0, i32 0, i32 %66)
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %35
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @GetObjectW(i32* %72, i32 16, %struct.TYPE_10__* %8)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32* @CreateCompatibleDC(i32* %74)
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @SelectObject(i32* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* @SRCCOPY, align 4
  %90 = call i32 @BitBlt(i32* %82, i32 0, i64 %83, i32 %85, i64 %87, i32* %88, i32 0, i32 0, i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @DeleteDC(i32* %91)
  br label %93

93:                                               ; preds = %78, %71
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @DeleteObject(i32* %94)
  br label %96

96:                                               ; preds = %93, %35
  %97 = call i32 @RGB(i32 0, i32 48, i32 156)
  %98 = call i32* @CreateSolidBrush(i32 %97)
  store i32* %98, i32** %11, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @SelectObject(i32* %99, i32* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %107 = load i32, i32* @PATCOPY, align 4
  %108 = call i32 @PatBlt(i32* %102, i32 0, i64 0, i64 %105, i64 %106, i32 %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @DeleteObject(i32* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IDB_TOP_DIVIDER_STRIP, align 4
  %115 = call i32 @MAKEINTRESOURCEW(i32 %114)
  %116 = load i32, i32* @IMAGE_BITMAP, align 4
  %117 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %118 = call i64 @LoadImageW(i32 %113, i32 %115, i32 %116, i32 0, i32 0, i32 %117)
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %10, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %153

122:                                              ; preds = %96
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @GetObjectW(i32* %123, i32 16, %struct.TYPE_10__* %12)
  %125 = load i32*, i32** %2, align 8
  %126 = call i32* @CreateCompatibleDC(i32* %125)
  store i32* %126, i32** %13, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %150

129:                                              ; preds = %122
  %130 = load i32*, i32** %13, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @SelectObject(i32* %130, i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %134, %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i64, i64* @NT5_TOP_BORDER_HEIGHT, align 8
  %146 = load i32, i32* @SRCCOPY, align 4
  %147 = call i32 @StretchBlt(i32* %133, i32 0, i64 %137, i64 %140, i64 %141, i32* %142, i32 0, i32 0, i32 %144, i64 %145, i32 %146)
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @DeleteDC(i32* %148)
  br label %150

150:                                              ; preds = %129, %122
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @DeleteObject(i32* %151)
  br label %153

153:                                              ; preds = %150, %96
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IDB_BOTTOM_DIVIDER_STRIP, align 4
  %158 = call i32 @MAKEINTRESOURCE(i32 %157)
  %159 = load i32, i32* @IMAGE_BITMAP, align 4
  %160 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %161 = call i64 @LoadImage(i32 %156, i32 %158, i32 %159, i32 0, i32 0, i32 %160)
  %162 = inttoptr i64 %161 to i32*
  store i32* %162, i32** %14, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %211

165:                                              ; preds = %153
  %166 = load i32*, i32** %14, align 8
  %167 = call i32 @GetObjectW(i32* %166, i32 16, %struct.TYPE_10__* %17)
  %168 = load i32*, i32** %2, align 8
  %169 = call i32* @CreateCompatibleDC(i32* %168)
  store i32* %169, i32** %18, align 8
  %170 = load i32*, i32** %18, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %208

172:                                              ; preds = %165
  %173 = load i32*, i32** %18, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = call i32 @SelectObject(i32* %173, i32* %174)
  %176 = load i32*, i32** %4, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @NT5_BOTTOM_BORDER_HEIGHT, align 8
  %181 = sub nsw i64 %179, %180
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @NT5_BOTTOM_BORDER_HEIGHT, align 8
  %189 = sub nsw i64 %187, %188
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %189, %191
  %193 = load i32*, i32** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @NT5_BOTTOM_BORDER_HEIGHT, align 8
  %200 = sub nsw i64 %198, %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %200, %202
  %204 = load i32, i32* @SRCCOPY, align 4
  %205 = call i32 @StretchBlt(i32* %176, i32 0, i64 %181, i64 %184, i64 %192, i32* %193, i32 0, i32 0, i32 %195, i64 %203, i32 %204)
  %206 = load i32*, i32** %18, align 8
  %207 = call i32 @DeleteDC(i32* %206)
  br label %208

208:                                              ; preds = %172, %165
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @DeleteObject(i32* %209)
  br label %211

211:                                              ; preds = %208, %153
  %212 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @NT5_BOTTOM_BORDER_HEIGHT, align 8
  %218 = sub nsw i64 %216, %217
  %219 = add nsw i64 %218, 2
  %220 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 16
  %222 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  store i32 14592, i32* %223, align 16
  %224 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  store i32 13312, i32* %225, align 4
  %226 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  store i32 44544, i32* %227, align 8
  %228 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 3
  store i32 0, i32* %229, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 5
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_pInfo, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 4
  store i64 %237, i64* %239, align 16
  %240 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  store i32 0, i32* %241, align 16
  %242 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32 12288, i32* %243, align 4
  %244 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  store i32 38400, i32* %245, align 8
  %246 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  store i32 0, i32* %247, align 4
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i64 0, i64* %248, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %252 = load i32, i32* @GRADIENT_FILL_RECT_H, align 4
  %253 = call i32 @GradientFill(i32* %250, %struct.TYPE_8__* %251, i32 2, %struct.TYPE_9__* %16, i32 1, i32 %252)
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @DeleteObject(i32* %254)
  br label %256

256:                                              ; preds = %211, %24
  br label %257

257:                                              ; preds = %256, %1
  %258 = load i32*, i32** %4, align 8
  ret i32* %258
}

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32* @CreateCompatibleBitmap(i32*, i64, i64) #1

declare dso_local i32 @SelectObject(i32*, i32*) #1

declare dso_local i32* @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @PatBlt(i32*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @GetObjectW(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @BitBlt(i32*, i32, i64, i32, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32*) #1

declare dso_local i32 @StretchBlt(i32*, i32, i64, i64, i64, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @GradientFill(i32*, %struct.TYPE_8__*, i32, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
