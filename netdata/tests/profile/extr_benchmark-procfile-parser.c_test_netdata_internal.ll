; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-procfile-parser.c_test_netdata_internal.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-procfile-parser.c_test_netdata_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_netdata_internal.ff = internal global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"/proc/self/status\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" \09:,-()/\00", align 1
@PROCFILE_FLAG_NO_ERROR_ON_FILE_IO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to open filename\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to read filename\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @test_netdata_internal() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** @test_netdata_internal.ff, align 8
  %3 = load i32, i32* @PROCFILE_FLAG_NO_ERROR_ON_FILE_IO, align 4
  %4 = call i32* @procfile_reopen(i32* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  store i32* %4, i32** @test_netdata_internal.ff, align 8
  %5 = load i32*, i32** @test_netdata_internal.ff, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %0
  %12 = call i32 (...) @begin_tsc()
  %13 = load i32*, i32** @test_netdata_internal.ff, align 8
  %14 = call i32* @procfile_readall(i32* %13)
  store i32* %14, i32** @test_netdata_internal.ff, align 8
  %15 = call i64 (...) @end_tsc()
  store i64 %15, i64* %1, align 8
  %16 = load i32*, i32** @test_netdata_internal.ff, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %11
  %23 = load i64, i64* %1, align 8
  ret i64 %23
}

declare dso_local i32* @procfile_reopen(i32*, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @begin_tsc(...) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @end_tsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
