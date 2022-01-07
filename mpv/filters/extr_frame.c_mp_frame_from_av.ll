; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_frame.c_mp_frame_from_av.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_frame.c_mp_frame_from_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.AVFrame*)* }
%struct.AVFrame = type { i32 }
%struct.mp_frame = type { i32, i64, i32 }
%struct.AVRational = type { i32 }

@frame_handlers = common dso_local global %struct.TYPE_2__* null, align 8
@MP_NO_FRAME = common dso_local global %struct.mp_frame zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_frame_from_av(%struct.mp_frame* noalias sret %0, i32 %1, %struct.AVFrame* %2, %struct.AVRational* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.AVFrame*, align 8
  %7 = alloca %struct.AVRational*, align 8
  %8 = alloca %struct.mp_frame, align 8
  store i32 %1, i32* %5, align 4
  store %struct.AVFrame* %2, %struct.AVFrame** %6, align 8
  store %struct.AVRational* %3, %struct.AVRational** %7, align 8
  %9 = bitcast %struct.mp_frame* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frame_handlers, align 8
  %13 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.AVFrame*)*, i32 (%struct.AVFrame*)** %16, align 8
  %18 = icmp ne i32 (%struct.AVFrame*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = bitcast %struct.mp_frame* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 24, i1 false)
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frame_handlers, align 8
  %23 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.AVFrame*)*, i32 (%struct.AVFrame*)** %26, align 8
  %28 = load %struct.AVFrame*, %struct.AVFrame** %6, align 8
  %29 = call i32 %27(%struct.AVFrame* %28)
  %30 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %21
  %35 = bitcast %struct.mp_frame* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 24, i1 false)
  br label %45

36:                                               ; preds = %21
  %37 = load %struct.AVFrame*, %struct.AVFrame** %6, align 8
  %38 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.AVRational*, %struct.AVRational** %7, align 8
  %41 = call i32 @mp_pts_from_av(i32 %39, %struct.AVRational* %40)
  %42 = call i32 @mp_frame_set_pts(%struct.mp_frame* byval(%struct.mp_frame) align 8 %8, i32 %41)
  %43 = bitcast %struct.mp_frame* %0 to i8*
  %44 = bitcast %struct.mp_frame* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  br label %45

45:                                               ; preds = %36, %34, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_frame_set_pts(%struct.mp_frame* byval(%struct.mp_frame) align 8, i32) #2

declare dso_local i32 @mp_pts_from_av(i32, %struct.AVRational*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
