; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_thread_work.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_thread_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i64, i32, i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demux_internal*)* @thread_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_work(%struct.demux_internal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demux_internal*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  %4 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %5 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @m_config_cache_update(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %11 = call i32 @update_opts(%struct.demux_internal* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %14 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %19 = call i32 @execute_trackswitch(%struct.demux_internal* %18)
  store i32 1, i32* %2, align 4
  br label %71

20:                                               ; preds = %12
  %21 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %22 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %27 = call i32 @perform_backward_seek(%struct.demux_internal* %26)
  store i32 1, i32* %2, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %30 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %35 = call i32 @check_backward_seek(%struct.demux_internal* %34)
  store i32 1, i32* %2, align 4
  br label %71

36:                                               ; preds = %28
  %37 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %38 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %43 = call i32 @execute_seek(%struct.demux_internal* %42)
  store i32 1, i32* %2, align 4
  br label %71

44:                                               ; preds = %36
  %45 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %46 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %51 = call i64 @read_packet(%struct.demux_internal* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %71

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %44
  %56 = call i64 (...) @mp_time_us()
  %57 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %63 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %62, i32 0, i32 1
  %64 = call i32 @pthread_mutex_unlock(i32* %63)
  %65 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %66 = call i32 @update_cache(%struct.demux_internal* %65)
  %67 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %68 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %67, i32 0, i32 1
  %69 = call i32 @pthread_mutex_lock(i32* %68)
  store i32 1, i32* %2, align 4
  br label %71

70:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %61, %53, %41, %33, %25, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @m_config_cache_update(i32) #1

declare dso_local i32 @update_opts(%struct.demux_internal*) #1

declare dso_local i32 @execute_trackswitch(%struct.demux_internal*) #1

declare dso_local i32 @perform_backward_seek(%struct.demux_internal*) #1

declare dso_local i32 @check_backward_seek(%struct.demux_internal*) #1

declare dso_local i32 @execute_seek(%struct.demux_internal*) #1

declare dso_local i64 @read_packet(%struct.demux_internal*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @update_cache(%struct.demux_internal*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
