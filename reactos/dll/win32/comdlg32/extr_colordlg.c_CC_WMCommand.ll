; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_WMCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_WMCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"CC_WMCommand wParam=%lx lParam=%lx\0A\00", align 1
@EN_UPDATE = common dso_local global i32 0, align 4
@HELPMSGSTRINGA = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@psh15 = common dso_local global i32 0, align 4
@COLOROKSTRINGA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32, i32)* @CC_WMCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_WMCommand(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @LOWORD(i32 %23)
  switch i32 %24, label %396 [
    i32 132, label %25
    i32 135, label %25
    i32 136, label %25
    i32 134, label %130
    i32 131, label %130
    i32 133, label %130
    i32 137, label %213
    i32 138, label %223
    i32 130, label %258
    i32 128, label %316
    i32 129, label %360
    i32 139, label %390
  ]

25:                                               ; preds = %5, %5, %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @EN_UPDATE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %129

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %129, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @CC_CheckDigitsInEdit(i32 %35, i32 255)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @GetRValue(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @GetGValue(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GetBValue(i32 %53)
  store i32 %54, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @LOWORD(i32 %55)
  switch i32 %56, label %81 [
    i32 132, label %57
    i32 135, label %65
    i32 136, label %73
  ]

57:                                               ; preds = %34
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %16, align 4
  br i1 %60, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %81

65:                                               ; preds = %34
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %16, align 4
  br i1 %68, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %70, %65
  br label %81

73:                                               ; preds = %34
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %16, align 4
  br i1 %76, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %73
  br label %81

81:                                               ; preds = %34, %80, %72, %64
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @RGB(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = call i32 @CC_PaintSelectedColor(%struct.TYPE_11__* %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @CC_RGBtoHSL(i8 signext 72, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @CC_RGBtoHSL(i8 signext 83, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 5
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @CC_RGBtoHSL(i8 signext 76, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = call i32 @CC_EditSetHSL(%struct.TYPE_11__* %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = call i32 @CC_PaintCross(%struct.TYPE_11__* %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = call i32 @CC_PaintTriangle(%struct.TYPE_11__* %126)
  br label %128

128:                                              ; preds = %84, %81
  br label %129

129:                                              ; preds = %128, %29, %25
  br label %396

130:                                              ; preds = %5, %5, %5
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @EN_UPDATE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %212

134:                                              ; preds = %130
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %212, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @LOWORD(i32 %141)
  %143 = icmp eq i32 %142, 134
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 239, i32 240
  %146 = call i32 @CC_CheckDigitsInEdit(i32 %140, i32 %145)
  store i32 %146, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @LOWORD(i32 %147)
  switch i32 %148, label %185 [
    i32 134, label %149
    i32 131, label %161
    i32 133, label %173
  ]

149:                                              ; preds = %139
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %150, %153
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %16, align 4
  br i1 %154, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %149
  br label %185

161:                                              ; preds = %139
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %162, %165
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %16, align 4
  br i1 %166, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %161
  br label %185

173:                                              ; preds = %139
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %174, %177
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %16, align 4
  br i1 %178, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %180, %173
  br label %185

185:                                              ; preds = %139, %184, %172, %160
  %186 = load i32, i32* %16, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %185
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @CC_HSLtoRGB(i32 %191, i32 %194, i32 %197)
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  store i32 %198, i32* %202, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = call i32 @CC_PaintSelectedColor(%struct.TYPE_11__* %203)
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = call i32 @CC_EditSetRGB(%struct.TYPE_11__* %205)
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %208 = call i32 @CC_PaintCross(%struct.TYPE_11__* %207)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %210 = call i32 @CC_PaintTriangle(%struct.TYPE_11__* %209)
  br label %211

211:                                              ; preds = %188, %185
  br label %212

212:                                              ; preds = %211, %134, %130
  br label %396

213:                                              ; preds = %5
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 6
  %217 = call i32 @CC_SwitchToFullSize(%struct.TYPE_11__* %214, i32* %216)
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @GetDlgItem(i32 %220, i32 134)
  %222 = call i32 @SetFocus(i32 %221)
  br label %396

223:                                              ; preds = %5
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  store i32* %228, i32** %19, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 5
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %19, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = srem i32 %237, 2
  %239 = mul nsw i32 %238, 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = sdiv i32 %242, 2
  %244 = add nsw i32 %239, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %234, i64 %245
  store i32 %233, i32* %246, align 4
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  %251 = icmp eq i32 %250, 16
  br i1 %251, label %252, label %255

252:                                              ; preds = %223
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 3
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %223
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %257 = call i32 @CC_PaintUserColorArray(%struct.TYPE_11__* %256, i32 2, i32 8)
  br label %396

258:                                              ; preds = %5
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @GetDC(i32 %261)
  store i32 %262, i32* %18, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @GetNearestColor(i32 %263, i32 %268)
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 5
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  store i32 %269, i32* %273, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %18, align 4
  %278 = call i32 @ReleaseDC(i32 %276, i32 %277)
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %280 = call i32 @CC_EditSetRGB(%struct.TYPE_11__* %279)
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %282 = call i32 @CC_PaintSelectedColor(%struct.TYPE_11__* %281)
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @CC_RGBtoHSL(i8 signext 72, i32 %287)
  %289 = ptrtoint i8* %288 to i32
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i8* @CC_RGBtoHSL(i8 signext 83, i32 %296)
  %298 = ptrtoint i8* %297 to i32
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 5
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = call i8* @CC_RGBtoHSL(i8 signext 76, i32 %305)
  %307 = ptrtoint i8* %306 to i32
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %311 = call i32 @CC_EditSetHSL(%struct.TYPE_11__* %310)
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %313 = call i32 @CC_PaintCross(%struct.TYPE_11__* %312)
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %315 = call i32 @CC_PaintTriangle(%struct.TYPE_11__* %314)
  br label %396

316:                                              ; preds = %5
  %317 = load i32, i32* @HELPMSGSTRINGA, align 4
  %318 = call i32 @RegisterWindowMessageA(i32 %317)
  store i32 %318, i32* %15, align 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 5
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %316
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 5
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %15, align 4
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 5
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = ptrtoint %struct.TYPE_12__* %334 to i32
  %336 = call i32 @SendMessageA(i32 %330, i32 %331, i32 0, i32 %335)
  br label %337

337:                                              ; preds = %325, %316
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 5
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %339, align 8
  %341 = call i32 @CC_HookCallChk(%struct.TYPE_12__* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %359

343:                                              ; preds = %337
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @WM_COMMAND, align 4
  %353 = load i32, i32* @psh15, align 4
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 5
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %355, align 8
  %357 = ptrtoint %struct.TYPE_12__* %356 to i32
  %358 = call i32 @CallWindowProcA(i32 %348, i32 %351, i32 %352, i32 %353, i32 %357)
  br label %359

359:                                              ; preds = %343, %337
  br label %396

360:                                              ; preds = %5
  %361 = load i32, i32* @COLOROKSTRINGA, align 4
  %362 = call i32 @RegisterWindowMessageA(i32 %361)
  store i32 %362, i32* %17, align 4
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 5
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %384

369:                                              ; preds = %360
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 5
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %17, align 4
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 5
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %377, align 8
  %379 = ptrtoint %struct.TYPE_12__* %378 to i32
  %380 = call i32 @SendMessageA(i32 %374, i32 %375, i32 0, i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %369
  br label %396

383:                                              ; preds = %369
  br label %384

384:                                              ; preds = %383, %360
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @EndDialog(i32 %387, i32 1)
  %389 = load i32, i32* @TRUE, align 4
  store i32 %389, i32* %6, align 4
  br label %398

390:                                              ; preds = %5
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @EndDialog(i32 %393, i32 0)
  %395 = load i32, i32* @TRUE, align 4
  store i32 %395, i32* %6, align 4
  br label %398

396:                                              ; preds = %5, %382, %359, %258, %255, %213, %212, %129
  %397 = load i32, i32* @FALSE, align 4
  store i32 %397, i32* %6, align 4
  br label %398

398:                                              ; preds = %396, %390, %384
  %399 = load i32, i32* %6, align 4
  ret i32 %399
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @CC_CheckDigitsInEdit(i32, i32) #1

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @CC_PaintSelectedColor(%struct.TYPE_11__*) #1

declare dso_local i8* @CC_RGBtoHSL(i8 signext, i32) #1

declare dso_local i32 @CC_EditSetHSL(%struct.TYPE_11__*) #1

declare dso_local i32 @CC_PaintCross(%struct.TYPE_11__*) #1

declare dso_local i32 @CC_PaintTriangle(%struct.TYPE_11__*) #1

declare dso_local i32 @CC_HSLtoRGB(i32, i32, i32) #1

declare dso_local i32 @CC_EditSetRGB(%struct.TYPE_11__*) #1

declare dso_local i32 @CC_SwitchToFullSize(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @CC_PaintUserColorArray(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetNearestColor(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @RegisterWindowMessageA(i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @CC_HookCallChk(%struct.TYPE_12__*) #1

declare dso_local i32 @CallWindowProcA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EndDialog(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
