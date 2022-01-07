; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_Refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i32, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i32 }

@DT_EXTERNALLEADING = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@TTS_NOPREFIX = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i64 0, align 8
@CDDS_PREPAINT = common dso_local global i32 0, align 4
@TTS_BALLOON = common dso_local global i32 0, align 4
@BALLOON_TEXT_MARGIN = common dso_local global i64 0, align 8
@BALLOON_STEMHEIGHT = common dso_local global i64 0, align 8
@ICON_WIDTH = common dso_local global i64 0, align 8
@ICON_HEIGHT = common dso_local global i64 0, align 8
@DI_NORMAL = common dso_local global i32 0, align 4
@BALLOON_ICON_TITLE_SPACING = common dso_local global i64 0, align 8
@DT_BOTTOM = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@BALLOON_TITLE_TEXT_SPACING = common dso_local global i64 0, align 8
@NORMAL_TEXT_MARGIN = common dso_local global i64 0, align 8
@CDRF_NOTIFYPOSTPAINT = common dso_local global i32 0, align 4
@CDDS_POSTPAINT = common dso_local global i32 0, align 4
@SM_CXDLGFRAME = common dso_local global i32 0, align 4
@SM_CXEDGE = common dso_local global i32 0, align 4
@SM_CYDLGFRAME = common dso_local global i32 0, align 4
@SM_CYEDGE = common dso_local global i32 0, align 4
@COLOR_WINDOWFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @TOOLTIPS_Refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLTIPS_Refresh(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* @DT_EXTERNALLEADING, align 4
  store i32 %20, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GWL_STYLE, align 4
  %25 = call i32 @GetWindowLongW(i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @DT_WORDBREAK, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GWL_STYLE, align 4
  %39 = call i32 @GetWindowLongW(i32 %37, i32 %38)
  %40 = load i32, i32* @TTS_NOPREFIX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @DT_NOPREFIX, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GetClientRect(i32 %50, %struct.TYPE_15__* %5)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @CreateSolidBrush(i32 %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i64, i64* @TRANSPARENT, align 8
  %58 = call i64 @SetBkMode(i32 %56, i64 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SetTextColor(i32 %59, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SelectObject(i32 %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @TOOLTIPS_customdraw_fill(%struct.TYPE_14__* %69, %struct.TYPE_16__* %12, i32 %70, %struct.TYPE_15__* %5, i32 %71)
  %73 = load i32, i32* @CDDS_PREPAINT, align 4
  %74 = call i32 @TOOLTIPS_notify_customdraw(i32 %73, %struct.TYPE_16__* %12)
  store i32 %74, i32* %13, align 4
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @TTS_BALLOON, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %47
  %82 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %82, i32** %10, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @GetWindowRgn(i32 %85, i32* %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @FillRgn(i32 %88, i32* %89, i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @DeleteObject(i32* %92)
  store i32* null, i32** %8, align 8
  br label %100

94:                                               ; preds = %47
  %95 = load i32, i32* %4, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @FillRect(i32 %95, %struct.TYPE_15__* %5, i32* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @DeleteObject(i32* %98)
  store i32* null, i32** %8, align 8
  br label %100

100:                                              ; preds = %94, %81
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @TTS_BALLOON, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %250

110:                                              ; preds = %105, %100
  %111 = load i64, i64* @BALLOON_TEXT_MARGIN, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %111, %115
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %116
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 8
  %122 = load i64, i64* @BALLOON_TEXT_MARGIN, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %122, %126
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %127
  store i64 %130, i64* %128, align 8
  %131 = load i64, i64* @BALLOON_TEXT_MARGIN, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %131, %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %136
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  %142 = load i64, i64* @BALLOON_TEXT_MARGIN, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %142, %146
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %149, %147
  store i64 %150, i64* %148, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %110
  %156 = load i64, i64* @BALLOON_STEMHEIGHT, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %156
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %155, %110
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %249

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %166, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %170, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %174, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %178, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 5
  store i32 0, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 6
  store i64 0, i64* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 7
  store i32 0, i32* %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %165
  %191 = load i32, i32* %4, align 4
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* @ICON_WIDTH, align 8
  %200 = load i64, i64* @ICON_HEIGHT, align 8
  %201 = load i32, i32* @DI_NORMAL, align 4
  %202 = call i64 @DrawIconEx(i32 %191, i32 %193, i64 %195, i32 %198, i64 %199, i64 %200, i32 0, i32* null, i32 %201)
  %203 = icmp ne i64 %202, 0
  br label %204

204:                                              ; preds = %190, %165
  %205 = phi i1 [ false, %165 ], [ %203, %190 ]
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load i64, i64* @ICON_WIDTH, align 8
  %211 = load i64, i64* @BALLOON_ICON_TITLE_SPACING, align 8
  %212 = add nsw i64 %210, %211
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %212
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 8
  br label %218

218:                                              ; preds = %209, %204
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @ICON_HEIGHT, align 8
  %222 = add nsw i64 %220, %221
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @SelectObject(i32 %224, i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @DT_BOTTOM, align 4
  %234 = load i32, i32* @DT_SINGLELINE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @DT_NOPREFIX, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @DrawTextW(i32 %229, i64 %232, i32 -1, %struct.TYPE_15__* %14, i32 %237)
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @SelectObject(i32 %239, i32 %240)
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* @BALLOON_TITLE_TEXT_SPACING, align 8
  %245 = add nsw i64 %243, %244
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, %245
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %218, %160
  br label %291

250:                                              ; preds = %105
  %251 = load i64, i64* @NORMAL_TEXT_MARGIN, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %251, %255
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %256
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 8
  %262 = load i64, i64* @NORMAL_TEXT_MARGIN, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %262, %266
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, %267
  store i64 %270, i64* %268, align 8
  %271 = load i64, i64* @NORMAL_TEXT_MARGIN, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %271, %275
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = sub nsw i64 %279, %276
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %277, align 8
  %282 = load i64, i64* @NORMAL_TEXT_MARGIN, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %282, %286
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = sub nsw i64 %289, %287
  store i64 %290, i64* %288, align 8
  br label %291

291:                                              ; preds = %250, %249
  %292 = load i32, i32* %4, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = call i32 @DrawTextW(i32 %292, i64 %295, i32 -1, %struct.TYPE_15__* %5, i32 %296)
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @CDRF_NOTIFYPOSTPAINT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %291
  %303 = load i32, i32* @CDDS_POSTPAINT, align 4
  %304 = call i32 @TOOLTIPS_notify_customdraw(i32 %303, %struct.TYPE_16__* %12)
  br label %305

305:                                              ; preds = %302, %291
  %306 = load i32, i32* %4, align 4
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @SelectObject(i32 %306, i32 %307)
  %309 = load i32, i32* %4, align 4
  %310 = load i64, i64* %6, align 8
  %311 = call i64 @SetBkMode(i32 %309, i64 %310)
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @TTS_BALLOON, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %305
  %317 = load i32, i32* @SM_CXDLGFRAME, align 4
  %318 = call i64 @GetSystemMetrics(i32 %317)
  %319 = load i32, i32* @SM_CXEDGE, align 4
  %320 = call i64 @GetSystemMetrics(i32 %319)
  %321 = sub nsw i64 %318, %320
  store i64 %321, i64* %18, align 8
  %322 = load i32, i32* @SM_CYDLGFRAME, align 4
  %323 = call i64 @GetSystemMetrics(i32 %322)
  %324 = load i32, i32* @SM_CYEDGE, align 4
  %325 = call i64 @GetSystemMetrics(i32 %324)
  %326 = sub nsw i64 %323, %325
  store i64 %326, i64* %19, align 8
  %327 = load i32, i32* @COLOR_WINDOWFRAME, align 4
  %328 = call i32* @GetSysColorBrush(i32 %327)
  store i32* %328, i32** %8, align 8
  %329 = load i32, i32* %4, align 4
  %330 = load i32*, i32** %10, align 8
  %331 = load i32*, i32** %8, align 8
  %332 = load i64, i64* %18, align 8
  %333 = load i64, i64* %19, align 8
  %334 = call i32 @FrameRgn(i32 %329, i32* %330, i32* %331, i64 %332, i64 %333)
  br label %335

335:                                              ; preds = %316, %305
  %336 = load i32*, i32** %10, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load i32*, i32** %10, align 8
  %340 = call i32 @DeleteObject(i32* %339)
  br label %341

341:                                              ; preds = %338, %335
  ret void
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_15__*) #1

declare dso_local i32* @CreateSolidBrush(i32) #1

declare dso_local i64 @SetBkMode(i32, i64) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @TOOLTIPS_customdraw_fill(%struct.TYPE_14__*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TOOLTIPS_notify_customdraw(i32, %struct.TYPE_16__*) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @GetWindowRgn(i32, i32*) #1

declare dso_local i32 @FillRgn(i32, i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @DrawIconEx(i32, i32, i64, i32, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @DrawTextW(i32, i64, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32* @GetSysColorBrush(i32) #1

declare dso_local i32 @FrameRgn(i32, i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
