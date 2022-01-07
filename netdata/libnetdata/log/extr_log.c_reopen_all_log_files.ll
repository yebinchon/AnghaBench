; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_reopen_all_log_files.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_reopen_all_log_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout_filename = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@output_log_syslog = common dso_local global i32 0, align 4
@stderr_filename = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@error_log_syslog = common dso_local global i32 0, align 4
@stdaccess_filename = common dso_local global i64 0, align 8
@stdaccess_fd = common dso_local global i32 0, align 4
@stdaccess = common dso_local global i32 0, align 4
@access_log_syslog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reopen_all_log_files() #0 {
  %1 = load i64, i64* @stdout_filename, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @STDOUT_FILENO, align 4
  %5 = load i32, i32* @stdout, align 4
  %6 = load i64, i64* @stdout_filename, align 8
  %7 = call i32 @open_log_file(i32 %4, i32 %5, i64 %6, i32* @output_log_syslog, i32 0, i32* null)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i64, i64* @stderr_filename, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* @STDERR_FILENO, align 4
  %13 = load i32, i32* @stderr, align 4
  %14 = load i64, i64* @stderr_filename, align 8
  %15 = call i32 @open_log_file(i32 %12, i32 %13, i64 %14, i32* @error_log_syslog, i32 0, i32* null)
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i64, i64* @stdaccess_filename, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @stdaccess_fd, align 4
  %21 = load i32, i32* @stdaccess, align 4
  %22 = load i64, i64* @stdaccess_filename, align 8
  %23 = call i32 @open_log_file(i32 %20, i32 %21, i64 %22, i32* @access_log_syslog, i32 1, i32* @stdaccess_fd)
  store i32 %23, i32* @stdaccess, align 4
  br label %24

24:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @open_log_file(i32, i32, i64, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
