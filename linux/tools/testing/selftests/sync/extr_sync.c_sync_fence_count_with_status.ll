; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync.c_sync_fence_count_with_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync.c_sync_fence_count_with_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_fence_info = type { i32 }
%struct.sync_file_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_fence_count_with_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sync_fence_info*, align 8
  %9 = alloca %struct.sync_file_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store %struct.sync_fence_info* null, %struct.sync_fence_info** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.sync_file_info* @sync_file_info(i32 %10)
  store %struct.sync_file_info* %11, %struct.sync_file_info** %9, align 8
  %12 = load %struct.sync_file_info*, %struct.sync_file_info** %9, align 8
  %13 = icmp ne %struct.sync_file_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.sync_file_info*, %struct.sync_file_info** %9, align 8
  %17 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.sync_fence_info*
  store %struct.sync_fence_info* %19, %struct.sync_fence_info** %8, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %39, %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sync_file_info*, %struct.sync_file_info** %9, align 8
  %23 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.sync_fence_info*, %struct.sync_fence_info** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %20

42:                                               ; preds = %20
  %43 = load %struct.sync_file_info*, %struct.sync_file_info** %9, align 8
  %44 = call i32 @sync_file_info_free(%struct.sync_file_info* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.sync_file_info* @sync_file_info(i32) #1

declare dso_local i32 @sync_file_info_free(%struct.sync_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
