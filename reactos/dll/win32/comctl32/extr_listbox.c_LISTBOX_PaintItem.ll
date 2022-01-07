; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_PaintItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_PaintItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32*, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32 }

@ODA_FOCUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"called with an out of bounds index %d(%d) in owner draw, Not good.\0A\00", align 1
@ODT_LISTBOX = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODS_SELECTED = common dso_local global i32 0, align 4
@ODS_FOCUS = common dso_local global i32 0, align 4
@ODS_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"[%p]: drawitem %d (%s) action=%02x state=%02x rect=%s\0A\00", align 1
@WM_DRAWITEM = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"[%p]: painting %d (%s) action=%02x rect=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETO_OPAQUE = common dso_local global i32 0, align 4
@ETO_CLIPPED = common dso_local global i32 0, align 4
@LBS_USETABSTOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, i64, i32, i32)* @LISTBOX_PaintItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_PaintItem(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_13__* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 9
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %13, align 8
  br label %30

30:                                               ; preds = %24, %6
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = call i64 @IS_OWNERDRAW(%struct.TYPE_15__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %162

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ODA_FOCUS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = call i32 @DrawFocusRect(i32 %42, %struct.TYPE_13__* %43)
  br label %51

45:                                               ; preds = %37
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %41
  br label %326

52:                                               ; preds = %34
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @GetClientRect(i32 %55, %struct.TYPE_13__* %15)
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @set_control_clipping(i32 %57, %struct.TYPE_13__* %15)
  store i64 %58, i64* %16, align 8
  %59 = load i32, i32* @ODT_LISTBOX, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 8
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GWLP_ID, align 4
  %65 = call i32 @GetWindowLongPtrW(i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 7
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 6
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 5
  store i32 %73, i32* %74, align 4
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %52
  %83 = load i32, i32* @ODS_SELECTED, align 4
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %52
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @ODS_FOCUS, align 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %101, %96, %90, %87
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @IsWindowEnabled(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* @ODS_DISABLED, align 4
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %111
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 4
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = bitcast %struct.TYPE_13__* %127 to i8*
  %130 = bitcast %struct.TYPE_13__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 16, i1 false)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i8* @debugstr_w(i32* %137)
  %139 = load i32, i32* %11, align 4
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = call i32 @wine_dbgstr_rect(%struct.TYPE_13__* %142)
  %144 = call i32 (i8*, i32, i64, i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %133, i64 %134, i8* %138, i32 %139, i32 %141, i32 %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WM_DRAWITEM, align 4
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = ptrtoint %struct.TYPE_16__* %14 to i32
  %152 = call i32 @SendMessageW(i32 %147, i32 %148, i32 %150, i32 %151)
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @SelectClipRgn(i32 %153, i64 %154)
  %156 = load i64, i64* %16, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %122
  %159 = load i64, i64* %16, align 8
  %160 = call i32 @DeleteObject(i64 %159)
  br label %161

161:                                              ; preds = %158, %122
  br label %326

162:                                              ; preds = %30
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @ODA_FOCUS, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = call i32 @DrawFocusRect(i32 %167, %struct.TYPE_13__* %168)
  br label %326

170:                                              ; preds = %162
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %172 = icmp ne %struct.TYPE_14__* %171, null
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %181 = call i32 @GetSysColor(i32 %180)
  %182 = call i32 @SetBkColor(i32 %179, i32 %181)
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %185 = call i32 @GetSysColor(i32 %184)
  %186 = call i32 @SetTextColor(i32 %183, i32 %185)
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %178, %173, %170
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %193 = icmp ne %struct.TYPE_14__* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = call i8* @debugstr_w(i32* %197)
  br label %200

199:                                              ; preds = %187
  br label %200

200:                                              ; preds = %199, %194
  %201 = phi i8* [ %198, %194 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %199 ]
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %204 = call i32 @wine_dbgstr_rect(%struct.TYPE_13__* %203)
  %205 = call i32 (i8*, i32, i64, i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %190, i64 %191, i8* %201, i32 %202, i32 %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %207 = icmp ne %struct.TYPE_14__* %206, null
  br i1 %207, label %222, label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 1
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @ETO_OPAQUE, align 4
  %218 = load i32, i32* @ETO_CLIPPED, align 4
  %219 = or i32 %217, %218
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %221 = call i32 @ExtTextOutW(i32 %209, i64 %213, i32 %216, i32 %219, %struct.TYPE_13__* %220, i32* null, i32 0, i32* null)
  br label %287

222:                                              ; preds = %200
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @LBS_USETABSTOPS, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %250, label %229

229:                                              ; preds = %222
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ETO_OPAQUE, align 4
  %239 = load i32, i32* @ETO_CLIPPED, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @strlenW(i32* %247)
  %249 = call i32 @ExtTextOutW(i32 %230, i64 %234, i32 %237, i32 %240, %struct.TYPE_13__* %241, i32* %244, i32 %248, i32* null)
  br label %286

250:                                              ; preds = %222
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @ETO_OPAQUE, align 4
  %260 = load i32, i32* @ETO_CLIPPED, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %263 = call i32 @ExtTextOutW(i32 %251, i64 %255, i32 %258, i32 %261, %struct.TYPE_13__* %262, i32* null, i32 0, i32* null)
  %264 = load i32, i32* %8, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @strlenW(i32* %277)
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @TabbedTextOutW(i32 %264, i64 %268, i32 %271, i32* %274, i32 %278, i32 %281, i32 %284, i32 0)
  br label %286

286:                                              ; preds = %250, %229
  br label %287

287:                                              ; preds = %286, %208
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %289 = icmp ne %struct.TYPE_14__* %288, null
  br i1 %289, label %290, label %302

290:                                              ; preds = %287
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %18, align 4
  %298 = call i32 @SetBkColor(i32 %296, i32 %297)
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* %17, align 4
  %301 = call i32 @SetTextColor(i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %295, %290, %287
  %303 = load i32, i32* %12, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %325, label %305

305:                                              ; preds = %302
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* %10, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %325

311:                                              ; preds = %305
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 4
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %311
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %316
  %322 = load i32, i32* %8, align 4
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %324 = call i32 @DrawFocusRect(i32 %322, %struct.TYPE_13__* %323)
  br label %325

325:                                              ; preds = %321, %316, %311, %305, %302
  br label %326

326:                                              ; preds = %51, %166, %325, %161
  ret void
}

declare dso_local i64 @IS_OWNERDRAW(%struct.TYPE_15__*) #1

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ERR(i8*, i64, i64) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @set_control_clipping(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TRACE(i8*, i32, i64, i8*, i32, i32, ...) #1

declare dso_local i8* @debugstr_w(i32*) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_13__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SelectClipRgn(i32, i64) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i64, i32, i32, %struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @TabbedTextOutW(i32, i64, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
