; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_MouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_MouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i64, i64, i64, i32, i8*, %struct.TYPE_27__*, i64, i64, i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_29__, i64 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32 }

@HDS_BUTTONS = common dso_local global i32 0, align 4
@HDS_HOTTRACK = common dso_local global i32 0, align 4
@HHT_ONHEADER = common dso_local global i32 0, align 4
@HHT_ONDIVIDER = common dso_local global i32 0, align 4
@HHT_ONDIVOPEN = common dso_local global i32 0, align 4
@HDS_DRAGDROP = common dso_local global i32 0, align 4
@HDN_BEGINDRAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Starting item drag\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Moving pressed item %d.\0A\00", align 1
@HDS_FULLDRAG = common dso_local global i32 0, align 4
@HDN_ITEMCHANGINGW = common dso_local global i32 0, align 4
@HDI_WIDTH = common dso_local global i32 0, align 4
@HDN_ITEMCHANGEDW = common dso_local global i32 0, align 4
@HDN_TRACKW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Tracking item %d.\0A\00", align 1
@TME_LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32)* @HEADER_MouseMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_MouseMove(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_25__, align 8
  %19 = alloca %struct.TYPE_25__, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_24__, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HDS_BUTTONS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HDS_HOTTRACK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28, %2
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @GetWindowTheme(i32 %38)
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %35, %28
  %42 = phi i1 [ true, %28 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @LOWORD(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @HIWORD(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %55 = call i32 @HEADER_InternalHitTest(%struct.TYPE_28__* %54, %struct.TYPE_26__* %5, i32* %6, i64* %7)
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @HHT_ONHEADER, align 4
  %61 = load i32, i32* @HHT_ONDIVIDER, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @HHT_ONDIVOPEN, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %59, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %74

71:                                               ; preds = %58
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  store i64 -1, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74, %41
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %441

80:                                               ; preds = %75
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %144

85:                                               ; preds = %80
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 6
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %144, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HDS_DRAGDROP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %144

97:                                               ; preds = %90
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %99 = call i64 @HEADER_IsDragDistance(%struct.TYPE_28__* %98, %struct.TYPE_26__* %5)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %97
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %103 = load i32, i32* @HDN_BEGINDRAG, align 4
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_28__* %102, i32 %103, i64 %106, i32* null)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %143, label %109

109:                                              ; preds = %101
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32* @HEADER_CreateDragImage(%struct.TYPE_28__* %110, i64 %113)
  store i32* %114, i32** %12, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %142

117:                                              ; preds = %109
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %119, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i64 %123
  store %struct.TYPE_27__* %124, %struct.TYPE_27__** %13, align 8
  %125 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %128, %132
  %134 = call i32 @ImageList_BeginDrag(i32* %126, i32 0, i64 %133, i32 0)
  %135 = load i8*, i8** @TRUE, align 8
  %136 = call i32 @ImageList_DragShowNolock(i8* %135)
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @ImageList_Destroy(i32* %137)
  %139 = load i8*, i8** @TRUE, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %117, %109
  br label %143

143:                                              ; preds = %142, %101
  br label %144

144:                                              ; preds = %143, %97, %90, %85, %80
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 6
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ClientToScreen(i32 %156, %struct.TYPE_26__* %14)
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @ImageList_DragMove(i64 %159, i64 %161)
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %164 = load i8*, i8** @TRUE, align 8
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @HEADER_SetHotDivider(%struct.TYPE_28__* %163, i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %149, %144
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %249

172:                                              ; preds = %167
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 6
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %249, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %179, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %15, align 8
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %187, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %177
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @HHT_ONHEADER, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load i8*, i8** @TRUE, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  store i64 %198, i64* %206, align 8
  br label %217

207:                                              ; preds = %192, %177
  %208 = load i64, i64* @FALSE, align 8
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %210, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  store i64 %208, i64* %216, align 8
  br label %217

217:                                              ; preds = %207, %196
  %218 = load i64, i64* %15, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 7
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %220, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %218, %227
  br i1 %228, label %229, label %244

229:                                              ; preds = %217
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @GetDC(i32 %232)
  store i32 %233, i32* %9, align 4
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @HEADER_RefreshItem(%struct.TYPE_28__* %234, i64 %237)
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @ReleaseDC(i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %229, %217
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %247)
  br label %440

249:                                              ; preds = %172, %167
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 8
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %439

254:                                              ; preds = %249
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @HDS_FULLDRAG, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %354

261:                                              ; preds = %254
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 7
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %263, align 8
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i64 %267
  store %struct.TYPE_27__* %268, %struct.TYPE_27__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %270, %274
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %275, %278
  store i64 %279, i64* %8, align 8
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %281 = load i32, i32* @HDN_ITEMCHANGINGW, align 4
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @HDI_WIDTH, align 4
  %286 = load i64, i64* %8, align 8
  %287 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_28__* %280, i32 %281, i64 %284, i32 %285, i64 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %353, label %289

289:                                              ; preds = %261
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = sub nsw i64 %293, %297
  store i64 %298, i64* %17, align 8
  %299 = load i64, i64* %8, align 8
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %289
  store i64 0, i64* %8, align 8
  br label %302

302:                                              ; preds = %301, %289
  %303 = load i64, i64* %8, align 8
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 7
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %305, align 8
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 2
  store i64 %303, i64* %311, align 8
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %313 = call i32 @HEADER_SetItemBounds(%struct.TYPE_28__* %312)
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @GetClientRect(i32 %316, %struct.TYPE_25__* %18)
  %318 = bitcast %struct.TYPE_25__* %19 to i8*
  %319 = bitcast %struct.TYPE_25__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %318, i8* align 8 %319, i64 8, i1 false)
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* %17, align 8
  %325 = add nsw i64 %323, %324
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  store i64 %325, i64* %326, align 8
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = load i64, i64* %8, align 8
  %331 = load i64, i64* %17, align 8
  %332 = sub nsw i64 %330, %331
  %333 = call i32 @ScrollWindowEx(i32 %329, i64 %332, i32 0, %struct.TYPE_25__* %19, %struct.TYPE_25__* %18, i32* null, i32* null, i32 0)
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 1
  %339 = load i64, i64* @FALSE, align 8
  %340 = call i32 @InvalidateRect(i32 %336, %struct.TYPE_29__* %338, i64 %339)
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @UpdateWindow(i32 %343)
  %345 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %346 = load i32, i32* @HDN_ITEMCHANGEDW, align 4
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = load i32, i32* @HDI_WIDTH, align 4
  %351 = load i64, i64* %8, align 8
  %352 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_28__* %345, i32 %346, i64 %349, i32 %350, i64 %351)
  br label %353

353:                                              ; preds = %302, %261
  br label %434

354:                                              ; preds = %254
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @GetDC(i32 %357)
  store i32 %358, i32* %9, align 4
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %360 = load i32, i32* %9, align 4
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @HEADER_DrawTrackLine(%struct.TYPE_28__* %359, i32 %360, i64 %363)
  %365 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %366, %369
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %371, i32 0, i32 4
  store i64 %370, i64* %372, align 8
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 4
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 7
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** %377, align 8
  %379 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp slt i64 %375, %385
  br i1 %386, label %387, label %400

387:                                              ; preds = %354
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 7
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %389, align 8
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 4
  store i64 %397, i64* %399, align 8
  br label %400

400:                                              ; preds = %387, %354
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %402 = load i32, i32* %9, align 4
  %403 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %403, i32 0, i32 4
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @HEADER_DrawTrackLine(%struct.TYPE_28__* %401, i32 %402, i64 %405)
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @ReleaseDC(i32 %409, i32 %410)
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 7
  %417 = load %struct.TYPE_27__*, %struct.TYPE_27__** %416, align 8
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %418, i32 0, i32 2
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %417, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = sub nsw i64 %414, %424
  store i64 %425, i64* %20, align 8
  %426 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %427 = load i32, i32* @HDN_TRACKW, align 4
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = load i32, i32* @HDI_WIDTH, align 4
  %432 = load i64, i64* %20, align 8
  %433 = call i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_28__* %426, i32 %427, i64 %430, i32 %431, i64 %432)
  br label %434

434:                                              ; preds = %400, %353
  %435 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %437)
  br label %439

