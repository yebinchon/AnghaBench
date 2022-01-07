; ModuleID = '/home/carl/AnghaBench/reactos/base/services/rpcss/extr_irotp.c_rot_entry_release.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/rpcss/extr_irotp.c_rot_entry_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rot_entry = type { %struct.rot_entry*, %struct.rot_entry*, %struct.rot_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rot_entry*)* @rot_entry_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rot_entry_release(%struct.rot_entry* %0) #0 {
  %2 = alloca %struct.rot_entry*, align 8
  store %struct.rot_entry* %0, %struct.rot_entry** %2, align 8
  %3 = load %struct.rot_entry*, %struct.rot_entry** %2, align 8
  %4 = getelementptr inbounds %struct.rot_entry, %struct.rot_entry* %3, i32 0, i32 3
  %5 = call i32 @InterlockedDecrement(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load %struct.rot_entry*, %struct.rot_entry** %2, align 8
  %10 = getelementptr inbounds %struct.rot_entry, %struct.rot_entry* %9, i32 0, i32 2
  %11 = load %struct.rot_entry*, %struct.rot_entry** %10, align 8
  %12 = call i32 @HeapFree(i32 %8, i32 0, %struct.rot_entry* %11)
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load %struct.rot_entry*, %struct.rot_entry** %2, align 8
  %15 = getelementptr inbounds %struct.rot_entry, %struct.rot_entry* %14, i32 0, i32 1
  %16 = load %struct.rot_entry*, %struct.rot_entry** %15, align 8
  %17 = call i32 @HeapFree(i32 %13, i32 0, %struct.rot_entry* %16)
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load %struct.rot_entry*, %struct.rot_entry** %2, align 8
  %20 = getelementptr inbounds %struct.rot_entry, %struct.rot_entry* %19, i32 0, i32 0
  %21 = load %struct.rot_entry*, %struct.rot_entry** %20, align 8
  %22 = call i32 @HeapFree(i32 %18, i32 0, %struct.rot_entry* %21)
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load %struct.rot_entry*, %struct.rot_entry** %2, align 8
  %25 = call i32 @HeapFree(i32 %23, i32 0, %struct.rot_entry* %24)
  br label %26

26:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.rot_entry*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
