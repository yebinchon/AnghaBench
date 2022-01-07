; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitExecAllocator.c_sljit_free_unused_memory_exec.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitExecAllocator.c_sljit_free_unused_memory_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.free_block = type { i64, %struct.TYPE_3__, %struct.free_block* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@free_blocks = common dso_local global %struct.free_block* null, align 8
@total_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sljit_free_unused_memory_exec() #0 {
  %1 = alloca %struct.free_block*, align 8
  %2 = alloca %struct.free_block*, align 8
  %3 = call i32 (...) @allocator_grab_lock()
  %4 = load %struct.free_block*, %struct.free_block** @free_blocks, align 8
  store %struct.free_block* %4, %struct.free_block** %1, align 8
  br label %5

5:                                                ; preds = %40, %0
  %6 = load %struct.free_block*, %struct.free_block** %1, align 8
  %7 = icmp ne %struct.free_block* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = load %struct.free_block*, %struct.free_block** %1, align 8
  %10 = getelementptr inbounds %struct.free_block, %struct.free_block* %9, i32 0, i32 2
  %11 = load %struct.free_block*, %struct.free_block** %10, align 8
  store %struct.free_block* %11, %struct.free_block** %2, align 8
  %12 = load %struct.free_block*, %struct.free_block** %1, align 8
  %13 = getelementptr inbounds %struct.free_block, %struct.free_block* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %8
  %18 = load %struct.free_block*, %struct.free_block** %1, align 8
  %19 = load %struct.free_block*, %struct.free_block** %1, align 8
  %20 = getelementptr inbounds %struct.free_block, %struct.free_block* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.TYPE_4__* @AS_BLOCK_HEADER(%struct.free_block* %18, i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %17
  %27 = load %struct.free_block*, %struct.free_block** %1, align 8
  %28 = getelementptr inbounds %struct.free_block, %struct.free_block* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @total_size, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* @total_size, align 8
  %32 = load %struct.free_block*, %struct.free_block** %1, align 8
  %33 = call i32 @sljit_remove_free_block(%struct.free_block* %32)
  %34 = load %struct.free_block*, %struct.free_block** %1, align 8
  %35 = load %struct.free_block*, %struct.free_block** %1, align 8
  %36 = getelementptr inbounds %struct.free_block, %struct.free_block* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 4
  %39 = call i32 @free_chunk(%struct.free_block* %34, i64 %38)
  br label %40

40:                                               ; preds = %26, %17, %8
  %41 = load %struct.free_block*, %struct.free_block** %2, align 8
  store %struct.free_block* %41, %struct.free_block** %1, align 8
  br label %5

42:                                               ; preds = %5
  %43 = load i64, i64* @total_size, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.free_block*, %struct.free_block** @free_blocks, align 8
  %47 = icmp ne %struct.free_block* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @total_size, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.free_block*, %struct.free_block** @free_blocks, align 8
  %53 = icmp ne %struct.free_block* %52, null
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi i1 [ true, %45 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @SLJIT_ASSERT(i32 %59)
  %61 = call i32 (...) @allocator_release_lock()
  ret void
}

declare dso_local i32 @allocator_grab_lock(...) #1

declare dso_local %struct.TYPE_4__* @AS_BLOCK_HEADER(%struct.free_block*, i64) #1

declare dso_local i32 @sljit_remove_free_block(%struct.free_block*) #1

declare dso_local i32 @free_chunk(%struct.free_block*, i64) #1

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i32 @allocator_release_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
