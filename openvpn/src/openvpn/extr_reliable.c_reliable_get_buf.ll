; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_get_buf.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.reliable = type { i32, i32, %struct.reliable_entry* }
%struct.reliable_entry = type { %struct.buffer, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer* @reliable_get_buf(%struct.reliable* %0) #0 {
  %2 = alloca %struct.buffer*, align 8
  %3 = alloca %struct.reliable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reliable_entry*, align 8
  store %struct.reliable* %0, %struct.reliable** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.reliable*, %struct.reliable** %3, align 8
  %9 = getelementptr inbounds %struct.reliable, %struct.reliable* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.reliable*, %struct.reliable** %3, align 8
  %14 = getelementptr inbounds %struct.reliable, %struct.reliable* %13, i32 0, i32 2
  %15 = load %struct.reliable_entry*, %struct.reliable_entry** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %15, i64 %17
  store %struct.reliable_entry* %18, %struct.reliable_entry** %5, align 8
  %19 = load %struct.reliable_entry*, %struct.reliable_entry** %5, align 8
  %20 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %12
  %24 = load %struct.reliable_entry*, %struct.reliable_entry** %5, align 8
  %25 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %24, i32 0, i32 0
  %26 = load %struct.reliable*, %struct.reliable** %3, align 8
  %27 = getelementptr inbounds %struct.reliable, %struct.reliable* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @buf_init(%struct.buffer* %25, i32 %28)
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.reliable_entry*, %struct.reliable_entry** %5, align 8
  %32 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %31, i32 0, i32 0
  store %struct.buffer* %32, %struct.buffer** %2, align 8
  br label %38

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6

37:                                               ; preds = %6
  store %struct.buffer* null, %struct.buffer** %2, align 8
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.buffer*, %struct.buffer** %2, align 8
  ret %struct.buffer* %39
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(%struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
