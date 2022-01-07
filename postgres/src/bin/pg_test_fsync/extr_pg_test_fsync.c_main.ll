; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"pg_test_fsync\00", align 1
@progname = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@signal_cleanup = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@process_alarm = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @pg_logging_init(i8* %8)
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @set_pglocale_pgservice(i8* %12, i32 %13)
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @get_progname(i8* %17)
  store i32 %18, i32* @progname, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @handle_args(i32 %19, i8** %20)
  %22 = load i32, i32* @SIGINT, align 4
  %23 = load i32, i32* @signal_cleanup, align 4
  %24 = call i32 @pqsignal(i32 %22, i32 %23)
  %25 = load i32, i32* @SIGTERM, align 4
  %26 = load i32, i32* @signal_cleanup, align 4
  %27 = call i32 @pqsignal(i32 %25, i32 %26)
  %28 = load i32, i32* @SIGALRM, align 4
  %29 = load i32, i32* @process_alarm, align 4
  %30 = call i32 @pqsignal(i32 %28, i32 %29)
  %31 = call i32 (...) @prepare_buf()
  %32 = call i32 (...) @test_open()
  %33 = call i32 @test_sync(i32 1)
  %34 = call i32 @test_sync(i32 2)
  %35 = call i32 (...) @test_open_syncs()
  %36 = call i32 (...) @test_file_descriptor_sync()
  %37 = call i32 (...) @test_non_sync()
  %38 = load i32, i32* @filename, align 4
  %39 = call i32 @unlink(i32 %38)
  ret i32 0
}

declare dso_local i32 @pg_logging_init(i8*) #1

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #1

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #1

declare dso_local i32 @get_progname(i8*) #1

declare dso_local i32 @handle_args(i32, i8**) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @prepare_buf(...) #1

declare dso_local i32 @test_open(...) #1

declare dso_local i32 @test_sync(i32) #1

declare dso_local i32 @test_open_syncs(...) #1

declare dso_local i32 @test_file_descriptor_sync(...) #1

declare dso_local i32 @test_non_sync(...) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
