; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_set_max_safe_fds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_set_max_safe_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_files_per_process = common dso_local global i64 0, align 8
@max_safe_fds = common dso_local global i64 0, align 8
@NUM_RESERVED_FDS = common dso_local global i64 0, align 8
@FD_MINFREE = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"insufficient file descriptors available to start server process\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"System allows %d, we need at least %d.\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"max_safe_fds = %d, usable_fds = %d, already_open = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_max_safe_fds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @max_files_per_process, align 8
  %4 = call i32 @count_usable_fds(i64 %3, i32* %1, i32* %2)
  %5 = load i32, i32* %1, align 4
  %6 = load i64, i64* @max_files_per_process, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = sub nsw i64 %6, %8
  %10 = call i64 @Min(i32 %5, i64 %9)
  store i64 %10, i64* @max_safe_fds, align 8
  %11 = load i64, i64* @NUM_RESERVED_FDS, align 8
  %12 = load i64, i64* @max_safe_fds, align 8
  %13 = sub nsw i64 %12, %11
  store i64 %13, i64* @max_safe_fds, align 8
  %14 = load i64, i64* @max_safe_fds, align 8
  %15 = load i64, i64* @FD_MINFREE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %0
  %18 = load i32, i32* @FATAL, align 4
  %19 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @max_safe_fds, align 8
  %23 = load i64, i64* @NUM_RESERVED_FDS, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @FD_MINFREE, align 8
  %26 = load i64, i64* @NUM_RESERVED_FDS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %24, i64 %27)
  %29 = call i32 @ereport(i32 %18, i32 %28)
  br label %30

30:                                               ; preds = %17, %0
  %31 = load i32, i32* @DEBUG2, align 4
  %32 = load i64, i64* @max_safe_fds, align 8
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @count_usable_fds(i64, i32*, i32*) #1

declare dso_local i64 @Min(i32, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i64, i64) #1

declare dso_local i32 @elog(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
