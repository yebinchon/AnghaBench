; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_free_gc_two.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_test_buffer_free_gc_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { %struct.gc_entry* }
%struct.gc_entry = type { %struct.gc_entry* }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_buffer_free_gc_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buffer_free_gc_two(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.gc_arena, align 8
  %4 = alloca %struct.buffer, align 4
  %5 = alloca %struct.buffer, align 4
  %6 = alloca %struct.buffer, align 4
  %7 = alloca %struct.gc_entry*, align 8
  store i8** %0, i8*** %2, align 8
  %8 = call %struct.gc_entry* (...) @gc_new()
  %9 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store %struct.gc_entry* %8, %struct.gc_entry** %9, align 8
  %10 = call i32 @alloc_buf_gc(i32 1024, %struct.gc_arena* %3)
  %11 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = call i32 @alloc_buf_gc(i32 1024, %struct.gc_arena* %3)
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = call i32 @alloc_buf_gc(i32 1024, %struct.gc_arena* %3)
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  %17 = load %struct.gc_entry*, %struct.gc_entry** %16, align 8
  store %struct.gc_entry* %17, %struct.gc_entry** %7, align 8
  %18 = load %struct.gc_entry*, %struct.gc_entry** %7, align 8
  %19 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %18, i64 1
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assert_ptr_equal(%struct.gc_entry* %19, i32 %21)
  %23 = load %struct.gc_entry*, %struct.gc_entry** %7, align 8
  %24 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %23, i32 0, i32 0
  %25 = load %struct.gc_entry*, %struct.gc_entry** %24, align 8
  %26 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %25, i64 1
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @assert_ptr_equal(%struct.gc_entry* %26, i32 %28)
  %30 = load %struct.gc_entry*, %struct.gc_entry** %7, align 8
  %31 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %30, i32 0, i32 0
  %32 = load %struct.gc_entry*, %struct.gc_entry** %31, align 8
  %33 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %32, i32 0, i32 0
  %34 = load %struct.gc_entry*, %struct.gc_entry** %33, align 8
  %35 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %34, i64 1
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @assert_ptr_equal(%struct.gc_entry* %35, i32 %37)
  %39 = call i32 @free_buf_gc(%struct.buffer* %5, %struct.gc_arena* %3)
  %40 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  %41 = load %struct.gc_entry*, %struct.gc_entry** %40, align 8
  %42 = call i32 @assert_non_null(%struct.gc_entry* %41)
  br label %43

43:                                               ; preds = %46, %1
  %44 = load %struct.gc_entry*, %struct.gc_entry** %7, align 8
  %45 = icmp ne %struct.gc_entry* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.gc_entry*, %struct.gc_entry** %7, align 8
  %48 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %47, i64 1
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @assert_ptr_not_equal(%struct.gc_entry* %48, i32 %50)
  %52 = load %struct.gc_entry*, %struct.gc_entry** %7, align 8
  %53 = getelementptr inbounds %struct.gc_entry, %struct.gc_entry* %52, i32 0, i32 0
  %54 = load %struct.gc_entry*, %struct.gc_entry** %53, align 8
  store %struct.gc_entry* %54, %struct.gc_entry** %7, align 8
  br label %43

55:                                               ; preds = %43
  %56 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local %struct.gc_entry* @gc_new(...) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @assert_ptr_equal(%struct.gc_entry*, i32) #1

declare dso_local i32 @free_buf_gc(%struct.buffer*, %struct.gc_arena*) #1

declare dso_local i32 @assert_non_null(%struct.gc_entry*) #1

declare dso_local i32 @assert_ptr_not_equal(%struct.gc_entry*, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
