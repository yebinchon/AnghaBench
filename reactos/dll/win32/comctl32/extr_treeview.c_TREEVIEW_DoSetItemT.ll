; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_DoSetItemT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_DoSetItemT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"item %p\0A\00", align 1
@TVIF_TEXT = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i32* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"setting text %s, item %p\0A\00", align 1
@TEXT_CALLBACK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"setting callback, item %p\0A\00", align 1
@TVIF_CHILDREN = common dso_local global i32 0, align 4
@I_CHILDRENCALLBACK = common dso_local global i64 0, align 8
@TVIF_IMAGE = common dso_local global i32 0, align 4
@I_IMAGECALLBACK = common dso_local global i64 0, align 8
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_EXPANDEDIMAGE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVIF_INTEGRAL = common dso_local global i32 0, align 4
@TVIF_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"prevstate 0x%x, state 0x%x, mask 0x%x\0A\00", align 1
@TVIF_STATEEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"New extended state: 0x%x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64)* @TREEVIEW_DoSetItemT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TREEVIEW_DoSetItemT(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TVIF_TEXT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** @LPSTR_TEXTCALLBACKW, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 10
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %104

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 10
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @lstrlenW(i32* %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @CP_ACP, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 @MultiByteToWideChar(i32 %45, i32 0, i32 %49, i32 -1, i32* null, i32 0)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i8* @heap_realloc(i32* %54, i32 %58)
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %13, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %5, align 8
  br label %321

65:                                               ; preds = %51
  %66 = load i32, i32* @TVIF_TEXT, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 9
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 10
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @lstrcpynW(i32* %80, i32* %83, i32 %84)
  br label %97

86:                                               ; preds = %65
  %87 = load i32, i32* @CP_ACP, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 10
  %90 = load i32*, i32** %89, align 8
  %91 = ptrtoint i32* %90 to i32
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @MultiByteToWideChar(i32 %87, i32 0, i32 %91, i32 -1, i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %86, %77
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 9
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @debugstr_w(i32* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %101, %struct.TYPE_6__* %102)
  br label %124

104:                                              ; preds = %30, %22
  %105 = load i32, i32* @TVIF_TEXT, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 9
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @TEXT_CALLBACK_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i8* @heap_realloc(i32* %110, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 9
  store i32* %116, i32** %118, align 8
  %119 = load i32, i32* @TEXT_CALLBACK_SIZE, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %122)
  br label %124

124:                                              ; preds = %104, %97
  br label %125

125:                                              ; preds = %124, %4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @TVIF_CHILDREN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %125
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @I_CHILDRENCALLBACK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load i32, i32* @TVIF_CHILDREN, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %151

147:                                              ; preds = %132
  %148 = load i32, i32* @TVIF_CHILDREN, align 4
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %125
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TVIF_IMAGE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %152
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @I_IMAGECALLBACK, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %159
  %171 = load i32, i32* @TVIF_IMAGE, align 4
  %172 = load i32, i32* %11, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %11, align 4
  br label %178

174:                                              ; preds = %159
  %175 = load i32, i32* @TVIF_IMAGE, align 4
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %152
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %179
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @I_IMAGECALLBACK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %186
  %198 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %199 = load i32, i32* %11, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %205

201:                                              ; preds = %186
  %202 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %201, %197
  br label %206

206:                                              ; preds = %205, %179
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TVIF_EXPANDEDIMAGE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %206
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @I_IMAGECALLBACK, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %213
  %225 = load i32, i32* @TVIF_EXPANDEDIMAGE, align 4
  %226 = load i32, i32* %11, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %11, align 4
  br label %232

228:                                              ; preds = %213
  %229 = load i32, i32* @TVIF_EXPANDEDIMAGE, align 4
  %230 = load i32, i32* %10, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %10, align 4
  br label %232

232:                                              ; preds = %228, %224
  br label %233

233:                                              ; preds = %232, %206
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @TVIF_PARAM, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 9
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %240, %233
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @TVIF_INTEGRAL, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 7
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %253, %246
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @TVIF_STATE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %296

266:                                              ; preds = %259
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %269, i32 %272, i32 %275)
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = xor i32 %279, -1
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = and i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %287, %290
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %266, %259
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @TVIF_STATEEX, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %296
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %303, %296
  %309 = load i32, i32* %11, align 4
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 4
  %314 = load i32, i32* %10, align 4
  %315 = xor i32 %314, -1
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i64, i64* @TRUE, align 8
  store i64 %320, i64* %5, align 8
  br label %321

321:                                              ; preds = %308, %63
  %322 = load i64, i64* %5, align 8
  ret i64 %322
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i8* @heap_realloc(i32*, i32) #1

declare dso_local i32 @lstrcpynW(i32*, i32*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
