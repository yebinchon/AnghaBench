; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_PGSharedMemoryDetach.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_PGSharedMemoryDetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UsedShmemSegAddr = common dso_local global i32* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"shmdt(%p) failed: %m\00", align 1
@AnonymousShmem = common dso_local global i32* null, align 8
@AnonymousShmemSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"munmap(%p, %zu) failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PGSharedMemoryDetach() #0 {
  %1 = load i32*, i32** @UsedShmemSegAddr, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i32*, i32** @UsedShmemSegAddr, align 8
  %5 = call i64 @shmdt(i32* %4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, i32* @LOG, align 4
  %9 = load i32*, i32** @UsedShmemSegAddr, align 8
  %10 = call i32 (i32, i8*, i32*, ...) @elog(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %9)
  br label %11

11:                                               ; preds = %7, %3
  store i32* null, i32** @UsedShmemSegAddr, align 8
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i32*, i32** @AnonymousShmem, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32*, i32** @AnonymousShmem, align 8
  %17 = load i32, i32* @AnonymousShmemSize, align 4
  %18 = call i64 @munmap(i32* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @LOG, align 4
  %22 = load i32*, i32** @AnonymousShmem, align 8
  %23 = load i32, i32* @AnonymousShmemSize, align 4
  %24 = call i32 (i32, i8*, i32*, ...) @elog(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  store i32* null, i32** @AnonymousShmem, align 8
  br label %26

26:                                               ; preds = %25, %12
  ret void
}

declare dso_local i64 @shmdt(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32*, ...) #1

declare dso_local i64 @munmap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
