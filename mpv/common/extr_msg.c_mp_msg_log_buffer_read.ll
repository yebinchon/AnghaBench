; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_log_buffer_read.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_log_buffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log_buffer_entry = type opaque
%struct.mp_log_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_log_buffer_entry* @mp_msg_log_buffer_read(%struct.mp_log_buffer* %0) #0 {
  %2 = alloca %struct.mp_log_buffer_entry*, align 8
  %3 = alloca %struct.mp_log_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mp_log_buffer* %0, %struct.mp_log_buffer** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load %struct.mp_log_buffer*, %struct.mp_log_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.mp_log_buffer, %struct.mp_log_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = bitcast i8** %4 to i8*
  %10 = call i32 @mp_ring_read(i32 %8, i8* %9, i32 8)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.mp_log_buffer_entry* null, %struct.mp_log_buffer_entry** %2, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.mp_log_buffer_entry*
  store %struct.mp_log_buffer_entry* %22, %struct.mp_log_buffer_entry** %2, align 8
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.mp_log_buffer_entry*, %struct.mp_log_buffer_entry** %2, align 8
  ret %struct.mp_log_buffer_entry* %24
}

declare dso_local i32 @mp_ring_read(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
