; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_custom_audio_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_custom_audio_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32**, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, i32*, %struct.obs_source_audio_mix*, i32, i64, i64)* }
%struct.obs_source_audio_mix = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i64, i64)* @custom_audio_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @custom_audio_render(%struct.TYPE_10__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.obs_source_audio_mix, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %74, %4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %9, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %34, i32* %42, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %46
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = load i64, i64* %7, align 8
  %70 = mul i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(i32 %65, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %57, %46
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %16

77:                                               ; preds = %16
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32*, %struct.obs_source_audio_mix*, i32, i64, i64)*, i32 (i32, i32*, %struct.obs_source_audio_mix*, i32, i64, i64)** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 %81(i32 %85, i32* %11, %struct.obs_source_audio_mix* %9, i32 %86, i64 %87, i64 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %77
  %93 = load i32, i32* %11, align 4
  br label %95

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %95
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112, %107, %95
  br label %163

116:                                              ; preds = %112
  store i64 0, i64* %14, align 8
  br label %117

117:                                              ; preds = %154, %116
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %117
  %122 = load i64, i64* %14, align 8
  %123 = trunc i64 %122 to i32
  %124 = shl i32 1, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %154

130:                                              ; preds = %121
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %130
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 4, %147
  %149 = load i64, i64* %7, align 8
  %150 = mul i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memset(i32 %145, i32 0, i32 %151)
  br label %153

153:                                              ; preds = %137, %130
  br label %154

154:                                              ; preds = %153, %129
  %155 = load i64, i64* %14, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %14, align 8
  br label %117

157:                                              ; preds = %117
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @apply_audio_volume(%struct.TYPE_10__* %158, i32 %159, i64 %160, i64 %161)
  br label %163

163:                                              ; preds = %157, %115
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @apply_audio_volume(%struct.TYPE_10__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
