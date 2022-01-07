; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_opensles.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_opensles.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, i32, %struct.TYPE_31__, %struct.priv* }
%struct.TYPE_31__ = type { i32 }
%struct.priv = type { i32, i32, i32, double, %struct.TYPE_38__**, %struct.TYPE_30__**, %struct.TYPE_37__**, %struct.TYPE_26__**, %struct.TYPE_27__**, i32, i32, %struct.TYPE_28__** }
%struct.TYPE_38__ = type { i64 (%struct.TYPE_38__**, i32)*, i64 (%struct.TYPE_38__**, i32, i8*)* }
%struct.TYPE_30__ = type { i64 (%struct.TYPE_30__**, i32)* }
%struct.TYPE_37__ = type { i64 (%struct.TYPE_37__**, i32, %struct.ao*)* }
%struct.TYPE_26__ = type { i64 (%struct.TYPE_26__**, %struct.TYPE_27__***, i32, i32*, i32*)*, i64 (%struct.TYPE_26__**, %struct.TYPE_38__***, %struct.TYPE_29__*, %struct.TYPE_32__*, i32, i32*, i32*)* }
%struct.TYPE_29__ = type { i8*, i8* }
%struct.TYPE_32__ = type { i32*, i8* }
%struct.TYPE_27__ = type { i64 (%struct.TYPE_27__**, i32)* }
%struct.TYPE_28__ = type { i64 (%struct.TYPE_28__**, i32)*, i64 (%struct.TYPE_28__**, i32, i8*)* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_27__**, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i64 (%struct.TYPE_36__**, i32*, i32*, i32*)* }

