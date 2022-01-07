; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_sndio.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_sndio.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af_to_par = type { i32, i32, i32 }
%struct.ao = type { i64, i32, i32, %struct.TYPE_6__, %struct.priv* }
%struct.TYPE_6__ = type { i32 }
%struct.priv = type { i32*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i32, i64, i32 }
%struct.mp_chmap_sel = type { i32 }

@init.af_to_par = internal constant [3 x %struct.af_to_par] [%struct.af_to_par { i32 128, i32 8, i32 0 }, %struct.af_to_par { i32 130, i32 16, i32 1 }, %struct.af_to_par { i32 129, i32 32, i32 1 }], align 16
@SIO_DEVANY = common dso_local global i32 0, align 4
@SIO_PLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't open sndio %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unsupported format\0A\00", align 1
@SIO_LE_NATIVE = common dso_local global i64 0, align 8
@MP_NUM_CHANNELS = common dso_local global i32 0, align 4
@sndio_layouts = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"couldn't set params\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"couldn't get params\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"swapped endian output not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"couldn't set format\0A\00", align 1
@volcb = common dso_local global i32 0, align 4
@movecb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"init: couldn't start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.af_to_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_chmap_sel, align 4
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 4
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load i32, i32* @SIO_DEVANY, align 4
  %13 = load i32, i32* @SIO_PLAY, align 4
  %14 = call i32* @sio_open(i32 %12, i32 %13, i32 0)
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.ao*, %struct.ao** %3, align 8
  %23 = load i32, i32* @SIO_DEVANY, align 4
  %24 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %316

25:                                               ; preds = %1
  %26 = load %struct.ao*, %struct.ao** %3, align 8
  %27 = getelementptr inbounds %struct.ao, %struct.ao* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @af_fmt_from_planar(i64 %28)
  %30 = load %struct.ao*, %struct.ao** %3, align 8
  %31 = getelementptr inbounds %struct.ao, %struct.ao* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.priv*, %struct.priv** %4, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 1
  %34 = call i32 @sio_initpar(%struct.TYPE_5__* %33)
  store i32 0, i32* %6, align 4
  store %struct.af_to_par* getelementptr inbounds ([3 x %struct.af_to_par], [3 x %struct.af_to_par]* @init.af_to_par, i64 0, i64 0), %struct.af_to_par** %5, align 8
  br label %35

