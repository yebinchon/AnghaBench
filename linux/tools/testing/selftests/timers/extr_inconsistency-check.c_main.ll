; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_inconsistency-check.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_inconsistency-check.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NR_CLOCKIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"t:c:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Usage: %s [-t <secs>] [-c <clockid>]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09-t: Number of seconds to run\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09-c: clockid to use (default, all clockids)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CLOCK_HWSPECIFIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Consistent %-30s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @CLOCK_REALTIME, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @NR_CLOCKIDS, align 4
  store i32 %13, i32* %9, align 4
  store i32 10, i32* %10, align 4
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %29 [
    i32 116, label %21
    i32 99, label %24
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @atoi(i32 %22)
  store i32 %23, i32* %10, align 4
  br label %37

24:                                               ; preds = %19
  %25 = load i32, i32* @optarg, align 4
  %26 = call i32 @atoi(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @exit(i32 -1) #3
  unreachable

37:                                               ; preds = %24, %21
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @setbuf(i32 %39, i32* null)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %67, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CLOCK_HWSPECIFIC, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %67

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @clock_gettime(i32 %52, %struct.timespec* %11)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @clockstring(i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @consistency_test(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 (...) @ksft_exit_fail()
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %42

70:                                               ; preds = %42
  %71 = call i32 (...) @ksft_exit_pass()
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i8* @clockstring(i32) #1

declare dso_local i64 @consistency_test(i32, i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
