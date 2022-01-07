; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_input_and_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_input_and_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_output = type { i32, i64, i32 (i32, i32, i32, i32*, i32, %struct.audio_output_data*)*, i32, %struct.audio_mix*, i32 }
%struct.audio_output_data = type { %struct.audio_output_data** }
%struct.audio_mix = type { %struct.audio_output_data**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_output*, i32, i32)* @input_and_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_and_output(%struct.audio_output* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.audio_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.audio_mix*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.audio_output* %0, %struct.audio_output** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %20 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %21 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca %struct.audio_output_data, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = mul nuw i64 8, %26
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(%struct.audio_output_data* %28, i32 0, i32 %30)
  %32 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %33 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %32, i32 0, i32 5
  %34 = call i32 @pthread_mutex_lock(i32* %33)
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %57, %3
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %42 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %41, i32 0, i32 4
  %43 = load %struct.audio_mix*, %struct.audio_mix** %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %43, i64 %44
  %46 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i64, i64* %13, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 1, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  br label %35

60:                                               ; preds = %35
  %61 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %62 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %61, i32 0, i32 5
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  store i64 0, i64* %14, align 8
  br label %64

64:                                               ; preds = %110, %60
  %65 = load i64, i64* %14, align 8
  %66 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %64
  %70 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %71 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %70, i32 0, i32 4
  %72 = load %struct.audio_mix*, %struct.audio_mix** %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %72, i64 %73
  store %struct.audio_mix* %74, %struct.audio_mix** %15, align 8
  %75 = load %struct.audio_mix*, %struct.audio_mix** %15, align 8
  %76 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %75, i32 0, i32 0
  %77 = load %struct.audio_output_data**, %struct.audio_output_data*** %76, align 8
  %78 = getelementptr inbounds %struct.audio_output_data*, %struct.audio_output_data** %77, i64 0
  %79 = load %struct.audio_output_data*, %struct.audio_output_data** %78, align 8
  %80 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %81 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(%struct.audio_output_data* %79, i32 0, i32 %85)
  store i64 0, i64* %16, align 8
  br label %87

87:                                               ; preds = %106, %69
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %90 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.audio_mix*, %struct.audio_mix** %15, align 8
  %95 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %94, i32 0, i32 0
  %96 = load %struct.audio_output_data**, %struct.audio_output_data*** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds %struct.audio_output_data*, %struct.audio_output_data** %96, i64 %97
  %99 = load %struct.audio_output_data*, %struct.audio_output_data** %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %28, i64 %100
  %102 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %101, i32 0, i32 0
  %103 = load %struct.audio_output_data**, %struct.audio_output_data*** %102, align 8
  %104 = load i64, i64* %16, align 8
  %105 = getelementptr inbounds %struct.audio_output_data*, %struct.audio_output_data** %103, i64 %104
  store %struct.audio_output_data* %99, %struct.audio_output_data** %105, align 8
  br label %106

106:                                              ; preds = %93
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %16, align 8
  br label %87

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %14, align 8
  br label %64

113:                                              ; preds = %64
  %114 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %115 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %114, i32 0, i32 2
  %116 = load i32 (i32, i32, i32, i32*, i32, %struct.audio_output_data*)*, i32 (i32, i32, i32, i32*, i32, %struct.audio_output_data*)** %115, align 8
  %117 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %118 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 %116(i32 %119, i32 %120, i32 %121, i32* %11, i32 %122, %struct.audio_output_data* %28)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %113
  store i32 1, i32* %17, align 4
  br label %146

127:                                              ; preds = %113
  %128 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @clamp_audio_output(%struct.audio_output* %128, i64 %129)
  store i64 0, i64* %18, align 8
  br label %131

131:                                              ; preds = %142, %127
  %132 = load i64, i64* %18, align 8
  %133 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.audio_output*, %struct.audio_output** %4, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %141 = call i32 @do_audio_output(%struct.audio_output* %137, i64 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i64, i64* %18, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %18, align 8
  br label %131

145:                                              ; preds = %131
  store i32 0, i32* %17, align 4
  br label %146

146:                                              ; preds = %145, %126
  %147 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %17, align 4
  switch i32 %148, label %150 [
    i32 0, label %149
    i32 1, label %149
  ]

149:                                              ; preds = %146, %146
  ret void

150:                                              ; preds = %146
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.audio_output_data*, i32, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @clamp_audio_output(%struct.audio_output*, i64) #2

declare dso_local i32 @do_audio_output(%struct.audio_output*, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