@SL_BOOLEAN_FALSE = common dso_local global i32 0, align 4
@SL_IID_ENGINE = common dso_local global i32 0, align 4
@SL_DATALOCATOR_BUFFERQUEUE = common dso_local global i32 0, align 4
@AF_FORMAT_S32 = common dso_local global i32 0, align 4
@SL_DATAFORMAT_PCM = common dso_local global i32 0, align 4
@AF_FORMAT_FLOAT = common dso_local global i32 0, align 4
@SL_ANDROID_DATAFORMAT_PCM_EX = common dso_local global i32 0, align 4
@SL_ANDROID_PCM_REPRESENTATION_FLOAT = common dso_local global i32 0, align 4
@SL_SPEAKER_FRONT_LEFT = common dso_local global i32 0, align 4
@SL_SPEAKER_FRONT_RIGHT = common dso_local global i32 0, align 4
@SL_BYTEORDER_LITTLEENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Enqueue size is not set and can neither be derived\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate device buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to initialize the mutex: %d\0A\00", align 1
@SL_DATALOCATOR_OUTPUTMIX = common dso_local global i32 0, align 4
@SL_IID_BUFFERQUEUE = common dso_local global i32 0, align 4
@SL_IID_ANDROIDCONFIGURATION = common dso_local global i32 0, align 4
@SL_BOOLEAN_TRUE = common dso_local global i32 0, align 4
@SL_IID_PLAY = common dso_local global i32 0, align 4
@buffer_callback = common dso_local global i32 0, align 4
@SL_PLAYSTATE_PLAYING = common dso_local global i32 0, align 4
@SL_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"androidGetAudioLatency\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Device latency is %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_34__, align 4
  %6 = alloca %struct.TYPE_33__, align 8
  %7 = alloca %struct.TYPE_35__, align 4
  %8 = alloca %struct.TYPE_29__, align 8
  %9 = alloca %struct.TYPE_32__, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.TYPE_36__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %18 = load %struct.ao*, %struct.ao** %3, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 5
  %20 = load %struct.priv*, %struct.priv** %19, align 8
  store %struct.priv* %20, %struct.priv** %4, align 8
  %21 = load %struct.ao*, %struct.ao** %3, align 8
  %22 = getelementptr inbounds %struct.ao, %struct.ao* %21, i32 0, i32 4
  %23 = call i32 @mp_chmap_from_channels(%struct.TYPE_31__* %22, i32 2)
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 11
  %26 = call i64 @slCreateEngine(%struct.TYPE_28__*** %25, i32 0, i32* null, i32 0, i32* null, i32* null)
  %27 = call i32 @CHK(i64 %26)
  %28 = load %struct.priv*, %struct.priv** %4, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 11
  %30 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %29, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_28__**, i32)*, i64 (%struct.TYPE_28__**, i32)** %32, align 8
  %34 = load %struct.priv*, %struct.priv** %4, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 11
  %36 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %35, align 8
  %37 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %38 = call i64 %33(%struct.TYPE_28__** %36, i32 %37)
  %39 = call i32 @CHK(i64 %38)
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 11
  %42 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %41, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = load i64 (%struct.TYPE_28__**, i32, i8*)*, i64 (%struct.TYPE_28__**, i32, i8*)** %44, align 8
  %46 = load %struct.priv*, %struct.priv** %4, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 11
  %48 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %47, align 8
  %49 = load i32, i32* @SL_IID_ENGINE, align 4
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 7
  %52 = bitcast %struct.TYPE_26__*** %51 to i8*
  %53 = call i64 %45(%struct.TYPE_28__** %48, i32 %49, i8* %52)
  %54 = call i32 @CHK(i64 %53)
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 7
  %57 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %56, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64 (%struct.TYPE_26__**, %struct.TYPE_27__***, i32, i32*, i32*)*, i64 (%struct.TYPE_26__**, %struct.TYPE_27__***, i32, i32*, i32*)** %59, align 8
  %61 = load %struct.priv*, %struct.priv** %4, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 7
  %63 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %62, align 8
  %64 = load %struct.priv*, %struct.priv** %4, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 8
  %66 = call i64 %60(%struct.TYPE_26__** %63, %struct.TYPE_27__*** %65, i32 0, i32* null, i32* null)
  %67 = call i32 @CHK(i64 %66)
  %68 = load %struct.priv*, %struct.priv** %4, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 8
  %70 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %69, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 0
  %73 = load i64 (%struct.TYPE_27__**, i32)*, i64 (%struct.TYPE_27__**, i32)** %72, align 8
  %74 = load %struct.priv*, %struct.priv** %4, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 8
  %76 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %75, align 8
  %77 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %78 = call i64 %73(%struct.TYPE_27__** %76, i32 %77)
  %79 = call i32 @CHK(i64 %78)
  %80 = load i32, i32* @SL_DATALOCATOR_BUFFERQUEUE, align 4
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %5, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %5, i32 0, i32 0
  store i32 8, i32* %82, align 4
  %83 = load %struct.ao*, %struct.ao** %3, align 8
  %84 = getelementptr inbounds %struct.ao, %struct.ao* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @af_fmt_is_int(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %1
  %89 = load %struct.ao*, %struct.ao** %3, align 8
  %90 = getelementptr inbounds %struct.ao, %struct.ao* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @af_fmt_to_bytes(i32 %91)
  %93 = icmp sgt i32 %92, 2
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @AF_FORMAT_S32, align 4
  %96 = load %struct.ao*, %struct.ao** %3, align 8
  %97 = getelementptr inbounds %struct.ao, %struct.ao* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %105

98:                                               ; preds = %88
  %99 = load %struct.ao*, %struct.ao** %3, align 8
  %100 = getelementptr inbounds %struct.ao, %struct.ao* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @af_fmt_from_planar(i32 %101)
  %103 = load %struct.ao*, %struct.ao** %3, align 8
  %104 = getelementptr inbounds %struct.ao, %struct.ao* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %94
  %106 = load i32, i32* @SL_DATAFORMAT_PCM, align 4
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 7
  store i32 %106, i32* %107, align 4
  br label %116

108:                                              ; preds = %1
  %109 = load i32, i32* @AF_FORMAT_FLOAT, align 4
  %110 = load %struct.ao*, %struct.ao** %3, align 8
  %111 = getelementptr inbounds %struct.ao, %struct.ao* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @SL_ANDROID_DATAFORMAT_PCM_EX, align 4
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 7
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @SL_ANDROID_PCM_REPRESENTATION_FLOAT, align 4
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 6
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %105
  %117 = load %struct.ao*, %struct.ao** %3, align 8
  %118 = getelementptr inbounds %struct.ao, %struct.ao* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = load %struct.ao*, %struct.ao** %3, align 8
  %123 = getelementptr inbounds %struct.ao, %struct.ao* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @af_fmt_to_bytes(i32 %124)
  %126 = mul nsw i32 8, %125
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @SL_SPEAKER_FRONT_LEFT, align 4
  %130 = load i32, i32* @SL_SPEAKER_FRONT_RIGHT, align 4
  %131 = or i32 %129, %130
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 3
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @SL_BYTEORDER_LITTLEENDIAN, align 4
  %134 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 5
  store i32 %133, i32* %134, align 4
  %135 = load %struct.ao*, %struct.ao** %3, align 8
  %136 = getelementptr inbounds %struct.ao, %struct.ao* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 1000
  %139 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 4
  store i32 %138, i32* %139, align 4
  %140 = load %struct.priv*, %struct.priv** %4, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %116
  %145 = load %struct.ao*, %struct.ao** %3, align 8
  %146 = getelementptr inbounds %struct.ao, %struct.ao* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.priv*, %struct.priv** %4, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = sdiv i32 %151, 1000
  %153 = load %struct.ao*, %struct.ao** %3, align 8
  %154 = getelementptr inbounds %struct.ao, %struct.ao* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ao*, %struct.ao** %3, align 8
  %156 = getelementptr inbounds %struct.ao, %struct.ao* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %144, %116
  %158 = load %struct.priv*, %struct.priv** %4, align 8
  %159 = getelementptr inbounds %struct.priv, %struct.priv* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.ao*, %struct.ao** %3, align 8
  %164 = getelementptr inbounds %struct.ao, %struct.ao* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.priv*, %struct.priv** %4, align 8
  %167 = getelementptr inbounds %struct.priv, %struct.priv* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @MPMAX(i32 %165, i32 %168)
  %170 = load %struct.ao*, %struct.ao** %3, align 8
  %171 = getelementptr inbounds %struct.ao, %struct.ao* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  br label %203

172:                                              ; preds = %157
  %173 = load %struct.ao*, %struct.ao** %3, align 8
  %174 = getelementptr inbounds %struct.ao, %struct.ao* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.ao*, %struct.ao** %3, align 8
  %179 = getelementptr inbounds %struct.ao, %struct.ao* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.priv*, %struct.priv** %4, align 8
  %182 = getelementptr inbounds %struct.priv, %struct.priv* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %202

183:                                              ; preds = %172
  %184 = load %struct.ao*, %struct.ao** %3, align 8
  %185 = getelementptr inbounds %struct.ao, %struct.ao* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.ao*, %struct.ao** %3, align 8
  %190 = getelementptr inbounds %struct.ao, %struct.ao* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ao*, %struct.ao** %3, align 8
  %193 = getelementptr inbounds %struct.ao, %struct.ao* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %191, %194
  %196 = load %struct.priv*, %struct.priv** %4, align 8
  %197 = getelementptr inbounds %struct.priv, %struct.priv* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %201

198:                                              ; preds = %183
  %199 = load %struct.ao*, %struct.ao** %3, align 8
  %200 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %199, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %384

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201, %177
  br label %203

203:                                              ; preds = %202, %162
  %204 = load %struct.priv*, %struct.priv** %4, align 8
  %205 = getelementptr inbounds %struct.priv, %struct.priv* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ao*, %struct.ao** %3, align 8
  %208 = getelementptr inbounds %struct.ao, %struct.ao* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %206, %210
  %212 = load %struct.ao*, %struct.ao** %3, align 8
  %213 = getelementptr inbounds %struct.ao, %struct.ao* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @af_fmt_to_bytes(i32 %214)
  %216 = mul nsw i32 %211, %215
  %217 = load %struct.priv*, %struct.priv** %4, align 8
  %218 = getelementptr inbounds %struct.priv, %struct.priv* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load %struct.priv*, %struct.priv** %4, align 8
  %220 = getelementptr inbounds %struct.priv, %struct.priv* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @calloc(i32 1, i32 %221)
  %223 = load %struct.priv*, %struct.priv** %4, align 8
  %224 = getelementptr inbounds %struct.priv, %struct.priv* %223, i32 0, i32 10
  store i32 %222, i32* %224, align 4
  %225 = load %struct.priv*, %struct.priv** %4, align 8
  %226 = getelementptr inbounds %struct.priv, %struct.priv* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %203
  %230 = load %struct.ao*, %struct.ao** %3, align 8
  %231 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %230, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %384

232:                                              ; preds = %203
  %233 = load %struct.priv*, %struct.priv** %4, align 8
  %234 = getelementptr inbounds %struct.priv, %struct.priv* %233, i32 0, i32 9
  %235 = call i32 @pthread_mutex_init(i32* %234, i32* null)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.ao*, %struct.ao** %3, align 8
  %240 = load i32, i32* %10, align 4
  %241 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %240)
  br label %384

