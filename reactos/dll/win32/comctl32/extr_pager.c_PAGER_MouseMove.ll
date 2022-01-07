; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_MouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_pager.c_PAGER_MouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"[%p] to (%d,%d)\0A\00", align 1
@PGB_TOPORLEFT = common dso_local global i64 0, align 8
@PGF_NORMAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@PGF_HOT = common dso_local global i64 0, align 8
@PGB_BOTTOMORRIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"[%p] draw btn (%s), Capture %s, style %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"[%p] SetCapture\0A\00", align 1
@PGS_AUTOSCROLL = common dso_local global i32 0, align 4
@TIMERID1 = common dso_local global i32 0, align 4
@PGS_HORZ = common dso_local global i32 0, align 4
@PGF_GRAYED = common dso_local global i64 0, align 8
@PGF_INVISIBLE = common dso_local global i8* null, align 8
@SWP_FRAMECHANGED = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@RDW_FRAME = common dso_local global i32 0, align 4
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@NM_RELEASEDCAPTURE = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i64, i64)* @PAGER_MouseMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PAGER_MouseMove(%struct.TYPE_14__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29, i64 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ClientToScreen(i64 %34, %struct.TYPE_13__* %11)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @GetWindowRect(i64 %38, i32* %12)
  %40 = bitcast %struct.TYPE_13__* %11 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @PtInRect(i32* %12, i64 %42, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %168

47:                                               ; preds = %4
  store i32* null, i32** %19, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = load i8*, i8** @FALSE, align 8
  %50 = call i32 @PAGER_GetButtonRects(%struct.TYPE_14__* %48, i32* %17, i32* %18, i8* %49)
  %51 = bitcast %struct.TYPE_13__* %10 to i8*
  %52 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @MapWindowPoints(i32 0, i64 %55, %struct.TYPE_13__* %10, i32 1)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i64 @PAGER_HitTest(%struct.TYPE_14__* %57, %struct.TYPE_13__* %10)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* @PGB_TOPORLEFT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %47
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PGF_NORMAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i8*, i8** @TRUE, align 8
  store i8* %69, i8** %13, align 8
  store i32* %17, i32** %19, align 8
  %70 = load i64, i64* @PGF_HOT, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  br label %95

76:                                               ; preds = %62, %47
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* @PGB_BOTTOMORRIGHT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PGF_NORMAL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i8*, i8** @FALSE, align 8
  store i8* %87, i8** %13, align 8
  store i32* %18, i32** %19, align 8
  %88 = load i64, i64* @PGF_HOT, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %86, %80, %76
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i32*, i32** %19, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %167

98:                                               ; preds = %95
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @wine_dbgstr_rect(i32* %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 5
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %101, i32 %103, i8* %109, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %130, label %118

118:                                              ; preds = %98
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @SetCapture(i64 %125)
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %118, %98
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PGS_AUTOSCROLL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @TIMERID1, align 4
  %142 = call i32 @SetTimer(i64 %140, i32 %141, i32 62, i32 0)
  br label %143

143:                                              ; preds = %137, %130
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @GetWindowDC(i64 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %19, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PGS_HORZ, align 4
  %158 = and i32 %156, %157
  %159 = load i8*, i8** %13, align 8
  %160 = load i64, i64* %14, align 8
  %161 = call i32 @PAGER_DrawButton(i32 %148, i32 %151, i32 %153, i32 %158, i8* %159, i64 %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @ReleaseDC(i64 %164, i32 %165)
  store i32 0, i32* %5, align 4
  br label %314

167:                                              ; preds = %95
  br label %168

168:                                              ; preds = %167, %4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 5
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %313

173:                                              ; preds = %168
  %174 = bitcast %struct.TYPE_13__* %11 to { i64, i64 }*
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @WindowFromPoint(i64 %176, i64 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %313

184:                                              ; preds = %173
  %185 = load i8*, i8** @FALSE, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 5
  store i8* %185, i8** %187, align 8
  %188 = call i64 (...) @GetCapture()
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %300

193:                                              ; preds = %184
  %194 = call i32 (...) @ReleaseCapture()
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @PGF_GRAYED, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %193
  %201 = load i8*, i8** @PGF_INVISIBLE, align 8
  %202 = ptrtoint i8* %201 to i64
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %209 = load i32, i32* @SWP_NOSIZE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @SWP_NOMOVE, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @SWP_NOZORDER, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @SWP_NOACTIVATE, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @SetWindowPos(i64 %207, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %216)
  br label %236

218:                                              ; preds = %193
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @PGF_HOT, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %218
  %225 = load i64, i64* @PGF_NORMAL, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* @RDW_FRAME, align 4
  %232 = load i32, i32* @RDW_INVALIDATE, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @RedrawWindow(i64 %230, i32* null, i32* null, i32 %233)
  br label %235

235:                                              ; preds = %224, %218
  br label %236

236:                                              ; preds = %235, %200
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @PGF_GRAYED, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %236
  %243 = load i8*, i8** @PGF_INVISIBLE, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %251 = load i32, i32* @SWP_NOSIZE, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @SWP_NOMOVE, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @SWP_NOZORDER, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @SWP_NOACTIVATE, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @SetWindowPos(i64 %249, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %258)
  br label %278

260:                                              ; preds = %236
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @PGF_HOT, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %277

266:                                              ; preds = %260
  %267 = load i64, i64* @PGF_NORMAL, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 2
  store i64 %267, i64* %269, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @RDW_FRAME, align 4
  %274 = load i32, i32* @RDW_INVALIDATE, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @RedrawWindow(i64 %272, i32* null, i32* null, i32 %275)
  br label %277

277:                                              ; preds = %266, %260
  br label %278

278:                                              ; preds = %277, %242
  %279 = call i32 @memset(%struct.TYPE_15__* %20, i32 0, i32 16)
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i64 %282, i64* %283, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i32, i32* @GWLP_ID, align 4
  %288 = call i32 @GetWindowLongPtrW(i64 %286, i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  store i32 %288, i32* %289, align 8
  %290 = load i32, i32* @NM_RELEASEDCAPTURE, align 4
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i32 %290, i32* %291, align 4
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @WM_NOTIFY, align 4
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = ptrtoint %struct.TYPE_15__* %20 to i32
  %299 = call i32 @SendMessageW(i32 %294, i32 %295, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %278, %184
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @IsWindow(i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %300
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* @TIMERID1, align 4
  %311 = call i32 @KillTimer(i64 %309, i32 %310)
  br label %312

312:                                              ; preds = %306, %300
  br label %313

313:                                              ; preds = %312, %173, %168
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %313, %143
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @ClientToScreen(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @GetWindowRect(i64, i32*) #1

declare dso_local i64 @PtInRect(i32*, i64, i64) #1

declare dso_local i32 @PAGER_GetButtonRects(%struct.TYPE_14__*, i32*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MapWindowPoints(i32, i64, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @PAGER_HitTest(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @SetCapture(i64) #1

declare dso_local i32 @SetTimer(i64, i32, i32, i32) #1

declare dso_local i32 @GetWindowDC(i64) #1

declare dso_local i32 @PAGER_DrawButton(i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ReleaseDC(i64, i32) #1

declare dso_local i64 @WindowFromPoint(i64, i64) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RedrawWindow(i64, i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @IsWindow(i64) #1

declare dso_local i32 @KillTimer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
