; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_gc_transfer.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_gc_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { %struct.gc_entry* }
%struct.gc_entry = type { %struct.gc_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gc_transfer(%struct.gc_arena* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.gc_arena*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca %struct.gc_entry*, align 8
  store %struct.gc_arena* %0, %struct.gc_arena** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %6 = load %struct.gc_arena*, %struct.gc_arena** %3, align 8
  %7 = icmp ne %struct.gc_arena* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %2
  %9 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %10 = icmp ne %struct.gc_arena* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %13 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %12, i32 0, i32 0
  %14 = load %struct.gc_entry*, %struct.gc_entry** %13, align 8
  store %struct.gc_entry* %14, %struct.gc_entry** %5, align 8
  %15 = load %struct.gc_entry*, %struct.gc_entry** %5, align 8
  %16 = icmp ne %struct.gc_entry* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.gc_entry*, %struct.gc_entry** %5, align 8
  %20 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %19, i32 0, i32 0
  %21 = load %struct.gc_entry*, %struct.gc_entry** %20, align 8
  %22 = icmp ne %struct.gc_entry* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.gc_entry*, %struct.gc_entry** %5, align 8
  %25 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %24, i32 0, i32 0
  %26 = load %struct.gc_entry*, %struct.gc_entry** %25, align 8
  store %struct.gc_entry* %26, %struct.gc_entry** %5, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.gc_arena*, %struct.gc_arena** %3, align 8
  %29 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %28, i32 0, i32 0
  %30 = load %struct.gc_entry*, %struct.gc_entry** %29, align 8
  %31 = load %struct.gc_entry*, %struct.gc_entry** %5, align 8
  %32 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %31, i32 0, i32 0
  store %struct.gc_entry* %30, %struct.gc_entry** %32, align 8
  %33 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %34 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %33, i32 0, i32 0
  %35 = load %struct.gc_entry*, %struct.gc_entry** %34, align 8
  %36 = load %struct.gc_arena*, %struct.gc_arena** %3, align 8
  %37 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %36, i32 0, i32 0
  store %struct.gc_entry* %35, %struct.gc_entry** %37, align 8
  %38 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %39 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %38, i32 0, i32 0
  store %struct.gc_entry* null, %struct.gc_entry** %39, align 8
  br label %40

40:                                               ; preds = %27, %11
  br label %41

41:                                               ; preds = %40, %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
