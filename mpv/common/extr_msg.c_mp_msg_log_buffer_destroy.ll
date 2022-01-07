; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_log_buffer_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_log_buffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log_buffer = type { %struct.mp_log_root* }
%struct.mp_log_root = type { i32, i32, %struct.mp_log_buffer_entry** }
%struct.mp_log_buffer_entry = type { %struct.mp_log_root* }

@mp_msg_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_msg_log_buffer_destroy(%struct.mp_log_buffer* %0) #0 {
  %2 = alloca %struct.mp_log_buffer*, align 8
  %3 = alloca %struct.mp_log_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_log_buffer_entry*, align 8
  store %struct.mp_log_buffer* %0, %struct.mp_log_buffer** %2, align 8
  %6 = load %struct.mp_log_buffer*, %struct.mp_log_buffer** %2, align 8
  %7 = icmp ne %struct.mp_log_buffer* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  %10 = call i32 @pthread_mutex_lock(i32* @mp_msg_lock)
  %11 = load %struct.mp_log_buffer*, %struct.mp_log_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.mp_log_buffer, %struct.mp_log_buffer* %11, i32 0, i32 0
  %13 = load %struct.mp_log_root*, %struct.mp_log_root** %12, align 8
  store %struct.mp_log_root* %13, %struct.mp_log_root** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %41, %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %17 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %22 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %21, i32 0, i32 2
  %23 = load %struct.mp_log_buffer_entry**, %struct.mp_log_buffer_entry*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mp_log_buffer_entry*, %struct.mp_log_buffer_entry** %23, i64 %25
  %27 = load %struct.mp_log_buffer_entry*, %struct.mp_log_buffer_entry** %26, align 8
  %28 = load %struct.mp_log_buffer*, %struct.mp_log_buffer** %2, align 8
  %29 = bitcast %struct.mp_log_buffer* %28 to %struct.mp_log_buffer_entry*
  %30 = icmp eq %struct.mp_log_buffer_entry* %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %33 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %32, i32 0, i32 2
  %34 = load %struct.mp_log_buffer_entry**, %struct.mp_log_buffer_entry*** %33, align 8
  %35 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %36 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_log_buffer_entry** %34, i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %14

44:                                               ; preds = %14
  %45 = call i32 (...) @abort() #3
  unreachable

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %54
  %48 = load %struct.mp_log_buffer*, %struct.mp_log_buffer** %2, align 8
  %49 = bitcast %struct.mp_log_buffer* %48 to %struct.mp_log_buffer_entry*
  %50 = call %struct.mp_log_buffer_entry* @mp_msg_log_buffer_read(%struct.mp_log_buffer_entry* %49)
  store %struct.mp_log_buffer_entry* %50, %struct.mp_log_buffer_entry** %5, align 8
  %51 = load %struct.mp_log_buffer_entry*, %struct.mp_log_buffer_entry** %5, align 8
  %52 = icmp ne %struct.mp_log_buffer_entry* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.mp_log_buffer_entry*, %struct.mp_log_buffer_entry** %5, align 8
  %56 = call i32 @talloc_free(%struct.mp_log_buffer_entry* %55)
  br label %47

57:                                               ; preds = %53
  %58 = load %struct.mp_log_buffer*, %struct.mp_log_buffer** %2, align 8
  %59 = bitcast %struct.mp_log_buffer* %58 to %struct.mp_log_buffer_entry*
  %60 = call i32 @talloc_free(%struct.mp_log_buffer_entry* %59)
  %61 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %62 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %61, i32 0, i32 1
  %63 = call i32 @atomic_fetch_add(i32* %62, i32 1)
  %64 = call i32 @pthread_mutex_unlock(i32* @mp_msg_lock)
  br label %65

65:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_log_buffer_entry**, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.mp_log_buffer_entry* @mp_msg_log_buffer_read(%struct.mp_log_buffer_entry*) #1

declare dso_local i32 @talloc_free(%struct.mp_log_buffer_entry*) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
