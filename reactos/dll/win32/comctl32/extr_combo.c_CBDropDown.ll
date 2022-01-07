; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBDropDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_combo.c_CBDropDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, i64, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"[%p]: drop down\0A\00", align 1
@CBN_DROPDOWN = common dso_local global i32 0, align 4
@CBF_DROPPED = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CBF_CAPTURE = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_SETTOPINDEX = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_CARETON = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETITEMHEIGHT = common dso_local global i32 0, align 4
@CBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@MONITOR_DEFAULTTOPRIMARY = common dso_local global i32 0, align 4
@HWND_TOPMOST = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_SHOWWINDOW = common dso_local global i32 0, align 4
@CBF_NOREDRAW = common dso_local global i32 0, align 4
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_ERASE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@RDW_NOCHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @CBDropDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBDropDown(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %15 = load i32, i32* @CBN_DROPDOWN, align 4
  %16 = call i32 @CB_NOTIFY(%struct.TYPE_18__* %14, i32 %15)
  %17 = load i32, i32* @CBF_DROPPED, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = call i64 @CB_GETTYPE(%struct.TYPE_18__* %22)
  %24 = load i64, i64* @CBS_DROPDOWN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i64 @CBUpdateLBox(%struct.TYPE_18__* %27, i32 %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CBF_CAPTURE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %26
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @CBUpdateEdit(%struct.TYPE_18__* %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %38, %26
  br label %80

50:                                               ; preds = %1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @LB_GETCURSEL, align 4
  %55 = call i64 @SendMessageW(i64 %53, i32 %54, i64 0, i32 0)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @LB_SETTOPINDEX, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LB_ERR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %72

68:                                               ; preds = %50
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i64 [ 0, %67 ], [ %71, %68 ]
  %74 = call i64 @SendMessageW(i64 %60, i32 %61, i64 %73, i32 0)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @LB_CARETON, align 4
  %79 = call i64 @SendMessageW(i64 %77, i32 %78, i64 0, i32 0)
  br label %80

80:                                               ; preds = %72, %49
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @GetWindowRect(i64 %83, %struct.TYPE_16__* %5)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %86 = call i64 @CB_GETTYPE(%struct.TYPE_18__* %85)
  %87 = load i64, i64* @CBS_DROPDOWN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = call i64 (...) @COMBO_EDITBUTTONSPACE()
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %90
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %89, %80
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %98, %102
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @GetWindowRect(i64 %106, %struct.TYPE_16__* %6)
  %108 = load i32, i32* %8, align 4
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %110, %112
  %114 = icmp slt i32 %108, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %94
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %117, %119
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %115, %94
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @LB_GETCOUNT, align 4
  %126 = call i64 @SendMessageW(i64 %124, i32 %125, i64 0, i32 0)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %121
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %135 = call i64 @SendMessageW(i64 %133, i32 %134, i64 0, i32 0)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %9, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CBS_NOINTEGRALHEIGHT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %162

146:                                              ; preds = %130
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %147, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %157, %158
  %160 = call i32 (...) @COMBO_YBORDERSIZE()
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %156, %143
  br label %163

163:                                              ; preds = %162, %121
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  store i64 %165, i64* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %171, %175
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %176, %180
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  store i64 %181, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %184, %185
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 %186, i32* %187, align 8
  %188 = load i32, i32* @MONITOR_DEFAULTTOPRIMARY, align 4
  %189 = call i32 @MonitorFromRect(%struct.TYPE_16__* %5, i32 %188)
  store i32 %189, i32* %3, align 4
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  store i32 24, i32* %190, align 8
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @GetMonitorInfoW(i32 %191, %struct.TYPE_17__* %4)
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %195, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %163
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %8, align 4
  %204 = sub nsw i32 %202, %203
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @max(i32 %204, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %211, %212
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @min(i32 %213, i64 %216)
  %218 = trunc i64 %217 to i32
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 %218, i32* %219, align 8
  br label %220

220:                                              ; preds = %200, %163
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @HWND_TOPMOST, align 4
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %230, %232
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %235, %237
  %239 = sext i32 %238 to i64
  %240 = load i32, i32* @SWP_NOACTIVATE, align 4
  %241 = load i32, i32* @SWP_SHOWWINDOW, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @SetWindowPos(i64 %223, i32 %224, i64 %226, i32 %228, i64 %233, i64 %239, i32 %242)
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @CBF_NOREDRAW, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %220
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* @RDW_INVALIDATE, align 4
  %255 = load i32, i32* @RDW_ERASE, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @RDW_UPDATENOW, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @RDW_NOCHILDREN, align 4
  %260 = or i32 %258, %259
  %261 = call i32 @RedrawWindow(i64 %253, i32* null, i32 0, i32 %260)
  br label %262

262:                                              ; preds = %250, %220
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* @TRUE, align 4
  %267 = call i32 @EnableWindow(i64 %265, i32 %266)
  %268 = call i64 (...) @GetCapture()
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %268, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %262
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @SetCapture(i64 %276)
  br label %278

278:                                              ; preds = %273, %262
  ret void
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @CB_NOTIFY(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_18__*) #1

declare dso_local i64 @CBUpdateLBox(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @CBUpdateEdit(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @SendMessageW(i64, i32, i64, i32) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_16__*) #1

declare dso_local i64 @COMBO_EDITBUTTONSPACE(...) #1

declare dso_local i32 @COMBO_YBORDERSIZE(...) #1

declare dso_local i32 @MonitorFromRect(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @GetMonitorInfoW(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @SetWindowPos(i64, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @RedrawWindow(i64, i32*, i32, i32) #1

declare dso_local i32 @EnableWindow(i64, i32) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @SetCapture(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
