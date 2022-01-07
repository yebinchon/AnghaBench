; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_recvlogical.c_OutputFsync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_pg_recvlogical.c_OutputFsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_last_fsync = common dso_local global i32 0, align 4
@output_written_lsn = common dso_local global i32 0, align 4
@output_fsync_lsn = common dso_local global i32 0, align 4
@fsync_interval = common dso_local global i64 0, align 8
@output_needs_fsync = common dso_local global i32 0, align 4
@output_isfile = common dso_local global i32 0, align 4
@outfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@outfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OutputFsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OutputFsync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* @output_last_fsync, align 4
  %5 = load i32, i32* @output_written_lsn, align 4
  store i32 %5, i32* @output_fsync_lsn, align 4
  %6 = load i64, i64* @fsync_interval, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @output_needs_fsync, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %26

13:                                               ; preds = %9
  store i32 0, i32* @output_needs_fsync, align 4
  %14 = load i32, i32* @output_isfile, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %26

17:                                               ; preds = %13
  %18 = load i32, i32* @outfd, align 4
  %19 = call i64 @fsync(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @outfile, align 4
  %23 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %16, %12, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @pg_log_fatal(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
