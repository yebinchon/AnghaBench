; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_graphctl.c_GraphCtrl_InvalidateCtrl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_graphctl.c_GraphCtrl_InvalidateCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_12__, i32, i32*, i32, i32*, i32, i32, i32*, i32*, %struct.TYPE_8__, i32, i32, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@DEFAULT_PITCH = common dso_local global i32 0, align 4
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FF_SWISS = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@TA_BASELINE = common dso_local global i32 0, align 4
@TA_CENTER = common dso_local global i32 0, align 4
@TA_LEFT = common dso_local global i32 0, align 4
@TA_RIGHT = common dso_local global i32 0, align 4
@TA_TOP = common dso_local global i32 0, align 4
@axisFont = common dso_local global i32* null, align 8
@m_crGridColor = common dso_local global i32 0, align 4
@m_dLowerLimit = common dso_local global i32 0, align 4
@m_dUpperLimit = common dso_local global i32 0, align 4
@m_dcGrid = common dso_local global i32* null, align 8
@m_nPlotWidth = common dso_local global i32 0, align 4
@m_nShiftPixels = common dso_local global i32 0, align 4
@m_nYDecimals = common dso_local global i32 0, align 4
@m_rectClient = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@m_rectPlot = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@m_strXUnitsString = common dso_local global i8* null, align 8
@m_strYUnitsString = common dso_local global i8* null, align 8
@oldFont = common dso_local global i32* null, align 8
@strTemp = common dso_local global i8* null, align 8
@yUnitFont = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GraphCtrl_InvalidateCtrl(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @PS_SOLID, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 17
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @CreatePen(i32 %10, i32 0, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GetDC(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @CreateCompatibleDC(i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 11
  store i32* %26, i32** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @CreateCompatibleBitmap(i32 %29, i32 %32, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 15
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 11
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 15
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @SelectObject(i32* %42, i32* %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 16
  store i32* %48, i32** %50, align 8
  br label %95

51:                                               ; preds = %2
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 15
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %93

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 11
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 16
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @SelectObject(i32* %62, i32* %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 15
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 15
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @DeleteObject(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @CreateCompatibleBitmap(i32 %75, i32 %78, i32 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 15
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 11
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 15
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @SelectObject(i32* %88, i32* %91)
  br label %93

93:                                               ; preds = %59, %54
  br label %94

94:                                               ; preds = %93, %51
  br label %95

95:                                               ; preds = %94, %23
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 11
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @SetBkColor(i32* %98, i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 11
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @FillRect(i32* %105, %struct.TYPE_12__* %107, i32 %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 14
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fabs(i32 %114)
  %116 = call i64 @log10(i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 @abs(i32 %117) #3
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @fabs(i32 %122)
  %124 = call i64 @log10(i32 %123)
  %125 = trunc i64 %124 to i32
  %126 = call i32 @abs(i32 %125) #3
  %127 = call i32 @max(i32 %119, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  store i32 %133, i32* %6, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 12
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 12
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %144, %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 11
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = call i64 @SelectObject(i32* %154, i32* %155)
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %7, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 11
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 12
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 12
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @MoveToEx(i32* %160, i32 %164, i32 %168, i32* null)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 11
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 12
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 12
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @LineTo(i32* %172, i32 %177, i32 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 11
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 12
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 12
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @LineTo(i32* %185, i32 %190, i32 %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 11
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 12
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 12
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @LineTo(i32* %199, i32 %203, i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 12
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %250, %95
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 12
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %215, %219
  br i1 %220, label %221, label %253

221:                                              ; preds = %214
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 11
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 12
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 12
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @MoveToEx(i32* %224, i32 %228, i32 %234, i32* null)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 11
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 12
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 12
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %246, %247
  %249 = call i32 @LineTo(i32* %238, i32 %242, i32 %248)
  br label %250

250:                                              ; preds = %221
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 12
  store i32 %252, i32* %5, align 4
  br label %214

253:                                              ; preds = %214
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 12
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %294, %253
  %259 = load i32, i32* %5, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 12
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %265, label %297

265:                                              ; preds = %258
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 11
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 12
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %272, %273
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 12
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @MoveToEx(i32* %268, i32 %274, i32 %278, i32* null)
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 11
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 12
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %286, %287
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 12
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @LineTo(i32* %282, i32 %288, i32 %292)
  br label %294

294:                                              ; preds = %265
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 12
  store i32 %296, i32* %5, align 4
  br label %258

297:                                              ; preds = %258
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 11
  %300 = load i32*, i32** %299, align 8
  %301 = load i32*, i32** %7, align 8
  %302 = call i64 @SelectObject(i32* %300, i32* %301)
  %303 = load i32*, i32** %8, align 8
  %304 = call i32 @DeleteObject(i32* %303)
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 5
  %307 = load i32*, i32** %306, align 8
  %308 = icmp eq i32* %307, null
  br i1 %308, label %309, label %337

309:                                              ; preds = %297
  %310 = load i32, i32* %9, align 4
  %311 = call i8* @CreateCompatibleDC(i32 %310)
  %312 = bitcast i8* %311 to i32*
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 5
  store i32* %312, i32** %314, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 8
  %322 = call i8* @CreateCompatibleBitmap(i32 %315, i32 %318, i32 %321)
  %323 = bitcast i8* %322 to i32*
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 7
  store i32* %323, i32** %325, align 8
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 5
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 7
  %331 = load i32*, i32** %330, align 8
  %332 = call i64 @SelectObject(i32* %328, i32* %331)
  %333 = inttoptr i64 %332 to i8*
  %334 = bitcast i8* %333 to i32*
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 10
  store i32* %334, i32** %336, align 8
  br label %381

337:                                              ; preds = %297
  %338 = load i64, i64* %4, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %380

340:                                              ; preds = %337
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 7
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %379

345:                                              ; preds = %340
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 5
  %348 = load i32*, i32** %347, align 8
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 10
  %351 = load i32*, i32** %350, align 8
  %352 = call i64 @SelectObject(i32* %348, i32* %351)
  %353 = inttoptr i64 %352 to i8*
  %354 = bitcast i8* %353 to i32*
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 7
  store i32* %354, i32** %356, align 8
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 7
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @DeleteObject(i32* %359)
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 9
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 8
  %367 = load i32, i32* %366, align 8
  %368 = call i8* @CreateCompatibleBitmap(i32 %361, i32 %364, i32 %367)
  %369 = bitcast i8* %368 to i32*
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 7
  store i32* %369, i32** %371, align 8
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 5
  %374 = load i32*, i32** %373, align 8
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 7
  %377 = load i32*, i32** %376, align 8
  %378 = call i64 @SelectObject(i32* %374, i32* %377)
  br label %379

379:                                              ; preds = %345, %340
  br label %380

380:                                              ; preds = %379, %337
  br label %381

381:                                              ; preds = %380, %309
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 5
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 6
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @SetBkColor(i32* %384, i32 %387)
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 5
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @FillRect(i32* %391, %struct.TYPE_12__* %393, i32 %396)
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 3
  %403 = load i32, i32* @TRUE, align 4
  %404 = call i32 @InvalidateRect(i32 %400, %struct.TYPE_12__* %402, i32 %403)
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = call i32 @ReleaseDC(i32 %407, i32 %408)
  ret void
}

declare dso_local i32* @CreatePen(i32, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i8* @CreateCompatibleDC(i32) #1

declare dso_local i8* @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i64 @SelectObject(i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @SetBkColor(i32*, i32) #1

declare dso_local i32 @FillRect(i32*, %struct.TYPE_12__*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @log10(i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @MoveToEx(i32*, i32, i32, i32*) #1

declare dso_local i32 @LineTo(i32*, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
