; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_params_guess_csp.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_params_guess_csp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image_params = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i64 }

@MP_CSP_AUTO = common dso_local global i32 0, align 4
@MP_CSP_BT_601 = common dso_local global i64 0, align 8
@MP_CSP_BT_709 = common dso_local global i64 0, align 8
@MP_CSP_BT_2020_NC = common dso_local global i64 0, align 8
@MP_CSP_BT_2020_C = common dso_local global i64 0, align 8
@MP_CSP_SMPTE_240M = common dso_local global i64 0, align 8
@MP_CSP_YCGCO = common dso_local global i64 0, align 8
@MP_CSP_LEVELS_AUTO = common dso_local global i64 0, align 8
@MP_CSP_TRC_V_LOG = common dso_local global i64 0, align 8
@MP_CSP_LEVELS_PC = common dso_local global i64 0, align 8
@MP_CSP_LEVELS_TV = common dso_local global i64 0, align 8
@MP_CSP_PRIM_AUTO = common dso_local global i64 0, align 8
@MP_CSP_PRIM_BT_2020 = common dso_local global i8* null, align 8
@MP_CSP_PRIM_BT_709 = common dso_local global i8* null, align 8
@MP_CSP_TRC_AUTO = common dso_local global i64 0, align 8
@MP_CSP_TRC_BT_1886 = common dso_local global i64 0, align 8
@MP_CSP_RGB = common dso_local global i32 0, align 4
@MP_CSP_TRC_SRGB = common dso_local global i64 0, align 8
@MP_CSP_XYZ = common dso_local global i32 0, align 4
@MP_CSP_TRC_LINEAR = common dso_local global i64 0, align 8
@MP_CSP_TRC_HLG = common dso_local global i64 0, align 8
@MP_REF_WHITE = common dso_local global i32 0, align 4
@MP_CHROMA_AUTO = common dso_local global i64 0, align 8
@MP_CHROMA_LEFT = common dso_local global i64 0, align 8
@MP_CHROMA_CENTER = common dso_local global i64 0, align 8
@MP_CSP_LIGHT_AUTO = common dso_local global i64 0, align 8
@MP_CSP_LIGHT_SCENE_HLG = common dso_local global i64 0, align 8
@MP_CSP_LIGHT_DISPLAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_params_guess_csp(%struct.mp_image_params* %0) #0 {
  %2 = alloca %struct.mp_image_params*, align 8
  %3 = alloca i32, align 4
  store %struct.mp_image_params* %0, %struct.mp_image_params** %2, align 8
  %4 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %5 = call i32 @mp_image_params_get_forced_csp(%struct.mp_image_params* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MP_CSP_AUTO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %168

9:                                                ; preds = %1
  %10 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %11 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MP_CSP_BT_601, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %9
  %17 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %18 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MP_CSP_BT_709, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MP_CSP_BT_2020_NC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %23
  %31 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %32 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MP_CSP_BT_2020_C, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %39 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MP_CSP_SMPTE_240M, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %46 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MP_CSP_YCGCO, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @MP_CSP_AUTO, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %55 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %44, %37, %30, %23, %16, %9
  %58 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %59 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @MP_CSP_AUTO, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %67 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %70 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mp_csp_guess_colorspace(i32 %68, i32 %71)
  %73 = sext i32 %72 to i64
  %74 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %75 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %65, %57
  %78 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %79 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MP_CSP_LEVELS_AUTO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %77
  %85 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %86 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MP_CSP_TRC_V_LOG, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i64, i64* @MP_CSP_LEVELS_PC, align 8
  %93 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %94 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i64 %92, i64* %95, align 8
  br label %101

96:                                               ; preds = %84
  %97 = load i64, i64* @MP_CSP_LEVELS_TV, align 8
  %98 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %99 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %104 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MP_CSP_PRIM_AUTO, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %155

109:                                              ; preds = %102
  %110 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %111 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MP_CSP_BT_2020_NC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %118 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MP_CSP_BT_2020_C, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %116, %109
  %124 = load i8*, i8** @MP_CSP_PRIM_BT_2020, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %127 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store i64 %125, i64* %128, align 8
  br label %154

129:                                              ; preds = %116
  %130 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %131 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MP_CSP_BT_709, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i8*, i8** @MP_CSP_PRIM_BT_709, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %140 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  store i64 %138, i64* %141, align 8
  br label %153

142:                                              ; preds = %129
  %143 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %144 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %147 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @mp_csp_guess_primaries(i32 %145, i32 %148)
  %150 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %151 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  store i64 %149, i64* %152, align 8
  br label %153

153:                                              ; preds = %142, %136
  br label %154

154:                                              ; preds = %153, %123
  br label %155

155:                                              ; preds = %154, %102
  %156 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %157 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MP_CSP_TRC_AUTO, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load i64, i64* @MP_CSP_TRC_BT_1886, align 8
  %164 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %165 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  store i64 %163, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %155
  br label %266

168:                                              ; preds = %1
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @MP_CSP_RGB, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %207

172:                                              ; preds = %168
  %173 = load i32, i32* @MP_CSP_RGB, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %176 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  %178 = load i64, i64* @MP_CSP_LEVELS_PC, align 8
  %179 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %180 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 %178, i64* %181, align 8
  %182 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %183 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @MP_CSP_PRIM_AUTO, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %172
  %189 = load i8*, i8** @MP_CSP_PRIM_BT_709, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %192 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 3
  store i64 %190, i64* %193, align 8
  br label %194

194:                                              ; preds = %188, %172
  %195 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %196 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MP_CSP_TRC_AUTO, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load i64, i64* @MP_CSP_TRC_SRGB, align 8
  %203 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %204 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  store i64 %202, i64* %205, align 8
  br label %206

206:                                              ; preds = %201, %194
  br label %265

207:                                              ; preds = %168
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @MP_CSP_XYZ, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %246

211:                                              ; preds = %207
  %212 = load i32, i32* @MP_CSP_XYZ, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %215 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  store i64 %213, i64* %216, align 8
  %217 = load i64, i64* @MP_CSP_LEVELS_PC, align 8
  %218 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %219 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  store i64 %217, i64* %220, align 8
  %221 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %222 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @MP_CSP_PRIM_AUTO, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %211
  %228 = load i8*, i8** @MP_CSP_PRIM_BT_2020, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %231 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 3
  store i64 %229, i64* %232, align 8
  br label %233

233:                                              ; preds = %227, %211
  %234 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %235 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @MP_CSP_TRC_AUTO, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load i64, i64* @MP_CSP_TRC_LINEAR, align 8
  %242 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %243 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  store i64 %241, i64* %244, align 8
  br label %245

245:                                              ; preds = %240, %233
  br label %264

246:                                              ; preds = %207
  %247 = load i32, i32* @MP_CSP_AUTO, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %250 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  store i64 %248, i64* %251, align 8
  %252 = load i64, i64* @MP_CSP_LEVELS_AUTO, align 8
  %253 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %254 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  store i64 %252, i64* %255, align 8
  %256 = load i64, i64* @MP_CSP_PRIM_AUTO, align 8
  %257 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %258 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 3
  store i64 %256, i64* %259, align 8
  %260 = load i64, i64* @MP_CSP_TRC_AUTO, align 8
  %261 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %262 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 2
  store i64 %260, i64* %263, align 8
  br label %264

264:                                              ; preds = %246, %245
  br label %265

265:                                              ; preds = %264, %206
  br label %266

266:                                              ; preds = %265, %167
  %267 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %268 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %295, label %272

272:                                              ; preds = %266
  %273 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %274 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @MP_CSP_TRC_HLG, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %272
  %280 = load i32, i32* @MP_REF_WHITE, align 4
  %281 = sdiv i32 1000, %280
  %282 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %283 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 4
  store i32 %281, i32* %284, align 8
  br label %294

285:                                              ; preds = %272
  %286 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %287 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @mp_trc_nom_peak(i64 %289)
  %291 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %292 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 4
  store i32 %290, i32* %293, align 8
  br label %294

294:                                              ; preds = %285, %279
  br label %295

295:                                              ; preds = %294, %266
  %296 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %297 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @mp_trc_is_hdr(i64 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %295
  %303 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %304 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 4
  store i32 1, i32* %305, align 8
  br label %306

306:                                              ; preds = %302, %295
  %307 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %308 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @MP_CHROMA_AUTO, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %335

312:                                              ; preds = %306
  %313 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %314 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @MP_CSP_LEVELS_TV, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %312
  %320 = load i64, i64* @MP_CHROMA_LEFT, align 8
  %321 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %322 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %321, i32 0, i32 0
  store i64 %320, i64* %322, align 8
  br label %323

323:                                              ; preds = %319, %312
  %324 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %325 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @MP_CSP_LEVELS_PC, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %323
  %331 = load i64, i64* @MP_CHROMA_CENTER, align 8
  %332 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %333 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  br label %334

334:                                              ; preds = %330, %323
  br label %335

335:                                              ; preds = %334, %306
  %336 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %337 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @MP_CSP_LIGHT_AUTO, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %360

342:                                              ; preds = %335
  %343 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %344 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @MP_CSP_TRC_HLG, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %342
  %350 = load i64, i64* @MP_CSP_LIGHT_SCENE_HLG, align 8
  %351 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %352 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 5
  store i64 %350, i64* %353, align 8
  br label %359

354:                                              ; preds = %342
  %355 = load i64, i64* @MP_CSP_LIGHT_DISPLAY, align 8
  %356 = load %struct.mp_image_params*, %struct.mp_image_params** %2, align 8
  %357 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 5
  store i64 %355, i64* %358, align 8
  br label %359

359:                                              ; preds = %354, %349
  br label %360

360:                                              ; preds = %359, %335
  ret void
}

declare dso_local i32 @mp_image_params_get_forced_csp(%struct.mp_image_params*) #1

declare dso_local i32 @mp_csp_guess_colorspace(i32, i32) #1

declare dso_local i64 @mp_csp_guess_primaries(i32, i32) #1

declare dso_local i32 @mp_trc_nom_peak(i64) #1

declare dso_local i32 @mp_trc_is_hdr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
