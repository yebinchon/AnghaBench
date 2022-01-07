; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.xvctx*, %struct.vo_x11_state* }
%struct.xvctx = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_5__, i8*, i8*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.vo_x11_state = type { i32, i32 }
%struct.mp_image_params = type { i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [64 x i8] c"Source image dimensions are too high: %ux%u (maximum is %ux%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Xvideo image format: 0x%x (%4.4s) %s\0A\00", align 1
@XvPacked = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"planar\00", align 1
@CK_METHOD_BACKGROUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"using Xvideo port %d for hw scaling\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"could not allocate Xv image data\0A\00", align 1
@MP_CSP_BT_709 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"bt_709\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image_params*, align 8
  %6 = alloca %struct.vo_x11_state*, align 8
  %7 = alloca %struct.xvctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %5, align 8
  %10 = load %struct.vo*, %struct.vo** %4, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %11, align 8
  store %struct.vo_x11_state* %12, %struct.vo_x11_state** %6, align 8
  %13 = load %struct.vo*, %struct.vo** %4, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 0
  %15 = load %struct.xvctx*, %struct.xvctx** %14, align 8
  store %struct.xvctx* %15, %struct.xvctx** %7, align 8
  %16 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %17 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %16, i32 0, i32 17
  %18 = call i32 @mp_image_unrefp(i32* %17)
  %19 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %20 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %23 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %28 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %30 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %33 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %32, i32 0, i32 16
  store i32 %31, i32* %33, align 8
  %34 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %35 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %2
  %39 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %40 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %45 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %48 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %53 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %56 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %51, %43
  %60 = load %struct.vo*, %struct.vo** %4, align 8
  %61 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %62 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %65 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %68 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %71 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @MP_ERR(%struct.vo* %60, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %66, i64 %69, i64 %72)
  store i32 -1, i32* %3, align 4
  br label %272

74:                                               ; preds = %51, %38, %2
  %75 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %76 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %139, %74
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %80 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %142

83:                                               ; preds = %77
  %84 = load %struct.vo*, %struct.vo** %4, align 8
  %85 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %86 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %85, i32 0, i32 15
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %94 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %93, i32 0, i32 15
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = bitcast i64* %99 to i8*
  %101 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %102 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %101, i32 0, i32 15
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @XvPacked, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %113 = call i32 (%struct.vo*, i8*, i64, ...) @MP_VERBOSE(%struct.vo* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %92, i8* %100, i8* %112)
  %114 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %115 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %114, i32 0, i32 15
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %123 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %122, i32 0, i32 16
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @find_xv_format(i32 %124)
  %126 = icmp eq i64 %121, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %83
  %128 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %129 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %128, i32 0, i32 15
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %137 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %127, %83
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %77

142:                                              ; preds = %77
  %143 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %144 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  store i32 -1, i32* %3, align 4
  br label %272

148:                                              ; preds = %142
  %149 = load %struct.vo*, %struct.vo** %4, align 8
  %150 = call i32 @vo_x11_config_vo_window(%struct.vo* %149)
  %151 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %152 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %151, i32 0, i32 13
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %186, label %155

155:                                              ; preds = %148
  %156 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %157 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %156, i32 0, i32 14
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %186, label %160

160:                                              ; preds = %155
  %161 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %162 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %165 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @XCreateGC(i32 %163, i32 %166, i32 0, i32* null)
  %168 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %169 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %168, i32 0, i32 13
  store i8* %167, i8** %169, align 8
  %170 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %171 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %174 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @XCreateGC(i32 %172, i32 %175, i32 0, i32* null)
  %177 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %178 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %177, i32 0, i32 14
  store i8* %176, i8** %178, align 8
  %179 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %180 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %183 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %182, i32 0, i32 13
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @XSetForeground(i32 %181, i8* %184, i32 0)
  br label %186

186:                                              ; preds = %160, %155, %148
  %187 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %188 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %187, i32 0, i32 12
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CK_METHOD_BACKGROUND, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %186
  %194 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %195 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %198 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %201 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %200, i32 0, i32 11
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @XSetWindowBackground(i32 %196, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %193, %186
  %205 = load %struct.vo*, %struct.vo** %4, align 8
  %206 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %207 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = call i32 (%struct.vo*, i8*, i64, ...) @MP_VERBOSE(%struct.vo* %205, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %209)
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %221, %204
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %214 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.vo*, %struct.vo** %4, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @deallocate_xvimage(%struct.vo* %218, i32 %219)
  br label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %211

224:                                              ; preds = %211
  %225 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %226 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %229 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %228, i32 0, i32 6
  store i32 %227, i32* %229, align 4
  store i32 0, i32* %8, align 4
  br label %230

230:                                              ; preds = %245, %224
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %233 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %230
  %237 = load %struct.vo*, %struct.vo** %4, align 8
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @allocate_xvimage(%struct.vo* %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load %struct.vo*, %struct.vo** %4, align 8
  %243 = call i32 @MP_FATAL(%struct.vo* %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %272

244:                                              ; preds = %236
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %230

248:                                              ; preds = %230
  %249 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %250 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %249, i32 0, i32 10
  store i64 0, i64* %250, align 8
  %251 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %252 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %251, i32 0, i32 9
  store i64 0, i64* %252, align 8
  %253 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %254 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @MP_CSP_BT_709, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i32
  store i32 %259, i32* %9, align 4
  %260 = load %struct.vo*, %struct.vo** %4, align 8
  %261 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %262 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %9, align 4
  %265 = mul nsw i32 %264, 200
  %266 = sub nsw i32 %265, 100
  %267 = call i32 @xv_set_eq(%struct.vo* %260, i32 %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %266)
  %268 = load %struct.vo*, %struct.vo** %4, align 8
  %269 = call i32 @read_xv_csp(%struct.vo* %268)
  %270 = load %struct.vo*, %struct.vo** %4, align 8
  %271 = call i32 @resize(%struct.vo* %270)
  store i32 0, i32* %3, align 4
  br label %272

272:                                              ; preds = %248, %241, %147, %59
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @mp_image_unrefp(i32*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*, i64, ...) #1

declare dso_local i64 @find_xv_format(i32) #1

declare dso_local i32 @vo_x11_config_vo_window(%struct.vo*) #1

declare dso_local i8* @XCreateGC(i32, i32, i32, i32*) #1

declare dso_local i32 @XSetForeground(i32, i8*, i32) #1

declare dso_local i32 @XSetWindowBackground(i32, i32, i32) #1

declare dso_local i32 @deallocate_xvimage(%struct.vo*, i32) #1

declare dso_local i32 @allocate_xvimage(%struct.vo*, i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @xv_set_eq(%struct.vo*, i32, i8*, i32) #1

declare dso_local i32 @read_xv_csp(%struct.vo*) #1

declare dso_local i32 @resize(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
