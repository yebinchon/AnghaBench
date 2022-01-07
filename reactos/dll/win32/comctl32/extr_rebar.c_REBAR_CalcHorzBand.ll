; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_CalcHorzBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_CalcHorzBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_14__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i64, i64, i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i32 }

@HAS_GRIPPER = common dso_local global i32 0, align 4
@DRAW_GRIPPER = common dso_local global i32 0, align 4
@REBAR_PRE_GRIPPER = common dso_local global i64 0, align 8
@GRIPPER_WIDTH = common dso_local global i64 0, align 8
@REBAR_ALWAYS_SPACE = common dso_local global i64 0, align 8
@HAS_IMAGE = common dso_local global i32 0, align 4
@HAS_TEXT = common dso_local global i32 0, align 4
@DRAW_IMAGE = common dso_local global i32 0, align 4
@REBAR_POST_IMAGE = common dso_local global i64 0, align 8
@RBBS_HIDETITLE = common dso_local global i32 0, align 4
@DRAW_TEXT = common dso_local global i32 0, align 4
@REBAR_POST_TEXT = common dso_local global i64 0, align 8
@REBAR_POST_CHILD = common dso_local global i64 0, align 8
@RBBS_USECHEVRON = common dso_local global i32 0, align 4
@CHEVRON_WIDTH = common dso_local global i64 0, align 8
@NTF_INVALIDATE = common dso_local global i32 0, align 4
@SEP_WIDTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalidating %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i64)* @REBAR_CalcHorzBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REBAR_CalcHorzBand(%struct.TYPE_15__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %481, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %484

17:                                               ; preds = %13
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %18, i64 %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %7, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = call i64 @HIDDENBAND(%struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @SetRect(%struct.TYPE_17__* %26, i64 %30, i64 %34, i64 %38, i32 %42)
  br label %481

44:                                               ; preds = %17
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 12
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SetRect(%struct.TYPE_17__* %46, i64 %50, i64 %54, i64 %58, i32 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HAS_GRIPPER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %44
  %71 = load i32, i32* @DRAW_GRIPPER, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i64, i64* @REBAR_PRE_GRIPPER, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 12
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %76
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 12
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @GRIPPER_WIDTH, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 12
  %93 = call i32 @InflateRect(%struct.TYPE_17__* %92, i32 0, i32 -2)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 11
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 12
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @REBAR_ALWAYS_SPACE, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 12
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @REBAR_ALWAYS_SPACE, align 8
  %111 = add nsw i64 %109, %110
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @SetRect(%struct.TYPE_17__* %95, i64 %101, i64 %105, i64 %111, i32 %115)
  br label %152

117:                                              ; preds = %44
  store i64 0, i64* %9, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @HAS_IMAGE, align 4
  %122 = load i32, i32* @HAS_TEXT, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i64, i64* @REBAR_ALWAYS_SPACE, align 8
  store i64 %127, i64* %9, align 8
  br label %128

128:                                              ; preds = %126, %117
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 11
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = add nsw i64 %134, %135
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %144, %145
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @SetRect(%struct.TYPE_17__* %130, i64 %136, i64 %140, i64 %146, i32 %150)
  br label %152

152:                                              ; preds = %128, %70
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @HAS_IMAGE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %213

159:                                              ; preds = %152
  %160 = load i32, i32* @DRAW_IMAGE, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 11
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %168
  store i64 %173, i64* %171, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 11
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %177, %181
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 11
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  store i32 %182, i32* %185, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 10
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 11
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @REBAR_POST_IMAGE, align 8
  %193 = add nsw i64 %191, %192
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 1
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %202, %205
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %210, 1
  %212 = call i32 @SetRect(%struct.TYPE_17__* %187, i64 %193, i64 %198, i64 %206, i32 %211)
  br label %239

213:                                              ; preds = %152
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 10
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 11
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 1
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %228, %231
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, 1
  %238 = call i32 @SetRect(%struct.TYPE_17__* %215, i64 %219, i64 %224, i64 %232, i32 %237)
  br label %239

239:                                              ; preds = %213, %159
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @HAS_TEXT, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %273

246:                                              ; preds = %239
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @RBBS_HIDETITLE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %273, label %253

253:                                              ; preds = %246
  %254 = load i32, i32* @DRAW_TEXT, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 10
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 10
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @REBAR_POST_TEXT, align 8
  %268 = sub nsw i64 %266, %267
  %269 = call i64 @max(i64 %262, i64 %268)
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 10
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 1
  store i64 %269, i64* %272, align 8
  br label %273

273:                                              ; preds = %253, %246, %239
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %410

278:                                              ; preds = %273
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %282, %285
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  store i64 %286, i64* %289, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @REBAR_POST_CHILD, align 8
  %295 = sub nsw i64 %293, %294
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 1
  store i64 %295, i64* %298, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = icmp sgt i64 %301, 0
  br i1 %302, label %303, label %343

303:                                              ; preds = %278
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 7
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = sub nsw i64 %308, %312
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = sub nsw i64 %313, %316
  %318 = sdiv i64 %317, 2
  store i64 %318, i64* %11, align 8
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 7
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* %11, align 8
  %324 = add nsw i64 %322, %323
  %325 = trunc i64 %324 to i32
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 3
  store i32 %325, i32* %328, align 4
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* %11, align 8
  %334 = add nsw i64 %332, %333
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %334, %337
  %339 = trunc i64 %338 to i32
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 2
  store i32 %339, i32* %342, align 8
  br label %359

343:                                              ; preds = %278
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 7
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 3
  store i32 %348, i32* %351, align 4
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 7
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 2
  store i32 %355, i32* %358, align 8
  br label %359

359:                                              ; preds = %343, %303
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @RBBS_USECHEVRON, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %409

366:                                              ; preds = %359
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = sub nsw i64 %370, %374
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 5
  %378 = load i64, i64* %377, align 8
  %379 = icmp slt i64 %375, %378
  br i1 %379, label %380, label %409

380:                                              ; preds = %366
  %381 = load i64, i64* @CHEVRON_WIDTH, align 8
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = sub nsw i64 %385, %381
  store i64 %386, i64* %384, align 8
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 9
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 8
  %391 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @CHEVRON_WIDTH, align 8
  %403 = add nsw i64 %401, %402
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @SetRect(%struct.TYPE_17__* %388, i64 %392, i64 %397, i64 %403, i32 %407)
  br label %409

409:                                              ; preds = %380, %366, %359
  br label %434

410:                                              ; preds = %273
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 8
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 7
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %416, %419
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 7
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 7
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 7
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @SetRect(%struct.TYPE_17__* %412, i64 %420, i64 %424, i64 %428, i32 %432)
  br label %434

434:                                              ; preds = %410, %409
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @NTF_INVALIDATE, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %480

441:                                              ; preds = %434
  %442 = load i32, i32* @NTF_INVALIDATE, align 4
  %443 = xor i32 %442, -1
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, %443
  store i32 %447, i32* %445, align 4
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 7
  %450 = bitcast %struct.TYPE_14__* %10 to i8*
  %451 = bitcast %struct.TYPE_14__* %449 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %450, i8* align 8 %451, i64 32, i1 false)
  %452 = load i64, i64* @SEP_WIDTH, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %454, %452
  store i64 %455, i64* %453, align 8
  %456 = load i64, i64* @SEP_WIDTH, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = sext i32 %458 to i64
  %460 = add nsw i64 %459, %456
  %461 = trunc i64 %460 to i32
  store i32 %461, i32* %457, align 8
  %462 = call i32 @wine_dbgstr_rect(%struct.TYPE_14__* %10)
  %463 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %462)
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i32, i32* @TRUE, align 4
  %468 = call i32 @InvalidateRect(i64 %466, %struct.TYPE_14__* %10, i32 %467)
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 6
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %479

473:                                              ; preds = %441
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 6
  %476 = load i64, i64* %475, align 8
  %477 = load i32, i32* @TRUE, align 4
  %478 = call i32 @InvalidateRect(i64 %476, %struct.TYPE_14__* null, i32 %477)
  br label %479

479:                                              ; preds = %473, %441
  br label %480

480:                                              ; preds = %479, %434
  br label %481

481:                                              ; preds = %480, %24
  %482 = load i64, i64* %8, align 8
  %483 = add nsw i64 %482, 1
  store i64 %483, i64* %8, align 8
  br label %13

484:                                              ; preds = %13
  ret void
}

declare dso_local %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @HIDDENBAND(%struct.TYPE_16__*) #1

declare dso_local i32 @SetRect(%struct.TYPE_17__*, i64, i64, i64, i32) #1

declare dso_local i32 @InflateRect(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_14__*) #1

declare dso_local i32 @InvalidateRect(i64, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
