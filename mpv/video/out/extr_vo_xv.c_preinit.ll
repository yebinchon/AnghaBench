; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.xvctx* }
%struct.vo_x11_state = type { i32 }
%struct.xvctx = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"xv\00", align 1
@Success = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Xv not supported by this X11 version/driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"XvQueryAdaptors failed.\0A\00", align 1
@XvInputMask = common dso_local global i32 0, align 4
@XvImageMask = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Invalid port parameter, overriding with port 0.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Using Xv Adapter #%d (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not grab port %i.\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Xvideo ports busy.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"No Xvideo support found.\0A\00", align 1
@.str.8 = private unnamed_addr constant [179 x i8] c"Warning: this legacy VO has bad quality and performance, and will in particular result in blurry OSD and subtitles. You should fix your graphics drivers, or not force the xv VO.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xvctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vo_x11_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.vo*, %struct.vo** %3, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 1
  %18 = load %struct.xvctx*, %struct.xvctx** %17, align 8
  store %struct.xvctx* %18, %struct.xvctx** %7, align 8
  %19 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %20 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.vo*, %struct.vo** %3, align 8
  %23 = call i32 @vo_x11_init(%struct.vo* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %330

26:                                               ; preds = %1
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = call i32 @vo_x11_create_vo_window(%struct.vo* %27, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %327

31:                                               ; preds = %26
  %32 = load %struct.vo*, %struct.vo** %3, align 8
  %33 = getelementptr inbounds %struct.vo, %struct.vo* %32, i32 0, i32 0
  %34 = load %struct.vo_x11_state*, %struct.vo_x11_state** %33, align 8
  store %struct.vo_x11_state* %34, %struct.vo_x11_state** %9, align 8
  %35 = load i64, i64* @Success, align 8
  %36 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %37 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @XvQueryExtension(i32 %38, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %40 = icmp ne i64 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.vo*, %struct.vo** %3, align 8
  %43 = call i32 @MP_ERR(%struct.vo* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %327

44:                                               ; preds = %31
  %45 = load i64, i64* @Success, align 8
  %46 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %47 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %50 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DefaultRootWindow(i32 %51)
  %53 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %54 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %53, i32 0, i32 1
  %55 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %56 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %55, i32 0, i32 7
  %57 = call i64 @XvQueryAdaptors(i32 %48, i32 %52, i32* %54, %struct.TYPE_2__** %56)
  %58 = icmp ne i64 %45, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load %struct.vo*, %struct.vo** %3, align 8
  %61 = call i32 @MP_ERR(%struct.vo* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %327

62:                                               ; preds = %44
  %63 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %64 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %171

67:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %145, %67
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %74 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %72, %75
  br label %77

77:                                               ; preds = %71, %68
  %78 = phi i1 [ false, %68 ], [ %76, %71 ]
  br i1 %78, label %79, label %148

79:                                               ; preds = %77
  %80 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %81 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %80, i32 0, i32 7
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @XvInputMask, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %79
  %92 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %93 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %92, i32 0, i32 7
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @XvImageMask, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %144

103:                                              ; preds = %91
  %104 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %105 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %104, i32 0, i32 7
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %4, align 8
  br label %112

112:                                              ; preds = %140, %103
  %113 = load i64, i64* %4, align 8
  %114 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %115 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %114, i32 0, i32 7
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %123 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %122, i32 0, i32 7
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %121, %129
  %131 = icmp slt i64 %113, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %112
  %133 = load i64, i64* %4, align 8
  %134 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %135 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 1, i32* %15, align 4
  br label %143

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %4, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %4, align 8
  br label %112

143:                                              ; preds = %138, %112
  br label %144

144:                                              ; preds = %143, %91, %79
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %68

148:                                              ; preds = %77
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %153 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %156 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @CurrentTime, align 4
  %159 = call i64 @XvGrabPort(i32 %154, i64 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %163 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %161, %151
  br label %170

165:                                              ; preds = %148
  %166 = load %struct.vo*, %struct.vo** %3, align 8
  %167 = call i32 (%struct.vo*, i8*, ...) @MP_WARN(%struct.vo* %166, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %168 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %169 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %164
  br label %171

171:                                              ; preds = %170, %62
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %282, %171
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %175 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %180 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br label %183

183:                                              ; preds = %178, %172
  %184 = phi i1 [ false, %172 ], [ %182, %178 ]
  br i1 %184, label %185, label %285

185:                                              ; preds = %183
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, -1
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %282

193:                                              ; preds = %188, %185
  %194 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %195 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %194, i32 0, i32 7
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @XvInputMask, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %281

205:                                              ; preds = %193
  %206 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %207 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %206, i32 0, i32 7
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @XvImageMask, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %281

217:                                              ; preds = %205
  %218 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %219 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %218, i32 0, i32 7
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %4, align 8
  br label %226

226:                                              ; preds = %277, %217
  %227 = load i64, i64* %4, align 8
  %228 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %229 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %228, i32 0, i32 7
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %237 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %236, i32 0, i32 7
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %235, %243
  %245 = icmp slt i64 %227, %244
  br i1 %245, label %246, label %280

246:                                              ; preds = %226
  %247 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %248 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* %4, align 8
  %251 = load i32, i32* @CurrentTime, align 4
  %252 = call i64 @XvGrabPort(i32 %249, i64 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %246
  %255 = load i64, i64* %4, align 8
  %256 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %257 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %256, i32 0, i32 2
  store i64 %255, i64* %257, align 8
  %258 = load %struct.vo*, %struct.vo** %3, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %261 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %260, i32 0, i32 7
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @MP_VERBOSE(%struct.vo* %258, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %259, i32 %267)
  br label %280

269:                                              ; preds = %246
  %270 = load %struct.vo*, %struct.vo** %3, align 8
  %271 = load i64, i64* %4, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 (%struct.vo*, i8*, ...) @MP_WARN(%struct.vo* %270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %269
  br label %277

277:                                              ; preds = %276
  %278 = load i64, i64* %4, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %4, align 8
  br label %226

280:                                              ; preds = %254, %226
  br label %281

281:                                              ; preds = %280, %205, %193
  br label %282

282:                                              ; preds = %281, %192
  %283 = load i32, i32* %6, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %6, align 4
  br label %172

285:                                              ; preds = %183
  %286 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %287 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %285
  %291 = load i32, i32* %5, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load %struct.vo*, %struct.vo** %3, align 8
  %295 = call i32 @MP_ERR(%struct.vo* %294, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %299

296:                                              ; preds = %290
  %297 = load %struct.vo*, %struct.vo** %3, align 8
  %298 = call i32 @MP_ERR(%struct.vo* %297, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %293
  br label %327

300:                                              ; preds = %285
  %301 = load %struct.vo*, %struct.vo** %3, align 8
  %302 = call i32 @xv_init_colorkey(%struct.vo* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %300
  br label %327

305:                                              ; preds = %300
  %306 = load %struct.vo*, %struct.vo** %3, align 8
  %307 = call i32 @xv_enable_vsync(%struct.vo* %306)
  %308 = load %struct.vo*, %struct.vo** %3, align 8
  %309 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %310 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %309, i32 0, i32 6
  %311 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %312 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %311, i32 0, i32 5
  %313 = call i32 @xv_get_max_img_dim(%struct.vo* %308, i32* %310, i32* %312)
  %314 = load %struct.vo_x11_state*, %struct.vo_x11_state** %9, align 8
  %315 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %318 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %321 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %320, i32 0, i32 3
  %322 = call i32 @XvListImageFormats(i32 %316, i64 %319, i32* %321)
  %323 = load %struct.xvctx*, %struct.xvctx** %7, align 8
  %324 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %323, i32 0, i32 4
  store i32 %322, i32* %324, align 4
  %325 = load %struct.vo*, %struct.vo** %3, align 8
  %326 = call i32 (%struct.vo*, i8*, ...) @MP_WARN(%struct.vo* %325, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %330

327:                                              ; preds = %304, %299, %59, %41, %30
  %328 = load %struct.vo*, %struct.vo** %3, align 8
  %329 = call i32 @uninit(%struct.vo* %328)
  store i32 -1, i32* %2, align 4
  br label %330

330:                                              ; preds = %327, %305, %25
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local i32 @vo_x11_init(%struct.vo*) #1

declare dso_local i32 @vo_x11_create_vo_window(%struct.vo*, i32*, i8*) #1

declare dso_local i64 @XvQueryExtension(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i64 @XvQueryAdaptors(i32, i32, i32*, %struct.TYPE_2__**) #1

declare dso_local i32 @DefaultRootWindow(i32) #1

declare dso_local i64 @XvGrabPort(i32, i64, i32) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*, ...) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*, i32, i32) #1

declare dso_local i32 @xv_init_colorkey(%struct.vo*) #1

declare dso_local i32 @xv_enable_vsync(%struct.vo*) #1

declare dso_local i32 @xv_get_max_img_dim(%struct.vo*, i32*, i32*) #1

declare dso_local i32 @XvListImageFormats(i32, i64, i32*) #1

declare dso_local i32 @uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