242:                                              ; preds = %232
  %243 = bitcast %struct.TYPE_35__* %7 to i8*
  %244 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  store i8* %243, i8** %244, align 8
  %245 = bitcast %struct.TYPE_34__* %5 to i8*
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  store i8* %245, i8** %246, align 8
  %247 = load i32, i32* @SL_DATALOCATOR_OUTPUTMIX, align 4
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 1
  store i32 %247, i32* %248, align 8
  %249 = load %struct.priv*, %struct.priv** %4, align 8
  %250 = getelementptr inbounds %struct.priv, %struct.priv* %249, i32 0, i32 8
  %251 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 0
  store %struct.TYPE_27__** %251, %struct.TYPE_27__*** %252, align 8
  %253 = bitcast %struct.TYPE_33__* %6 to i8*
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 1
  store i8* %253, i8** %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 0
  store i32* null, i32** %255, align 8
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %257 = load i32, i32* @SL_IID_BUFFERQUEUE, align 4
  store i32 %257, i32* %256, align 4
  %258 = getelementptr inbounds i32, i32* %256, i64 1
  %259 = load i32, i32* @SL_IID_ANDROIDCONFIGURATION, align 4
  store i32 %259, i32* %258, align 4
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %261 = load i32, i32* @SL_BOOLEAN_TRUE, align 4
  store i32 %261, i32* %260, align 4
  %262 = getelementptr inbounds i32, i32* %260, i64 1
  %263 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  store i32 %263, i32* %262, align 4
  %264 = load %struct.priv*, %struct.priv** %4, align 8
  %265 = getelementptr inbounds %struct.priv, %struct.priv* %264, i32 0, i32 7
  %266 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %265, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 1
  %269 = load i64 (%struct.TYPE_26__**, %struct.TYPE_38__***, %struct.TYPE_29__*, %struct.TYPE_32__*, i32, i32*, i32*)*, i64 (%struct.TYPE_26__**, %struct.TYPE_38__***, %struct.TYPE_29__*, %struct.TYPE_32__*, i32, i32*, i32*)** %268, align 8
  %270 = load %struct.priv*, %struct.priv** %4, align 8
  %271 = getelementptr inbounds %struct.priv, %struct.priv* %270, i32 0, i32 7
  %272 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %271, align 8
  %273 = load %struct.priv*, %struct.priv** %4, align 8
  %274 = getelementptr inbounds %struct.priv, %struct.priv* %273, i32 0, i32 4
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %277 = call i64 %269(%struct.TYPE_26__** %272, %struct.TYPE_38__*** %274, %struct.TYPE_29__* %8, %struct.TYPE_32__* %9, i32 2, i32* %275, i32* %276)
  %278 = call i32 @CHK(i64 %277)
  %279 = load %struct.priv*, %struct.priv** %4, align 8
  %280 = getelementptr inbounds %struct.priv, %struct.priv* %279, i32 0, i32 4
  %281 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %280, align 8
  %282 = load %struct.TYPE_38__*, %struct.TYPE_38__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %282, i32 0, i32 0
  %284 = load i64 (%struct.TYPE_38__**, i32)*, i64 (%struct.TYPE_38__**, i32)** %283, align 8
  %285 = load %struct.priv*, %struct.priv** %4, align 8
  %286 = getelementptr inbounds %struct.priv, %struct.priv* %285, i32 0, i32 4
  %287 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %286, align 8
  %288 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %289 = call i64 %284(%struct.TYPE_38__** %287, i32 %288)
  %290 = call i32 @CHK(i64 %289)
  %291 = load %struct.priv*, %struct.priv** %4, align 8
  %292 = getelementptr inbounds %struct.priv, %struct.priv* %291, i32 0, i32 4
  %293 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %292, align 8
  %294 = load %struct.TYPE_38__*, %struct.TYPE_38__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %294, i32 0, i32 1
  %296 = load i64 (%struct.TYPE_38__**, i32, i8*)*, i64 (%struct.TYPE_38__**, i32, i8*)** %295, align 8
  %297 = load %struct.priv*, %struct.priv** %4, align 8
  %298 = getelementptr inbounds %struct.priv, %struct.priv* %297, i32 0, i32 4
  %299 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %298, align 8
  %300 = load i32, i32* @SL_IID_PLAY, align 4
  %301 = load %struct.priv*, %struct.priv** %4, align 8
  %302 = getelementptr inbounds %struct.priv, %struct.priv* %301, i32 0, i32 5
  %303 = bitcast %struct.TYPE_30__*** %302 to i8*
  %304 = call i64 %296(%struct.TYPE_38__** %299, i32 %300, i8* %303)
  %305 = call i32 @CHK(i64 %304)
  %306 = load %struct.priv*, %struct.priv** %4, align 8
  %307 = getelementptr inbounds %struct.priv, %struct.priv* %306, i32 0, i32 4
  %308 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %307, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 1
  %311 = load i64 (%struct.TYPE_38__**, i32, i8*)*, i64 (%struct.TYPE_38__**, i32, i8*)** %310, align 8
  %312 = load %struct.priv*, %struct.priv** %4, align 8
  %313 = getelementptr inbounds %struct.priv, %struct.priv* %312, i32 0, i32 4
  %314 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %313, align 8
  %315 = load i32, i32* @SL_IID_BUFFERQUEUE, align 4
  %316 = load %struct.priv*, %struct.priv** %4, align 8
  %317 = getelementptr inbounds %struct.priv, %struct.priv* %316, i32 0, i32 6
  %318 = bitcast %struct.TYPE_37__*** %317 to i8*
  %319 = call i64 %311(%struct.TYPE_38__** %314, i32 %315, i8* %318)
  %320 = call i32 @CHK(i64 %319)
  %321 = load %struct.priv*, %struct.priv** %4, align 8
  %322 = getelementptr inbounds %struct.priv, %struct.priv* %321, i32 0, i32 6
  %323 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %322, align 8
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 0
  %326 = load i64 (%struct.TYPE_37__**, i32, %struct.ao*)*, i64 (%struct.TYPE_37__**, i32, %struct.ao*)** %325, align 8
  %327 = load %struct.priv*, %struct.priv** %4, align 8
  %328 = getelementptr inbounds %struct.priv, %struct.priv* %327, i32 0, i32 6
  %329 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %328, align 8
  %330 = load i32, i32* @buffer_callback, align 4
  %331 = load %struct.ao*, %struct.ao** %3, align 8
  %332 = call i64 %326(%struct.TYPE_37__** %329, i32 %330, %struct.ao* %331)
  %333 = call i32 @CHK(i64 %332)
  %334 = load %struct.priv*, %struct.priv** %4, align 8
  %335 = getelementptr inbounds %struct.priv, %struct.priv* %334, i32 0, i32 5
  %336 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %335, align 8
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 0
  %339 = load i64 (%struct.TYPE_30__**, i32)*, i64 (%struct.TYPE_30__**, i32)** %338, align 8
  %340 = load %struct.priv*, %struct.priv** %4, align 8
  %341 = getelementptr inbounds %struct.priv, %struct.priv* %340, i32 0, i32 5
  %342 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %341, align 8
  %343 = load i32, i32* @SL_PLAYSTATE_PLAYING, align 4
  %344 = call i64 %339(%struct.TYPE_30__** %342, i32 %343)
  %345 = call i32 @CHK(i64 %344)
  store i32 0, i32* %14, align 4
  store i32 4, i32* %15, align 4
  %346 = load %struct.priv*, %struct.priv** %4, align 8
  %347 = getelementptr inbounds %struct.priv, %struct.priv* %346, i32 0, i32 4
  %348 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %347, align 8
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 1
  %351 = load i64 (%struct.TYPE_38__**, i32, i8*)*, i64 (%struct.TYPE_38__**, i32, i8*)** %350, align 8
  %352 = load %struct.priv*, %struct.priv** %4, align 8
  %353 = getelementptr inbounds %struct.priv, %struct.priv* %352, i32 0, i32 4
  %354 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %353, align 8
  %355 = load i32, i32* @SL_IID_ANDROIDCONFIGURATION, align 4
  %356 = bitcast %struct.TYPE_36__*** %13 to i8*
  %357 = call i64 %351(%struct.TYPE_38__** %354, i32 %355, i8* %356)
  store i64 %357, i64* %16, align 8
  %358 = load i64, i64* %16, align 8
  %359 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %383

