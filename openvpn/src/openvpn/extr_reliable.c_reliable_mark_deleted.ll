; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_mark_deleted.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_mark_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reliable = type { i32, i64, %struct.reliable_entry* }
%struct.reliable_entry = type { i32, i64, %struct.buffer }
%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reliable_mark_deleted(%struct.reliable* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.reliable*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reliable_entry*, align 8
  store %struct.reliable* %0, %struct.reliable** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.reliable*, %struct.reliable** %4, align 8
  %12 = getelementptr inbounds %struct.reliable, %struct.reliable* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load %struct.reliable*, %struct.reliable** %4, align 8
  %17 = getelementptr inbounds %struct.reliable, %struct.reliable* %16, i32 0, i32 2
  %18 = load %struct.reliable_entry*, %struct.reliable_entry** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %18, i64 %20
  store %struct.reliable_entry* %21, %struct.reliable_entry** %8, align 8
  %22 = load %struct.buffer*, %struct.buffer** %5, align 8
  %23 = load %struct.reliable_entry*, %struct.reliable_entry** %8, align 8
  %24 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %23, i32 0, i32 2
  %25 = icmp eq %struct.buffer* %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load %struct.reliable_entry*, %struct.reliable_entry** %8, align 8
  %28 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.reliable_entry*, %struct.reliable_entry** %8, align 8
  %33 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.reliable*, %struct.reliable** %4, align 8
  %37 = getelementptr inbounds %struct.reliable, %struct.reliable* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  br label %45

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %9

43:                                               ; preds = %9
  %44 = call i32 @ASSERT(i32 0)
  br label %45

45:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
