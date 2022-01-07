; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_process_audio_source_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_process_audio_source_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32**, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@OBS_SOURCE_SUBMIX = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i64, i64, i64)* @process_audio_source_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_audio_source_tick(%struct.TYPE_7__* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @OBS_SOURCE_SUBMIX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  br label %179

43:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @circlebuf_peek_front(%struct.TYPE_8__* %53, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = call i32 @pthread_mutex_unlock(i32* %69)
  store i64 1, i64* %13, align 8
  br label %71

71:                                               ; preds = %140, %67
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %143

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i64, i64* %13, align 8
  %83 = icmp ugt i64 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %143

85:                                               ; preds = %81
  store i32 1, i32* %7, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93, %86
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %8, align 8
  %109 = mul i64 %107, %108
  %110 = call i32 @memset(i32 %106, i32 0, i64 %109)
  br label %140

111:                                              ; preds = %93
  store i64 0, i64* %15, align 8
  br label %112

112:                                              ; preds = %136, %111
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %112
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32**, i32*** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @memcpy(i32 %125, i32 %133, i64 %134)
  br label %136

136:                                              ; preds = %116
  %137 = load i64, i64* %15, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %15, align 8
  br label %112

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %139, %98
  %141 = load i64, i64* %13, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %13, align 8
  br label %71

143:                                              ; preds = %84, %71
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  br label %179

149:                                              ; preds = %143
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %155, %149
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32**, i32*** %161, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %8, align 8
  %169 = mul i64 %167, %168
  %170 = call i32 @memset(i32 %166, i32 0, i64 %169)
  br label %171

171:                                              ; preds = %159, %155
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %9, align 8
  %176 = call i32 @apply_audio_volume(%struct.TYPE_7__* %172, i32 %173, i64 %174, i64 %175)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %171, %146, %37
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @circlebuf_peek_front(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @apply_audio_volume(%struct.TYPE_7__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
