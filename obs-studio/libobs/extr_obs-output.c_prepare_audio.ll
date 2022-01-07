; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_prepare_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_prepare_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i64, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.audio_data = type { i64, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*, %struct.audio_data*, %struct.audio_data*)* @prepare_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_audio(%struct.obs_output* %0, %struct.audio_data* %1, %struct.audio_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_output*, align 8
  %6 = alloca %struct.audio_data*, align 8
  %7 = alloca %struct.audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %5, align 8
  store %struct.audio_data* %1, %struct.audio_data** %6, align 8
  store %struct.audio_data* %2, %struct.audio_data** %7, align 8
  %12 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %13 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %18 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @pthread_mutex_lock(i32* %19)
  %21 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %22 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %26 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %28 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @pthread_mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %16, %3
  %32 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %33 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %126

37:                                               ; preds = %31
  %38 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %39 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %40 = bitcast %struct.audio_data* %38 to i8*
  %41 = bitcast %struct.audio_data* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %43 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %46 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %125

49:                                               ; preds = %37
  %50 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %51 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = mul nsw i32 %53, 1000000000
  %55 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %56 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = sdiv i32 %54, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %61 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %70 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %126

74:                                               ; preds = %49
  %75 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %76 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %79 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %86 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %91 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = mul nsw i32 %89, %93
  %95 = sdiv i32 %94, 1000000000
  store i32 %95, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %115, %74
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %99 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %104 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %109 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %107
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %102
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %96

118:                                              ; preds = %96
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %122 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %118, %37
  store i32 1, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %73, %36
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
