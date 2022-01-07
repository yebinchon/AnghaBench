; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleKeyDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_HandleKeyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LBS_WANTKEYBOARDINPUT = common dso_local global i32 0, align 4
@WM_VKEYTOITEM = common dso_local global i32 0, align 4
@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@LBS_EXTENDEDSEL = common dso_local global i32 0, align 4
@LBS_MULTIPLESEL = common dso_local global i32 0, align 4
@LBS_NOTIFY = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@CBF_NOROLLUP = common dso_local global i32 0, align 4
@LBN_SELCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @LISTBOX_HandleKeyDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_HandleKeyDown(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call i64 @IS_MULTISELECT(%struct.TYPE_12__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %14
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LBS_WANTKEYBOARDINPUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WM_VKEYTOITEM, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @LOWORD(i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MAKEWPARAM(i32 %37, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @SendMessageW(i32 %34, i32 %35, i32 %41, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %372

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %283

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  switch i32 %55, label %280 [
    i32 133, label %56
    i32 128, label %82
    i32 130, label %91
    i32 136, label %121
    i32 131, label %137
    i32 132, label %179
    i32 134, label %228
    i32 135, label %229
    i32 129, label %234
  ]

56:                                               ; preds = %54
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %72, %63
  br label %282

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %54, %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %82
  br label %282

91:                                               ; preds = %54
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %91
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %98
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %111, %98
  br label %282

120:                                              ; preds = %91
  br label %121

121:                                              ; preds = %54, %120
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %121
  br label %282

137:                                              ; preds = %54
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %137
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %147, %150
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 1, i32* %8, align 4
  br label %155

155:                                              ; preds = %154, %144
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = sub nsw i32 %158, %163
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %174

166:                                              ; preds = %137
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = call i32 @LISTBOX_GetCurrentPageSize(%struct.TYPE_12__* %170)
  %172 = sub nsw i32 %169, %171
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %166, %155
  %175 = load i32, i32* %6, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %174
  br label %282

179:                                              ; preds = %54
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %179
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = sdiv i32 %189, %192
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  store i32 1, i32* %9, align 4
  br label %197

197:                                              ; preds = %196, %186
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %201, %204
  %206 = add nsw i32 %200, %205
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %216

208:                                              ; preds = %179
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %213 = call i32 @LISTBOX_GetCurrentPageSize(%struct.TYPE_12__* %212)
  %214 = add nsw i32 %211, %213
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %208, %197
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = icmp sge i32 %217, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %222, %216
  br label %282

228:                                              ; preds = %54
  store i32 0, i32* %6, align 4
  br label %282

229:                                              ; preds = %54
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = sub nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %282

234:                                              ; preds = %54
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @LBS_EXTENDEDSEL, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %6, align 4
  br label %279

245:                                              ; preds = %234
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @LBS_MULTIPLESEL, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %245
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 10
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @LBS_NOTIFY, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i32 @LISTBOX_SetSelection(%struct.TYPE_12__* %253, i32 %256, i32 %269, i32 %276)
  br label %278

278:                                              ; preds = %252, %245
  br label %279

279:                                              ; preds = %278, %241
  br label %282

280:                                              ; preds = %54
  %281 = load i32, i32* @FALSE, align 4
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %280, %279, %229, %228, %227, %178, %136, %119, %90, %80
  br label %283

283:                                              ; preds = %282, %51
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %286, %283
  %291 = load i32, i32* %6, align 4
  %292 = icmp sge i32 %291, 0
  br i1 %292, label %293, label %371

293:                                              ; preds = %290
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @LBS_EXTENDEDSEL, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %293
  %301 = load i32, i32* @VK_SHIFT, align 4
  %302 = call i32 @GetKeyState(i32 %301)
  %303 = and i32 %302, 32768
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %300, %293
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %307 = call i64 @IS_MULTISELECT(%struct.TYPE_12__* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %305, %300
  %310 = load i32, i32* %6, align 4
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 7
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %309, %305
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %315 = load i32, i32* %6, align 4
  %316 = load i32, i32* @TRUE, align 4
  %317 = call i32 @LISTBOX_MoveCaret(%struct.TYPE_12__* %314, i32 %315, i32 %316)
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @LBS_MULTIPLESEL, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %313
  %325 = load i32, i32* %6, align 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  br label %334

328:                                              ; preds = %313
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* @TRUE, align 4
  %332 = load i32, i32* @FALSE, align 4
  %333 = call i32 @LISTBOX_SetSelection(%struct.TYPE_12__* %329, i32 %330, i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %328, %324
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @LBS_NOTIFY, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %370

341:                                              ; preds = %334
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 8
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %343, align 8
  %345 = icmp ne %struct.TYPE_11__* %344, null
  br i1 %345, label %346, label %360

346:                                              ; preds = %341
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 9
  %349 = load i64, i64* %348, align 8
  %350 = call i64 @IsWindowVisible(i64 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %346
  %353 = load i32, i32* @CBF_NOROLLUP, align 4
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %353
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %352, %346, %341
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %360
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %367 = load i32, i32* @LBN_SELCHANGE, align 4
  %368 = call i32 @SEND_NOTIFICATION(%struct.TYPE_12__* %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %360
  br label %370

370:                                              ; preds = %369, %334
  br label %371

371:                                              ; preds = %370, %290
  store i32 0, i32* %3, align 4
  br label %372

372:                                              ; preds = %371, %49
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i64 @IS_MULTISELECT(%struct.TYPE_12__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @LISTBOX_GetCurrentPageSize(%struct.TYPE_12__*) #1

declare dso_local i32 @LISTBOX_SetSelection(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @GetKeyState(i32) #1

declare dso_local i32 @LISTBOX_MoveCaret(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @IsWindowVisible(i64) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
