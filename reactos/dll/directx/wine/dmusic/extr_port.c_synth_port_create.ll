; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_port.c_synth_port_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_port.c_synth_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, %struct.TYPE_20__, %struct.TYPE_18__*, i32, %struct.TYPE_21__, i32, i32*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }

@E_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"(%p, %p, %p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@SynthPortImpl_DirectMusicPort_Vtbl = common dso_local global i32 0, align 4
@SynthPortImpl_DirectMusicPortDownload_Vtbl = common dso_local global i32 0, align 4
@SynthPortImpl_DirectMusicThru_Vtbl = common dso_local global i32 0, align 4
@ikscontrol_vtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IReferenceClock = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CLSID_DirectMusicSynth = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDirectMusicSynth = common dso_local global i32 0, align 4
@CLSID_DirectMusicSynthSink = common dso_local global i32 0, align 4
@IID_IDirectMusicSynthSink = common dso_local global i32 0, align 4
@DAUD_CHAN10_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN11_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN12_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN13_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN14_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN15_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN16_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN1_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN2_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN3_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN4_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN5_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN6_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN7_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN8_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DAUD_CHAN9_DEF_VOICE_PRIORITY = common dso_local global i32 0, align 4
@DMUS_PORTPARAMS_CHANNELGROUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @synth_port_create(i32* %0, %struct.TYPE_21__* %1, i32* %2, %struct.TYPE_20__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__**, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_20__** %3, %struct.TYPE_20__*** %9, align 8
  %13 = load i64, i64* @E_FAIL, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %14, i32* %15, %struct.TYPE_20__** %16)
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %18, align 8
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = call %struct.TYPE_19__* @HeapAlloc(i32 %19, i32 %20, i32 96)
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %10, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = icmp ne %struct.TYPE_19__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %25, i64* %5, align 8
  br label %178

26:                                               ; preds = %4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  store i32* @SynthPortImpl_DirectMusicPort_Vtbl, i32** %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32* @SynthPortImpl_DirectMusicPortDownload_Vtbl, i32** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i32* @SynthPortImpl_DirectMusicThru_Vtbl, i32** %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32* @ikscontrol_vtbl, i32** %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 10
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = bitcast %struct.TYPE_21__* %48 to i8*
  %51 = bitcast %struct.TYPE_21__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = bitcast i64* %57 to i32*
  %59 = call i64 @DMUSIC_CreateReferenceClockImpl(i32* @IID_IReferenceClock, i32* %58, i32* null)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %26
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.TYPE_19__* %65)
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %5, align 8
  br label %178

68:                                               ; preds = %26
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @SUCCEEDED(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 4
  %76 = bitcast i64* %75 to i8**
  %77 = call i64 @CoCreateInstance(i32* @CLSID_DirectMusicSynth, i32* null, i32 %73, i32* @IID_IDirectMusicSynth, i8** %76)
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @SUCCEEDED(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = bitcast i64* %85 to i8**
  %87 = call i64 @CoCreateInstance(i32* @CLSID_DirectMusicSynthSink, i32* null, i32 %83, i32* @IID_IDirectMusicSynthSink, i8** %86)
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @SUCCEEDED(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @IDirectMusicSynth_SetMasterClock(i64 %95, i64 %98)
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %92, %88
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @SUCCEEDED(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @IDirectMusicSynthSink_SetMasterClock(i64 %107, i64 %110)
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %104, %100
  %113 = load i64, i64* %11, align 8
  %114 = call i64 @SUCCEEDED(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @IDirectMusicSynth_SetSynthSink(i64 %119, i64 %122)
  store i64 %123, i64* %11, align 8
  br label %124

124:                                              ; preds = %116, %112
  %125 = load i64, i64* %11, align 8
  %126 = call i64 @SUCCEEDED(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %133 = call i64 @IDirectMusicSynth_Open(i64 %131, %struct.TYPE_21__* %132)
  store i64 %133, i64* %11, align 8
  br label %134

134:                                              ; preds = %128, %124
  %135 = load i64, i64* %11, align 8
  %136 = call i64 @SUCCEEDED(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_20__* %140, %struct.TYPE_20__** %141, align 8
  %142 = load i64, i64* @S_OK, align 8
  store i64 %142, i64* %5, align 8
  br label %178

143:                                              ; preds = %134
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @IDirectMusicSynth_Release(i64 %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @IDirectMusicSynthSink_Release(i64 %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @IReferenceClock_Release(i64 %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = call i32 (...) @GetProcessHeap()
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %176 = call i32 @HeapFree(i32 %174, i32 0, %struct.TYPE_19__* %175)
  %177 = load i64, i64* %11, align 8
  store i64 %177, i64* %5, align 8
  br label %178

178:                                              ; preds = %173, %138, %63, %24
  %179 = load i64, i64* %5, align 8
  ret i64 %179
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_19__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @DMUSIC_CreateReferenceClockImpl(i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @IDirectMusicSynth_SetMasterClock(i64, i64) #1

declare dso_local i64 @IDirectMusicSynthSink_SetMasterClock(i64, i64) #1

declare dso_local i64 @IDirectMusicSynth_SetSynthSink(i64, i64) #1

declare dso_local i64 @IDirectMusicSynth_Open(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @IDirectMusicSynth_Release(i64) #1

declare dso_local i32 @IDirectMusicSynthSink_Release(i64) #1

declare dso_local i32 @IReferenceClock_Release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
