; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_free_buf_gc.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_free_buf_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32* }
%struct.gc_arena = type { %struct.gc_entry* }
%struct.gc_entry = type { %struct.gc_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.gc_arena*)* @free_buf_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buf_gc(%struct.buffer* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca %struct.gc_entry**, align 8
  %6 = alloca %struct.gc_entry*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %7 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %8 = icmp ne %struct.gc_arena* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %11 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %10, i32 0, i32 0
  store %struct.gc_entry** %11, %struct.gc_entry*** %5, align 8
  br label %12

12:                                               ; preds = %35, %9
  %13 = load %struct.gc_entry**, %struct.gc_entry*** %5, align 8
  %14 = load %struct.gc_entry*, %struct.gc_entry** %13, align 8
  %15 = icmp ne %struct.gc_entry* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.gc_entry**, %struct.gc_entry*** %5, align 8
  %18 = load %struct.gc_entry*, %struct.gc_entry** %17, align 8
  %19 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %18, i64 1
  %20 = bitcast %struct.gc_entry* %19 to i32*
  %21 = load %struct.buffer*, %struct.buffer** %3, align 8
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.gc_entry**, %struct.gc_entry*** %5, align 8
  %27 = load %struct.gc_entry*, %struct.gc_entry** %26, align 8
  store %struct.gc_entry* %27, %struct.gc_entry** %6, align 8
  %28 = load %struct.gc_entry**, %struct.gc_entry*** %5, align 8
  %29 = load %struct.gc_entry*, %struct.gc_entry** %28, align 8
  %30 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %29, i32 0, i32 0
  %31 = load %struct.gc_entry*, %struct.gc_entry** %30, align 8
  %32 = load %struct.gc_entry**, %struct.gc_entry*** %5, align 8
  store %struct.gc_entry* %31, %struct.gc_entry** %32, align 8
  %33 = load %struct.gc_entry*, %struct.gc_entry** %6, align 8
  %34 = call i32 @free(%struct.gc_entry* %33)
  br label %39

35:                                               ; preds = %16
  %36 = load %struct.gc_entry**, %struct.gc_entry*** %5, align 8
  %37 = load %struct.gc_entry*, %struct.gc_entry** %36, align 8
  %38 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %37, i32 0, i32 0
  store %struct.gc_entry** %38, %struct.gc_entry*** %5, align 8
  br label %12

39:                                               ; preds = %25, %12
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.buffer*, %struct.buffer** %3, align 8
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @CLEAR(i32* %43)
  ret void
}

declare dso_local i32 @free(%struct.gc_entry*) #1

declare dso_local i32 @CLEAR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
