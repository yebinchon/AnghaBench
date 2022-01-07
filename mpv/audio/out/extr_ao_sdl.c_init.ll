; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_sdl.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_sdl.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, i32, i32, %struct.TYPE_7__, i32, %struct.priv* }
%struct.TYPE_7__ = type { i64 }
%struct.priv = type { i32, i32 }
%struct.mp_chmap_sel = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i64, %struct.ao*, i32, i32 }

@SDL_INIT_AUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"already initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SDL_Init failed\0A\00", align 1
@AUDIO_S16SYS = common dso_local global i64 0, align 8
@fmtmap = common dso_local global i64** null, align 8
@audio_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"requested format: %d Hz, %d channels, %x, buffer size: %d samples\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"could not open audio: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"obtained format: %d Hz, %d channels, %x, buffer size: %d samples\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"could not find matching format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_chmap_sel, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %10 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %11 = call i64 @SDL_WasInit(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ao*, %struct.ao** %3, align 8
  %15 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %235

16:                                               ; preds = %1
  %17 = load %struct.ao*, %struct.ao** %3, align 8
  %18 = getelementptr inbounds %struct.ao, %struct.ao* %17, i32 0, i32 5
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %4, align 8
  %20 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %21 = call i64 @SDL_InitSubSystem(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.ao*, %struct.ao** %3, align 8
  %25 = getelementptr inbounds %struct.ao, %struct.ao* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.ao*, %struct.ao** %3, align 8
  %30 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.ao*, %struct.ao** %3, align 8
  %33 = call i32 @uninit(%struct.ao* %32)
  store i32 -1, i32* %2, align 4
  br label %235

34:                                               ; preds = %16
  %35 = bitcast %struct.mp_chmap_sel* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 4, i1 false)
  %36 = call i32 @mp_chmap_sel_add_waveext_def(%struct.mp_chmap_sel* %5)
  %37 = load %struct.ao*, %struct.ao** %3, align 8
  %38 = load %struct.ao*, %struct.ao** %3, align 8
  %39 = getelementptr inbounds %struct.ao, %struct.ao* %38, i32 0, i32 3
  %40 = call i32 @ao_chmap_sel_adjust(%struct.ao* %37, %struct.mp_chmap_sel* %5, %struct.TYPE_7__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load %struct.ao*, %struct.ao** %3, align 8
  %44 = call i32 @uninit(%struct.ao* %43)
  store i32 -1, i32* %2, align 4
  br label %235

45:                                               ; preds = %34
  %46 = load %struct.ao*, %struct.ao** %3, align 8
  %47 = getelementptr inbounds %struct.ao, %struct.ao* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @af_fmt_from_planar(i64 %48)
  %50 = load %struct.ao*, %struct.ao** %3, align 8
  %51 = getelementptr inbounds %struct.ao, %struct.ao* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 40, i1 false)
  %53 = load i64, i64* @AUDIO_S16SYS, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %86, %45
  %56 = load i64**, i64*** @fmtmap, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %55
  %65 = load %struct.ao*, %struct.ao** %3, align 8
  %66 = getelementptr inbounds %struct.ao, %struct.ao* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64**, i64*** @fmtmap, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %67, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load i64**, i64*** @fmtmap, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  br label %89

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %55

89:                                               ; preds = %76, %55
  %90 = load %struct.ao*, %struct.ao** %3, align 8
  %91 = getelementptr inbounds %struct.ao, %struct.ao* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = load %struct.ao*, %struct.ao** %3, align 8
  %95 = getelementptr inbounds %struct.ao, %struct.ao* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i64 %97, i64* %98, align 8
  %99 = load %struct.priv*, %struct.priv** %4, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %89
  %104 = load %struct.ao*, %struct.ao** %3, align 8
  %105 = getelementptr inbounds %struct.ao, %struct.ao* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.priv*, %struct.priv** %4, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = call i32 @ceil_power_of_two(i32 %110)
  %112 = call i32 @MPMIN(i32 32768, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %89
  %115 = load i32, i32* @audio_callback, align 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i32 %115, i32* %116, align 8
  %117 = load %struct.ao*, %struct.ao** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store %struct.ao* %117, %struct.ao** %118, align 8
  %119 = load %struct.ao*, %struct.ao** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @MP_VERBOSE(%struct.ao* %119, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %129)
  %131 = bitcast %struct.TYPE_6__* %8 to i8*
  %132 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 40, i1 false)
  %133 = call i64 @SDL_OpenAudio(%struct.TYPE_6__* %6, %struct.TYPE_6__* %8)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %114
  %136 = load %struct.ao*, %struct.ao** %3, align 8
  %137 = getelementptr inbounds %struct.ao, %struct.ao* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load %struct.ao*, %struct.ao** %3, align 8
  %142 = call i32 (...) @SDL_GetError()
  %143 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = load %struct.ao*, %struct.ao** %3, align 8
  %146 = call i32 @uninit(%struct.ao* %145)
  store i32 -1, i32* %2, align 4
  br label %235

147:                                              ; preds = %114
  %148 = load %struct.ao*, %struct.ao** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @MP_VERBOSE(%struct.ao* %148, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %153, i32 %156, i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 3, %161
  %163 = load %struct.ao*, %struct.ao** %3, align 8
  %164 = getelementptr inbounds %struct.ao, %struct.ao* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ao*, %struct.ao** %3, align 8
  %166 = getelementptr inbounds %struct.ao, %struct.ao* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %198, %147
  %168 = load i64**, i64*** @fmtmap, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64*, i64** %168, i64 %170
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64**, i64*** @fmtmap, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64*, i64** %179, i64 %181
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %178, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %176
  %188 = load i64**, i64*** @fmtmap, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64*, i64** %188, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.ao*, %struct.ao** %3, align 8
  %196 = getelementptr inbounds %struct.ao, %struct.ao* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  br label %201

197:                                              ; preds = %176
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %167

201:                                              ; preds = %187, %167
  %202 = load %struct.ao*, %struct.ao** %3, align 8
  %203 = getelementptr inbounds %struct.ao, %struct.ao* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %201
  %207 = load %struct.ao*, %struct.ao** %3, align 8
  %208 = getelementptr inbounds %struct.ao, %struct.ao* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = load %struct.ao*, %struct.ao** %3, align 8
  %213 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %206
  %215 = load %struct.ao*, %struct.ao** %3, align 8
  %216 = call i32 @uninit(%struct.ao* %215)
  store i32 -1, i32* %2, align 4
  br label %235

217:                                              ; preds = %201
  %218 = load %struct.ao*, %struct.ao** %3, align 8
  %219 = load %struct.ao*, %struct.ao** %3, align 8
  %220 = getelementptr inbounds %struct.ao, %struct.ao* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @ao_chmap_sel_get_def(%struct.ao* %218, %struct.mp_chmap_sel* %5, %struct.TYPE_7__* %220, i64 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %217
  %226 = load %struct.ao*, %struct.ao** %3, align 8
  %227 = call i32 @uninit(%struct.ao* %226)
  store i32 -1, i32* %2, align 4
  br label %235

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ao*, %struct.ao** %3, align 8
  %232 = getelementptr inbounds %struct.ao, %struct.ao* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load %struct.priv*, %struct.priv** %4, align 8
  %234 = getelementptr inbounds %struct.priv, %struct.priv* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  store i32 1, i32* %2, align 4
  br label %235

235:                                              ; preds = %228, %225, %214, %144, %42, %31, %13
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i64 @SDL_WasInit(i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, ...) #1

declare dso_local i64 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @uninit(%struct.ao*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_chmap_sel_add_waveext_def(%struct.mp_chmap_sel*) #1

declare dso_local i32 @ao_chmap_sel_adjust(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_7__*) #1

declare dso_local i64 @af_fmt_from_planar(i64) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @ceil_power_of_two(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SDL_OpenAudio(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @ao_chmap_sel_get_def(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
