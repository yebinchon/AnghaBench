; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_set_clear_color.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_set_clear_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.m_color }
%struct.m_color = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_video_set_clear_color(%struct.gl_video* %0, i32 %1) #0 {
  %3 = alloca %struct.m_color, align 4
  %4 = alloca %struct.gl_video*, align 8
  %5 = getelementptr inbounds %struct.m_color, %struct.m_color* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %struct.gl_video* %0, %struct.gl_video** %4, align 8
  %6 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %7 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %9 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %8, i32 0, i32 1
  %10 = bitcast %struct.m_color* %9 to i8*
  %11 = bitcast %struct.m_color* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
