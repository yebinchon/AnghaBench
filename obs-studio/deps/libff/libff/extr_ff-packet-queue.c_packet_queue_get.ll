; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-packet-queue.c_packet_queue_get.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-packet-queue.c_packet_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_packet_queue = type { i32, i64, i32, i32, i32, i32*, %struct.ff_packet_list* }
%struct.ff_packet_list = type { %struct.ff_packet, %struct.ff_packet_list* }
%struct.ff_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FF_PACKET_SUCCESS = common dso_local global i32 0, align 4
@FF_PACKET_EMPTY = common dso_local global i32 0, align 4
@FF_PACKET_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packet_queue_get(%struct.ff_packet_queue* %0, %struct.ff_packet* %1, i32 %2) #0 {
  %4 = alloca %struct.ff_packet_queue*, align 8
  %5 = alloca %struct.ff_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ff_packet_list*, align 8
  %8 = alloca i32, align 4
  store %struct.ff_packet_queue* %0, %struct.ff_packet_queue** %4, align 8
  store %struct.ff_packet* %1, %struct.ff_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %10 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %3, %74
  %13 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %14 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %13, i32 0, i32 6
  %15 = load %struct.ff_packet_list*, %struct.ff_packet_list** %14, align 8
  store %struct.ff_packet_list* %15, %struct.ff_packet_list** %7, align 8
  %16 = load %struct.ff_packet_list*, %struct.ff_packet_list** %7, align 8
  %17 = icmp ne %struct.ff_packet_list* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.ff_packet_list*, %struct.ff_packet_list** %7, align 8
  %20 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %19, i32 0, i32 1
  %21 = load %struct.ff_packet_list*, %struct.ff_packet_list** %20, align 8
  %22 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %23 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %22, i32 0, i32 6
  store %struct.ff_packet_list* %21, %struct.ff_packet_list** %23, align 8
  %24 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %25 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %24, i32 0, i32 6
  %26 = load %struct.ff_packet_list*, %struct.ff_packet_list** %25, align 8
  %27 = icmp eq %struct.ff_packet_list* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %30 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %18
  %32 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %33 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ff_packet_list*, %struct.ff_packet_list** %7, align 8
  %37 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.ff_packet*, %struct.ff_packet** %5, align 8
  %48 = load %struct.ff_packet_list*, %struct.ff_packet_list** %7, align 8
  %49 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %48, i32 0, i32 0
  %50 = bitcast %struct.ff_packet* %47 to i8*
  %51 = bitcast %struct.ff_packet* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = load %struct.ff_packet_list*, %struct.ff_packet_list** %7, align 8
  %53 = call i32 @av_free(%struct.ff_packet_list* %52)
  %54 = load i32, i32* @FF_PACKET_SUCCESS, align 4
  store i32 %54, i32* %8, align 4
  br label %75

55:                                               ; preds = %12
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @FF_PACKET_EMPTY, align 4
  store i32 %59, i32* %8, align 4
  br label %75

60:                                               ; preds = %55
  %61 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %62 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %61, i32 0, i32 2
  %63 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %64 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %63, i32 0, i32 0
  %65 = call i32 @pthread_cond_wait(i32* %62, i32* %64)
  %66 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %67 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @FF_PACKET_FAIL, align 4
  store i32 %71, i32* %8, align 4
  br label %75

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %12

75:                                               ; preds = %70, %58, %31
  %76 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %4, align 8
  %77 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %76, i32 0, i32 0
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_free(%struct.ff_packet_list*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
