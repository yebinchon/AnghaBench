; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_ValidateBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_ValidateBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@RBBS_FIXEDSIZE = common dso_local global i32 0, align 4
@RBBS_NOGRIPPER = common dso_local global i32 0, align 4
@RBBS_GRIPPERALWAYS = common dso_local global i32 0, align 4
@HAS_GRIPPER = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@RBS_VERTICALGRIPPER = common dso_local global i32 0, align 4
@GRIPPER_HEIGHT = common dso_local global i64 0, align 8
@REBAR_PRE_GRIPPER = common dso_local global i64 0, align 8
@GRIPPER_WIDTH = common dso_local global i64 0, align 8
@REBAR_ALWAYS_SPACE = common dso_local global i64 0, align 8
@HAS_IMAGE = common dso_local global i32 0, align 4
@REBAR_POST_IMAGE = common dso_local global i64 0, align 8
@RBBIM_TEXT = common dso_local global i32 0, align 4
@RBBS_HIDETITLE = common dso_local global i32 0, align 4
@HAS_TEXT = common dso_local global i32 0, align 4
@REBAR_POST_TEXT = common dso_local global i64 0, align 8
@RBBS_UNDOC_FIXEDHEADER = common dso_local global i32 0, align 4
@REBAR_POST_CHILD = common dso_local global i64 0, align 8
@RBBS_USECHEVRON = common dso_local global i32 0, align 4
@CHEVRON_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @REBAR_ValidateBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_ValidateBand(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 14
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 65535
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 65535
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 65535
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 65535
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 4
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 65535
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 5
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 65535
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 6
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 65535
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 7
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %101, %76
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %84, i64 %85)
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %11, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = call i32 @HIDDENBAND(%struct.TYPE_16__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RBBS_FIXEDSIZE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %97, %90, %83
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %77

104:                                              ; preds = %77
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @RBBS_NOGRIPPER, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %170, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @RBBS_GRIPPERALWAYS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @RBBS_FIXEDSIZE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %170, label %125

125:                                              ; preds = %118
  %126 = load i64, i64* %10, align 8
  %127 = icmp sgt i64 %126, 1
  br i1 %127, label %128, label %170

128:                                              ; preds = %125, %111
  %129 = load i32, i32* @HAS_GRIPPER, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CCS_VERT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %128
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @RBS_VERTICALGRIPPER, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i64, i64* @GRIPPER_HEIGHT, align 8
  %149 = load i64, i64* @REBAR_PRE_GRIPPER, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i64, i64* %6, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %6, align 8
  br label %159

153:                                              ; preds = %140
  %154 = load i64, i64* @GRIPPER_WIDTH, align 8
  %155 = load i64, i64* @REBAR_PRE_GRIPPER, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i64, i64* %6, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %153, %147
  br label %166

160:                                              ; preds = %128
  %161 = load i64, i64* @REBAR_PRE_GRIPPER, align 8
  %162 = load i64, i64* @GRIPPER_WIDTH, align 8
  %163 = add nsw i64 %161, %162
  %164 = load i64, i64* %6, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %6, align 8
  br label %166

166:                                              ; preds = %160, %159
  %167 = load i64, i64* @REBAR_ALWAYS_SPACE, align 8
  %168 = load i64, i64* %6, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %6, align 8
  br label %170

170:                                              ; preds = %166, %125, %118, %104
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %221

175:                                              ; preds = %170
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %221

180:                                              ; preds = %175
  %181 = load i32, i32* @HAS_IMAGE, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CCS_VERT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %180
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @REBAR_POST_IMAGE, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64, i64* %6, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %6, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 4
  store i64 %205, i64* %8, align 8
  br label %220

206:                                              ; preds = %180
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @REBAR_POST_IMAGE, align 8
  %212 = add nsw i64 %210, %211
  %213 = load i64, i64* %6, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %6, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 4
  store i64 %219, i64* %8, align 8
  br label %220

220:                                              ; preds = %206, %192
  br label %221

221:                                              ; preds = %220, %175, %170
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @RBBIM_TEXT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %298

228:                                              ; preds = %221
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 13
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %298

233:                                              ; preds = %228
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @RBBS_HIDETITLE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %298, label %240

240:                                              ; preds = %233
  %241 = call i32 @GetDC(i32 0)
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @SelectObject(i32 %242, i32 %245)
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* @HAS_TEXT, align 4
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 13
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 13
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @lstrlenW(i64 %258)
  %260 = call i32 @GetTextExtentPoint32W(i32 %252, i64 %255, i32 %259, %struct.TYPE_14__* %14)
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @CCS_VERT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %240
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @REBAR_POST_TEXT, align 8
  %271 = add nsw i64 %269, %270
  br label %277

272:                                              ; preds = %240
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @REBAR_POST_TEXT, align 8
  %276 = add nsw i64 %274, %275
  br label %277

277:                                              ; preds = %272, %267
  %278 = phi i64 [ %271, %267 ], [ %276, %272 ]
  %279 = load i64, i64* %6, align 8
  %280 = add nsw i64 %279, %278
  store i64 %280, i64* %6, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @CCS_VERT, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  br label %291

288:                                              ; preds = %277
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  br label %291

291:                                              ; preds = %288, %287
  %292 = phi i64 [ 0, %287 ], [ %290, %288 ]
  store i64 %292, i64* %7, align 8
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @SelectObject(i32 %293, i32 %294)
  %296 = load i32, i32* %12, align 4
  %297 = call i32 @ReleaseDC(i32 0, i32 %296)
  br label %298

298:                                              ; preds = %291, %233, %228, %221
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @HAS_IMAGE, align 4
  %303 = load i32, i32* @HAS_TEXT, align 4
  %304 = or i32 %302, %303
  %305 = and i32 %301, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %298
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @HAS_GRIPPER, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %307
  %315 = load i64, i64* @REBAR_ALWAYS_SPACE, align 8
  %316 = load i64, i64* %6, align 8
  %317 = add nsw i64 %316, %315
  store i64 %317, i64* %6, align 8
  br label %318

318:                                              ; preds = %314, %307, %298
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @RBBS_UNDOC_FIXEDHEADER, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %318
  %326 = load i64, i64* %6, align 8
  %327 = trunc i64 %326 to i32
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 7
  store i32 %327, i32* %329, align 4
  br label %330

330:                                              ; preds = %325, %318
  %331 = load i64, i64* %7, align 8
  %332 = load i64, i64* %8, align 8
  %333 = call i32 @max(i64 %331, i64 %332)
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 12
  store i32 %333, i32* %335, align 8
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %338 = call i32 @update_min_band_height(%struct.TYPE_15__* %336, %struct.TYPE_16__* %337)
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %341, %344
  %346 = sext i32 %345 to i64
  %347 = load i64, i64* @REBAR_POST_CHILD, align 8
  %348 = add nsw i64 %346, %347
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 11
  store i64 %348, i64* %350, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @RBBS_USECHEVRON, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %371

357:                                              ; preds = %330
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %360, %363
  br i1 %364, label %365, label %371

365:                                              ; preds = %357
  %366 = load i64, i64* @CHEVRON_WIDTH, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 11
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %369, %366
  store i64 %370, i64* %368, align 8
  br label %371

371:                                              ; preds = %365, %357, %330
  %372 = load i32, i32* %3, align 4
  ret i32 %372
}

declare dso_local %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @HIDDENBAND(%struct.TYPE_16__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i64, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @update_min_band_height(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
