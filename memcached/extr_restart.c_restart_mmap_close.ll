; ModuleID = '/home/carl/AnghaBench/memcached/extr_restart.c_restart_mmap_close.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_restart.c_restart_mmap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmap_base = common dso_local global i32 0, align 4
@slabmem_limit = common dso_local global i32 0, align 4
@MS_SYNC = common dso_local global i32 0, align 4
@memory_file = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[restart] failed to save metadata\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"[restart] failed to munmap shared memory\00", align 1
@mmap_fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"[restart] failed to close shared memory fd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restart_mmap_close() #0 {
  %1 = load i32, i32* @mmap_base, align 4
  %2 = load i32, i32* @slabmem_limit, align 4
  %3 = load i32, i32* @MS_SYNC, align 4
  %4 = call i32 @msync(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @memory_file, align 4
  %6 = call i64 @restart_save(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @mmap_base, align 4
  %13 = load i32, i32* @slabmem_limit, align 4
  %14 = call i64 @munmap(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @mmap_fd, align 4
  %20 = call i64 @close(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* @memory_file, align 4
  %27 = call i32 @free(i32 %26)
  ret void
}

declare dso_local i32 @msync(i32, i32, i32) #1

declare dso_local i64 @restart_save(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @munmap(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
