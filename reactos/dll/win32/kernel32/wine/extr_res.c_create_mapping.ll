; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_create_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_create_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping_info = type { i64, i32, i64 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapping_info* (i32, i64)* @create_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapping_info* @create_mapping(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.mapping_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mapping_info*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = call i32 (...) @GetProcessHeap()
  %8 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %9 = call %struct.mapping_info* @HeapAlloc(i32 %7, i32 %8, i32 24)
  store %struct.mapping_info* %9, %struct.mapping_info** %6, align 8
  %10 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %11 = icmp ne %struct.mapping_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mapping_info* null, %struct.mapping_info** %3, align 8
  br label %52

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %16 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @GENERIC_WRITE, align 4
  br label %24

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = or i32 %18, %25
  %27 = load i32, i32* @OPEN_EXISTING, align 4
  %28 = call i64 @CreateFileW(i32 %17, i32 %26, i32 0, i32* null, i32 %27, i32 0, i32 0)
  %29 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %30 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %32 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %38 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @GetFileSize(i64 %39, i32* null)
  %41 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %42 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %44 = call i64 @map_file_into_memory(%struct.mapping_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  store %struct.mapping_info* %47, %struct.mapping_info** %3, align 8
  br label %52

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.mapping_info*, %struct.mapping_info** %6, align 8
  %51 = call i32 @destroy_mapping(%struct.mapping_info* %50)
  store %struct.mapping_info* null, %struct.mapping_info** %3, align 8
  br label %52

52:                                               ; preds = %49, %46, %12
  %53 = load %struct.mapping_info*, %struct.mapping_info** %3, align 8
  ret %struct.mapping_info* %53
}

declare dso_local %struct.mapping_info* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @map_file_into_memory(%struct.mapping_info*) #1

declare dso_local i32 @destroy_mapping(%struct.mapping_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
