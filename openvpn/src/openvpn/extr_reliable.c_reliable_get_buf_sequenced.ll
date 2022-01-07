; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_get_buf_sequenced.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_get_buf_sequenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.reliable = type { i32, i64, %struct.reliable_entry* }
%struct.reliable_entry = type { i64, %struct.buffer, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer* @reliable_get_buf_sequenced(%struct.reliable* %0) #0 {
  %2 = alloca %struct.buffer*, align 8
  %3 = alloca %struct.reliable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reliable_entry*, align 8
  store %struct.reliable* %0, %struct.reliable** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.reliable*, %struct.reliable** %3, align 8
  %9 = getelementptr inbounds %struct.reliable, %struct.reliable* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = load %struct.reliable*, %struct.reliable** %3, align 8
  %14 = getelementptr inbounds %struct.reliable, %struct.reliable* %13, i32 0, i32 2
  %15 = load %struct.reliable_entry*, %struct.reliable_entry** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %15, i64 %17
  store %struct.reliable_entry* %18, %struct.reliable_entry** %5, align 8
  %19 = load %struct.reliable_entry*, %struct.reliable_entry** %5, align 8
  %20 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.reliable_entry*, %struct.reliable_entry** %5, align 8
  %25 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.reliable*, %struct.reliable** %3, align 8
  %28 = getelementptr inbounds %struct.reliable, %struct.reliable* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.reliable_entry*, %struct.reliable_entry** %5, align 8
  %33 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %32, i32 0, i32 1
  store %struct.buffer* %33, %struct.buffer** %2, align 8
  br label %39

34:                                               ; preds = %23, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  store %struct.buffer* null, %struct.buffer** %2, align 8
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.buffer*, %struct.buffer** %2, align 8
  ret %struct.buffer* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
