; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_destroy_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_destroy_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapping_info*)* @destroy_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_mapping(%struct.mapping_info* %0) #0 {
  %2 = alloca %struct.mapping_info*, align 8
  store %struct.mapping_info* %0, %struct.mapping_info** %2, align 8
  %3 = load %struct.mapping_info*, %struct.mapping_info** %2, align 8
  %4 = icmp ne %struct.mapping_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.mapping_info*, %struct.mapping_info** %2, align 8
  %8 = call i32 @unmap_file_from_memory(%struct.mapping_info* %7)
  %9 = load %struct.mapping_info*, %struct.mapping_info** %2, align 8
  %10 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load %struct.mapping_info*, %struct.mapping_info** %2, align 8
  %15 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @CloseHandle(i64 %16)
  br label %18

18:                                               ; preds = %13, %6
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load %struct.mapping_info*, %struct.mapping_info** %2, align 8
  %21 = call i32 @HeapFree(i32 %19, i32 0, %struct.mapping_info* %20)
  br label %22

22:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @unmap_file_from_memory(%struct.mapping_info*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.mapping_info*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
