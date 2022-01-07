; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sigaltstack/extr_sas.c_my_usr1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sigaltstack/extr_sas.c_my_usr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.stk_data = type { i32, i32 }

@sstack = common dso_local global i64 0, align 8
@SIGSTKSZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"SP is not on sigaltstack\0A\00", align 1
@msg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"[RUN]\09signal USR1\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sigaltstack() - %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SS_DISABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"tss_flags=%x, should be SS_DISABLE\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"sigaltstack is disabled in sighandler\0A\00", align 1
@sc = common dso_local global i32 0, align 4
@uc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"[RUN]\09Aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_usr1(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.stk_data*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @sstack, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @sstack, align 8
  %18 = load i64, i64* @SIGSTKSZ, align 8
  %19 = add i64 %17, %18
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = call i8* @alloca(i32 1024)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 512
  %29 = bitcast i8* %28 to %struct.stk_data*
  store %struct.stk_data* %29, %struct.stk_data** %10, align 8
  %30 = load %struct.stk_data*, %struct.stk_data** %10, align 8
  %31 = getelementptr inbounds %struct.stk_data, %struct.stk_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @msg, align 4
  %34 = call i32 @strcpy(i32 %32, i32 %33)
  %35 = load %struct.stk_data*, %struct.stk_data** %10, align 8
  %36 = getelementptr inbounds %struct.stk_data, %struct.stk_data* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @sigaltstack(i32* null, %struct.TYPE_3__* %9)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @exit(i32 %45) #3
  unreachable

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SS_DISABLE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  br label %58

56:                                               ; preds = %47
  %57 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = call i32 @swapcontext(i32* @sc, i32* @uc)
  %60 = load %struct.stk_data*, %struct.stk_data** %10, align 8
  %61 = getelementptr inbounds %struct.stk_data, %struct.stk_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load %struct.stk_data*, %struct.stk_data** %10, align 8
  %65 = getelementptr inbounds %struct.stk_data, %struct.stk_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = call i32 @exit(i32 %70) #3
  unreachable

72:                                               ; preds = %58
  ret void
}

declare dso_local i32 @ksft_exit_fail_msg(i8*, ...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ksft_print_msg(i8*, ...) #1

declare dso_local i32 @sigaltstack(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ksft_test_result_fail(i8*, i64) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @swapcontext(i32*, i32*) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
