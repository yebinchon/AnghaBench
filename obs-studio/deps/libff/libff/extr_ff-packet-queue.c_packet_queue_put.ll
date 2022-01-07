; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-packet-queue.c_packet_queue_put.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-packet-queue.c_packet_queue_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_packet_queue = type { i32, i32, i32, i32, %struct.ff_packet_list*, %struct.ff_packet_list* }
%struct.ff_packet_list = type { %struct.ff_packet, %struct.ff_packet_list* }
%struct.ff_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FF_PACKET_FAIL = common dso_local global i32 0, align 4
@FF_PACKET_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packet_queue_put(%struct.ff_packet_queue* %0, %struct.ff_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_packet_queue*, align 8
  %5 = alloca %struct.ff_packet*, align 8
  %6 = alloca %struct.ff_packet_list*, align 8
  store %struct.ff_packet_queue* %0, %struct.ff_packet_queue** %4, align 8
  store %struct.ff_packet* %1, %struct.ff_packet** %5, align 8
  %7 = call %struct.ff_packet_list* @av_malloc(i32 16)
  store %struct.ff_packet_list* %7, %struct.ff_packet_list** %6, align 8
  %8 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %9 = icmp eq %struct.ff_packet_list* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FF_PACKET_FAIL, align 4
  store i32 %11, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %14 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %13, i32 0, i32 0
  %15 = load %struct.ff_packet*, %struct.ff_packet** %5, align 8
  %16 = bitcast %struct.ff_packet* %14 to i8*
  %17 = bitcast %struct.ff_packet* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %19 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %18, i32 0, i32 1
  store %struct.ff_packet_list* null, %struct.ff_packet_list** %19, align 8
  %20 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %23, i32 0, i32 4
  %25 = load %struct.ff_packet_list*, %struct.ff_packet_list** %24, align 8
  %26 = icmp eq %struct.ff_packet_list* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %29 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %30 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %29, i32 0, i32 5
  store %struct.ff_packet_list* %28, %struct.ff_packet_list** %30, align 8
  br label %37

31:                                               ; preds = %12
  %32 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %33 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %34 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %33, i32 0, i32 4
  %35 = load %struct.ff_packet_list*, %struct.ff_packet_list** %34, align 8
  %36 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %35, i32 0, i32 1
  store %struct.ff_packet_list* %32, %struct.ff_packet_list** %36, align 8
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %39 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %40 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %39, i32 0, i32 4
  store %struct.ff_packet_list* %38, %struct.ff_packet_list** %40, align 8
  %41 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ff_packet_list*, %struct.ff_packet_list** %6, align 8
  %46 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %51 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %57 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %56, i32 0, i32 1
  %58 = call i32 @pthread_cond_signal(i32* %57)
  %59 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %60 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  %62 = load i32, i32* @FF_PACKET_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %37, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.ff_packet_list* @av_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