35:                                               ; preds = %102, %25
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.ao*, %struct.ao** %3, align 8
  %41 = call i32 @MP_VERBOSE(%struct.ao* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 16, i32* %44, align 8
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i64, i64* @SIO_LE_NATIVE, align 8
  %49 = load %struct.priv*, %struct.priv** %4, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  br label %107

52:                                               ; preds = %35
  %53 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %54 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.ao*, %struct.ao** %3, align 8
  %58 = getelementptr inbounds %struct.ao, %struct.ao* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %52
  %62 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %63 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.priv*, %struct.priv** %4, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %69 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.priv*, %struct.priv** %4, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %75 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 8
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = load i64, i64* @SIO_LE_NATIVE, align 8
  %80 = load %struct.priv*, %struct.priv** %4, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %61
  %84 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %85 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %88 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SIO_BPS(i32 %89)
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %94 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 8
  %97 = load %struct.priv*, %struct.priv** %4, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %83
  br label %107

101:                                              ; preds = %52
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  %105 = load %struct.af_to_par*, %struct.af_to_par** %5, align 8
  %106 = getelementptr inbounds %struct.af_to_par, %struct.af_to_par* %105, i32 1
  store %struct.af_to_par* %106, %struct.af_to_par** %5, align 8
  br label %35

107:                                              ; preds = %100, %39
  %108 = load %struct.ao*, %struct.ao** %3, align 8
  %109 = getelementptr inbounds %struct.ao, %struct.ao* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.priv*, %struct.priv** %4, align 8
  %112 = getelementptr inbounds %struct.priv, %struct.priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 4
  %114 = bitcast %struct.mp_chmap_sel* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %114, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %126, %107
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %118 = add nsw i32 %117, 1
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i32*, i32** @sndio_layouts, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %7, i32* %124)
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load %struct.ao*, %struct.ao** %3, align 8
  %131 = load %struct.ao*, %struct.ao** %3, align 8
  %132 = getelementptr inbounds %struct.ao, %struct.ao* %131, i32 0, i32 3
  %133 = call i32 @ao_chmap_sel_adjust(%struct.ao* %130, %struct.mp_chmap_sel* %7, %struct.TYPE_6__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %316

136:                                              ; preds = %129
  %137 = load %struct.ao*, %struct.ao** %3, align 8
  %138 = getelementptr inbounds %struct.ao, %struct.ao* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.priv*, %struct.priv** %4, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 8
  store i32 %140, i32* %143, align 8
  %144 = load %struct.priv*, %struct.priv** %4, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 250
  %149 = sdiv i32 %148, 1000
  %150 = load %struct.priv*, %struct.priv** %4, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  store i32 %149, i32* %152, align 8
  %153 = load %struct.priv*, %struct.priv** %4, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %156, 10
  %158 = sdiv i32 %157, 1000
  %159 = load %struct.priv*, %struct.priv** %4, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 6
  store i32 %158, i32* %161, align 4
  %162 = load %struct.priv*, %struct.priv** %4, align 8
  %163 = getelementptr inbounds %struct.priv, %struct.priv* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.priv*, %struct.priv** %4, align 8
  %166 = getelementptr inbounds %struct.priv, %struct.priv* %165, i32 0, i32 1
  %167 = call i32 @sio_setpar(i32* %164, %struct.TYPE_5__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %136
  %170 = load %struct.ao*, %struct.ao** %3, align 8
  %171 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %170, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %316

172:                                              ; preds = %136
  %173 = load %struct.priv*, %struct.priv** %4, align 8
  %174 = getelementptr inbounds %struct.priv, %struct.priv* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.priv*, %struct.priv** %4, align 8
  %177 = getelementptr inbounds %struct.priv, %struct.priv* %176, i32 0, i32 1
  %178 = call i32 @sio_getpar(i32* %175, %struct.TYPE_5__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %172
  %181 = load %struct.ao*, %struct.ao** %3, align 8
  %182 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %316

183:                                              ; preds = %172
  %184 = load %struct.priv*, %struct.priv** %4, align 8
  %185 = getelementptr inbounds %struct.priv, %struct.priv* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load %struct.priv*, %struct.priv** %4, align 8
  %191 = getelementptr inbounds %struct.priv, %struct.priv* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @SIO_LE_NATIVE, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load %struct.ao*, %struct.ao** %3, align 8
  %198 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %197, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %316

199:                                              ; preds = %189, %183
  %200 = load %struct.priv*, %struct.priv** %4, align 8
  %201 = getelementptr inbounds %struct.priv, %struct.priv* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %205, label %220

205:                                              ; preds = %199
  %206 = load %struct.priv*, %struct.priv** %4, align 8
  %207 = getelementptr inbounds %struct.priv, %struct.priv* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load %struct.priv*, %struct.priv** %4, align 8
  %213 = getelementptr inbounds %struct.priv, %struct.priv* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = load %struct.ao*, %struct.ao** %3, align 8
  %219 = getelementptr inbounds %struct.ao, %struct.ao* %218, i32 0, i32 0
  store i64 128, i64* %219, align 8
  br label %273

220:                                              ; preds = %211, %205, %199
  %221 = load %struct.priv*, %struct.priv** %4, align 8
  %222 = getelementptr inbounds %struct.priv, %struct.priv* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 16
  br i1 %225, label %226, label %241

226:                                              ; preds = %220
  %227 = load %struct.priv*, %struct.priv** %4, align 8
  %228 = getelementptr inbounds %struct.priv, %struct.priv* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %241

232:                                              ; preds = %226
  %233 = load %struct.priv*, %struct.priv** %4, align 8
  %234 = getelementptr inbounds %struct.priv, %struct.priv* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load %struct.ao*, %struct.ao** %3, align 8
  %240 = getelementptr inbounds %struct.ao, %struct.ao* %239, i32 0, i32 0
  store i64 130, i64* %240, align 8
  br label %272

241:                                              ; preds = %232, %226, %220
  %242 = load %struct.priv*, %struct.priv** %4, align 8
  %243 = getelementptr inbounds %struct.priv, %struct.priv* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 32
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.priv*, %struct.priv** %4, align 8
  %249 = getelementptr inbounds %struct.priv, %struct.priv* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %247, %241
  %254 = load %struct.priv*, %struct.priv** %4, align 8
  %255 = getelementptr inbounds %struct.priv, %struct.priv* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 4
  br i1 %258, label %259, label %268

259:                                              ; preds = %253
  %260 = load %struct.priv*, %struct.priv** %4, align 8
  %261 = getelementptr inbounds %struct.priv, %struct.priv* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load %struct.ao*, %struct.ao** %3, align 8
  %267 = getelementptr inbounds %struct.ao, %struct.ao* %266, i32 0, i32 0
  store i64 129, i64* %267, align 8
  br label %271

268:                                              ; preds = %259, %253, %247
  %269 = load %struct.ao*, %struct.ao** %3, align 8
  %270 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %316

271:                                              ; preds = %265
  br label %272

272:                                              ; preds = %271, %238
  br label %273

273:                                              ; preds = %272, %217
  %274 = load %struct.priv*, %struct.priv** %4, align 8
  %275 = getelementptr inbounds %struct.priv, %struct.priv* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* @volcb, align 4
  %278 = load %struct.priv*, %struct.priv** %4, align 8
  %279 = call i32 @sio_onvol(i32* %276, i32 %277, %struct.priv* %278)
  %280 = load %struct.priv*, %struct.priv** %4, align 8
  %281 = getelementptr inbounds %struct.priv, %struct.priv* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  %282 = load %struct.priv*, %struct.priv** %4, align 8
  %283 = getelementptr inbounds %struct.priv, %struct.priv* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* @movecb, align 4
  %286 = load %struct.priv*, %struct.priv** %4, align 8
  %287 = call i32 @sio_onmove(i32* %284, i32 %285, %struct.priv* %286)
  %288 = load %struct.priv*, %struct.priv** %4, align 8
  %289 = getelementptr inbounds %struct.priv, %struct.priv* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = call i32 @sio_start(i32* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %273
  %294 = load %struct.ao*, %struct.ao** %3, align 8
  %295 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %294, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %296

296:                                              ; preds = %293, %273
  %297 = load %struct.priv*, %struct.priv** %4, align 8
  %298 = getelementptr inbounds %struct.priv, %struct.priv* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @sio_nfds(i32* %299)
  %301 = call i32 @calloc(i32 %300, i32 4)
  %302 = load %struct.priv*, %struct.priv** %4, align 8
  %303 = getelementptr inbounds %struct.priv, %struct.priv* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  %304 = load %struct.priv*, %struct.priv** %4, align 8
  %305 = getelementptr inbounds %struct.priv, %struct.priv* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %296
  br label %316

309:                                              ; preds = %296
  %310 = load %struct.priv*, %struct.priv** %4, align 8
  %311 = getelementptr inbounds %struct.priv, %struct.priv* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ao*, %struct.ao** %3, align 8
  %315 = getelementptr inbounds %struct.ao, %struct.ao* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 4
  store i32 0, i32* %2, align 4
  br label %327

316:                                              ; preds = %308, %268, %196, %180, %169, %135, %21
  %317 = load %struct.priv*, %struct.priv** %4, align 8
  %318 = getelementptr inbounds %struct.priv, %struct.priv* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.priv*, %struct.priv** %4, align 8
  %323 = getelementptr inbounds %struct.priv, %struct.priv* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = call i32 @sio_close(i32* %324)
  br label %326

326:                                              ; preds = %321, %316
  store i32 -1, i32* %2, align 4
  br label %327

327:                                              ; preds = %326, %309
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i32* @sio_open(i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, ...) #1

declare dso_local i64 @af_fmt_from_planar(i64) #1

declare dso_local i32 @sio_initpar(%struct.TYPE_5__*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*) #1

declare dso_local i32 @SIO_BPS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel*, i32*) #1

declare dso_local i32 @ao_chmap_sel_adjust(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_6__*) #1

declare dso_local i32 @sio_setpar(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sio_getpar(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sio_onvol(i32*, i32, %struct.priv*) #1

declare dso_local i32 @sio_onmove(i32*, i32, %struct.priv*) #1

declare dso_local i32 @sio_start(i32*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @sio_nfds(i32*) #1

declare dso_local i32 @sio_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
