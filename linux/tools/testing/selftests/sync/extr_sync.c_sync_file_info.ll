; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync.c_sync_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync.c_sync_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_file_info = type { i32, i64, i64 }
%struct.sync_fence_info = type { i32, i64, i64 }

@SYNC_IOC_FILE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sync_file_info* (i32)* @sync_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sync_file_info* @sync_file_info(i32 %0) #0 {
  %2 = alloca %struct.sync_file_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sync_file_info*, align 8
  %5 = alloca %struct.sync_fence_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call %struct.sync_file_info* @calloc(i32 1, i32 24)
  store %struct.sync_file_info* %8, %struct.sync_file_info** %4, align 8
  %9 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %10 = icmp eq %struct.sync_file_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.sync_file_info* null, %struct.sync_file_info** %2, align 8
  br label %62

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYNC_IOC_FILE_INFO, align 4
  %15 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %16 = call i32 @ioctl(i32 %13, i32 %14, %struct.sync_file_info* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %21 = call i32 @free(%struct.sync_file_info* %20)
  store %struct.sync_file_info* null, %struct.sync_file_info** %2, align 8
  br label %62

22:                                               ; preds = %12
  %23 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %24 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %30 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %33 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.sync_file_info* @calloc(i32 %34, i32 24)
  %36 = bitcast %struct.sync_file_info* %35 to %struct.sync_fence_info*
  store %struct.sync_fence_info* %36, %struct.sync_fence_info** %5, align 8
  %37 = load %struct.sync_fence_info*, %struct.sync_fence_info** %5, align 8
  %38 = icmp ne %struct.sync_fence_info* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %41 = call i32 @free(%struct.sync_file_info* %40)
  store %struct.sync_file_info* null, %struct.sync_file_info** %2, align 8
  br label %62

42:                                               ; preds = %28
  %43 = load %struct.sync_fence_info*, %struct.sync_fence_info** %5, align 8
  %44 = ptrtoint %struct.sync_fence_info* %43 to i64
  %45 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %46 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SYNC_IOC_FILE_INFO, align 4
  %49 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %50 = call i32 @ioctl(i32 %47, i32 %48, %struct.sync_file_info* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.sync_fence_info*, %struct.sync_fence_info** %5, align 8
  %55 = bitcast %struct.sync_fence_info* %54 to %struct.sync_file_info*
  %56 = call i32 @free(%struct.sync_file_info* %55)
  %57 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  %58 = call i32 @free(%struct.sync_file_info* %57)
  store %struct.sync_file_info* null, %struct.sync_file_info** %2, align 8
  br label %62

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %22
  %61 = load %struct.sync_file_info*, %struct.sync_file_info** %4, align 8
  store %struct.sync_file_info* %61, %struct.sync_file_info** %2, align 8
  br label %62

62:                                               ; preds = %60, %53, %39, %19, %11
  %63 = load %struct.sync_file_info*, %struct.sync_file_info** %2, align 8
  ret %struct.sync_file_info* %63
}

declare dso_local %struct.sync_file_info* @calloc(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.sync_file_info*) #1

declare dso_local i32 @free(%struct.sync_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
