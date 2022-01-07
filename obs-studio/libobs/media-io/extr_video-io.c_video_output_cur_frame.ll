; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_output_cur_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_output_cur_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_output = type { i64, i64, i64, i32, i32, %struct.TYPE_4__, i64, i32, %struct.TYPE_3__, %struct.cached_frame_info* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, %struct.video_input* }
%struct.video_input = type { i32, i32 (i32, %struct.video_data*)* }
%struct.video_data = type opaque
%struct.cached_frame_info = type { i64, i32, %struct.video_data.0 }
%struct.video_data.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_output*)* @video_output_cur_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_output_cur_frame(%struct.video_output* %0) #0 {
  %2 = alloca %struct.video_output*, align 8
  %3 = alloca %struct.cached_frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.video_input*, align 8
  %8 = alloca %struct.video_data.0, align 4
  store %struct.video_output* %0, %struct.video_output** %2, align 8
  %9 = load %struct.video_output*, %struct.video_output** %2, align 8
  %10 = getelementptr inbounds %struct.video_output, %struct.video_output* %9, i32 0, i32 3
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.video_output*, %struct.video_output** %2, align 8
  %13 = getelementptr inbounds %struct.video_output, %struct.video_output* %12, i32 0, i32 9
  %14 = load %struct.cached_frame_info*, %struct.cached_frame_info** %13, align 8
  %15 = load %struct.video_output*, %struct.video_output** %2, align 8
  %16 = getelementptr inbounds %struct.video_output, %struct.video_output* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.cached_frame_info, %struct.cached_frame_info* %14, i64 %17
  store %struct.cached_frame_info* %18, %struct.cached_frame_info** %3, align 8
  %19 = load %struct.video_output*, %struct.video_output** %2, align 8
  %20 = getelementptr inbounds %struct.video_output, %struct.video_output* %19, i32 0, i32 3
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  %22 = load %struct.video_output*, %struct.video_output** %2, align 8
  %23 = getelementptr inbounds %struct.video_output, %struct.video_output* %22, i32 0, i32 7
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %56, %1
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.video_output*, %struct.video_output** %2, align 8
  %28 = getelementptr inbounds %struct.video_output, %struct.video_output* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %25
  %33 = load %struct.video_output*, %struct.video_output** %2, align 8
  %34 = getelementptr inbounds %struct.video_output, %struct.video_output* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.video_input*, %struct.video_input** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.video_input, %struct.video_input* %36, i64 %37
  store %struct.video_input* %38, %struct.video_input** %7, align 8
  %39 = load %struct.cached_frame_info*, %struct.cached_frame_info** %3, align 8
  %40 = getelementptr inbounds %struct.cached_frame_info, %struct.cached_frame_info* %39, i32 0, i32 2
  %41 = bitcast %struct.video_data.0* %8 to i8*
  %42 = bitcast %struct.video_data.0* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.video_input*, %struct.video_input** %7, align 8
  %44 = call i64 @scale_video_output(%struct.video_input* %43, %struct.video_data.0* %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.video_input*, %struct.video_input** %7, align 8
  %48 = getelementptr inbounds %struct.video_input, %struct.video_input* %47, i32 0, i32 1
  %49 = load i32 (i32, %struct.video_data*)*, i32 (i32, %struct.video_data*)** %48, align 8
  %50 = load %struct.video_input*, %struct.video_input** %7, align 8
  %51 = getelementptr inbounds %struct.video_input, %struct.video_input* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = bitcast %struct.video_data.0* %8 to %struct.video_data*
  %54 = call i32 %49(i32 %52, %struct.video_data* %53)
  br label %55

55:                                               ; preds = %46, %32
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %25

59:                                               ; preds = %25
  %60 = load %struct.video_output*, %struct.video_output** %2, align 8
  %61 = getelementptr inbounds %struct.video_output, %struct.video_output* %60, i32 0, i32 7
  %62 = call i32 @pthread_mutex_unlock(i32* %61)
  %63 = load %struct.video_output*, %struct.video_output** %2, align 8
  %64 = getelementptr inbounds %struct.video_output, %struct.video_output* %63, i32 0, i32 3
  %65 = call i32 @pthread_mutex_lock(i32* %64)
  %66 = load %struct.video_output*, %struct.video_output** %2, align 8
  %67 = getelementptr inbounds %struct.video_output, %struct.video_output* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cached_frame_info*, %struct.cached_frame_info** %3, align 8
  %70 = getelementptr inbounds %struct.cached_frame_info, %struct.cached_frame_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.video_data.0, %struct.video_data.0* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.cached_frame_info*, %struct.cached_frame_info** %3, align 8
  %77 = getelementptr inbounds %struct.cached_frame_info, %struct.cached_frame_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  %82 = load %struct.cached_frame_info*, %struct.cached_frame_info** %3, align 8
  %83 = getelementptr inbounds %struct.cached_frame_info, %struct.cached_frame_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %59
  %90 = load %struct.video_output*, %struct.video_output** %2, align 8
  %91 = getelementptr inbounds %struct.video_output, %struct.video_output* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.video_output*, %struct.video_output** %2, align 8
  %95 = getelementptr inbounds %struct.video_output, %struct.video_output* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.video_output*, %struct.video_output** %2, align 8
  %101 = getelementptr inbounds %struct.video_output, %struct.video_output* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %89
  %103 = load %struct.video_output*, %struct.video_output** %2, align 8
  %104 = getelementptr inbounds %struct.video_output, %struct.video_output* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.video_output*, %struct.video_output** %2, align 8
  %108 = getelementptr inbounds %struct.video_output, %struct.video_output* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load %struct.video_output*, %struct.video_output** %2, align 8
  %114 = getelementptr inbounds %struct.video_output, %struct.video_output* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.video_output*, %struct.video_output** %2, align 8
  %117 = getelementptr inbounds %struct.video_output, %struct.video_output* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %102
  br label %131

119:                                              ; preds = %59
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load %struct.cached_frame_info*, %struct.cached_frame_info** %3, align 8
  %124 = getelementptr inbounds %struct.cached_frame_info, %struct.cached_frame_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.video_output*, %struct.video_output** %2, align 8
  %128 = getelementptr inbounds %struct.video_output, %struct.video_output* %127, i32 0, i32 4
  %129 = call i32 @os_atomic_inc_long(i32* %128)
  br label %130

130:                                              ; preds = %122, %119
  br label %131

131:                                              ; preds = %130, %118
  %132 = load %struct.video_output*, %struct.video_output** %2, align 8
  %133 = getelementptr inbounds %struct.video_output, %struct.video_output* %132, i32 0, i32 3
  %134 = call i32 @pthread_mutex_unlock(i32* %133)
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @scale_video_output(%struct.video_input*, %struct.video_data.0*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