361:                                              ; preds = %242
  %362 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %13, align 8
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 0
  %365 = load i64 (%struct.TYPE_36__**, i32*, i32*, i32*)*, i64 (%struct.TYPE_36__**, i32*, i32*, i32*)** %364, align 8
  %366 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %13, align 8
  %367 = call i64 %365(%struct.TYPE_36__** %366, i32* bitcast ([23 x i8]* @.str.3 to i32*), i32* %15, i32* %14)
  store i64 %367, i64* %17, align 8
  %368 = load i64, i64* %17, align 8
  %369 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %382

371:                                              ; preds = %361
  %372 = load i32, i32* %14, align 4
  %373 = sitofp i32 %372 to double
  %374 = fdiv double %373, 1.000000e+03
  %375 = load %struct.priv*, %struct.priv** %4, align 8
  %376 = getelementptr inbounds %struct.priv, %struct.priv* %375, i32 0, i32 3
  store double %374, double* %376, align 8
  %377 = load %struct.ao*, %struct.ao** %3, align 8
  %378 = load %struct.priv*, %struct.priv** %4, align 8
  %379 = getelementptr inbounds %struct.priv, %struct.priv* %378, i32 0, i32 3
  %380 = load double, double* %379, align 8
  %381 = call i32 @MP_INFO(%struct.ao* %377, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), double %380)
  br label %382

382:                                              ; preds = %371, %361
  br label %383

383:                                              ; preds = %382, %242
  store i32 1, i32* %2, align 4
  br label %387

384:                                              ; preds = %238, %229, %198
  %385 = load %struct.ao*, %struct.ao** %3, align 8
  %386 = call i32 @uninit(%struct.ao* %385)
  store i32 -1, i32* %2, align 4
  br label %387

387:                                              ; preds = %384, %383
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local i32 @mp_chmap_from_channels(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @CHK(i64) #1

declare dso_local i64 @slCreateEngine(%struct.TYPE_28__***, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @af_fmt_is_int(i32) #1

declare dso_local i32 @af_fmt_to_bytes(i32) #1

declare dso_local i32 @af_fmt_from_planar(i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, ...) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @MP_INFO(%struct.ao*, i8*, double) #1

declare dso_local i32 @uninit(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