439:                                              ; preds = %434, %249
  br label %440

440:                                              ; preds = %439, %244
  br label %441

441:                                              ; preds = %440, %75
  %442 = load i64, i64* %10, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %492

444:                                              ; preds = %441
  %445 = load i64, i64* %11, align 8
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %445, %448
  br i1 %449, label %450, label %483

450:                                              ; preds = %444
  %451 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 6
  %453 = load i8*, i8** %452, align 8
  %454 = icmp ne i8* %453, null
  br i1 %454, label %483, label %455

455:                                              ; preds = %450
  %456 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @GetDC(i32 %458)
  store i32 %459, i32* %9, align 4
  %460 = load i64, i64* %11, align 8
  %461 = icmp ne i64 %460, -1
  br i1 %461, label %462, label %466

462:                                              ; preds = %455
  %463 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %464 = load i64, i64* %11, align 8
  %465 = call i32 @HEADER_RefreshItem(%struct.TYPE_28__* %463, i64 %464)
  br label %466

466:                                              ; preds = %462, %455
  %467 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, -1
  br i1 %470, label %471, label %477

471:                                              ; preds = %466
  %472 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %473 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = call i32 @HEADER_RefreshItem(%struct.TYPE_28__* %472, i64 %475)
  br label %477

477:                                              ; preds = %471, %466
  %478 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %478, i32 0, i32 5
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %9, align 4
  %482 = call i32 @ReleaseDC(i32 %480, i32 %481)
  br label %483

483:                                              ; preds = %477, %450, %444
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store i32 12, i32* %484, align 4
  %485 = load i32, i32* @TME_LEAVE, align 4
  %486 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  store i32 %485, i32* %486, align 4
  %487 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %487, i32 0, i32 5
  %489 = load i32, i32* %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i32 %489, i32* %490, align 4
  %491 = call i32 @TrackMouseEvent(%struct.TYPE_24__* %21)
  br label %492

492:                                              ; preds = %483, %441
  ret i32 0
}

declare dso_local i32* @GetWindowTheme(i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @HEADER_InternalHitTest(%struct.TYPE_28__*, %struct.TYPE_26__*, i32*, i64*) #1

declare dso_local i64 @HEADER_IsDragDistance(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_28__*, i32, i64, i32*) #1

declare dso_local i32* @HEADER_CreateDragImage(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ImageList_BeginDrag(i32*, i32, i64, i32) #1

declare dso_local i32 @ImageList_DragShowNolock(i8*) #1

declare dso_local i32 @ImageList_Destroy(i32*) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ImageList_DragMove(i64, i64) #1

declare dso_local i32 @HEADER_SetHotDivider(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @HEADER_RefreshItem(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @HEADER_SendNotifyWithIntFieldT(%struct.TYPE_28__*, i32, i64, i32, i64) #1

declare dso_local i32 @HEADER_SetItemBounds(%struct.TYPE_28__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ScrollWindowEx(i32, i64, i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*, i32*, i32) #1

declare dso_local i32 @InvalidateRect(i32, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @UpdateWindow(i32) #1

declare dso_local i32 @HEADER_DrawTrackLine(%struct.TYPE_28__*, i32, i64) #1

declare dso_local i32 @TrackMouseEvent(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
