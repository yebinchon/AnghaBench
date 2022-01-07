; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_sigfuz_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_sigfuz_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i8* }

@tmp_uc = common dso_local global i32* null, align 8
@SA_SIGINFO = common dso_local global i8* null, align 8
@trap_signal_handler = common dso_local global i32 0, align 4
@seg_signal_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@count_max = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@ARG_MESS_WITH_TM_AT = common dso_local global i32 0, align 4
@ARG_FOREVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sigfuz_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sigfuz_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32* @malloc(i32 4)
  store i32* %8, i32** @tmp_uc, align 8
  %9 = load i8*, i8** @SA_SIGINFO, align 8
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* @trap_signal_handler, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** @SA_SIGINFO, align 8
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @seg_signal_handler, align 4
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @SIGUSR1, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %3, i32* null)
  %19 = load i32, i32* @SIGSEGV, align 4
  %20 = call i32 @sigaction(i32 %19, %struct.sigaction* %4, i32* null)
  br label %21

21:                                               ; preds = %59, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @count_max, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = call i64 (...) @fork()
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = call i64 @time(i32* null)
  %31 = call i64 (...) @getpid()
  %32 = add nsw i64 %30, %31
  %33 = call i32 @srand(i64 %32)
  %34 = load i32, i32* @args, align 4
  %35 = load i32, i32* @ARG_MESS_WITH_TM_AT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = call i64 @one_in_chance(i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @mess_with_tm()
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* @SIGUSR1, align 4
  %46 = call i32 @raise(i32 %45)
  %47 = call i32 @exit(i32 0) #3
  unreachable

48:                                               ; preds = %25
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @waitpid(i64 %49, i32* %5, i32 0)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @args, align 4
  %53 = load i32, i32* @ARG_FOREVER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %21

60:                                               ; preds = %21
  %61 = load i32*, i32** @tmp_uc, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** @tmp_uc, align 8
  %65 = call i32 @free(i32* %64)
  store i32* null, i32** @tmp_uc, align 8
  br label %66

66:                                               ; preds = %63, %60
  ret i8* null
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @srand(i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @one_in_chance(i32) #1

declare dso_local i32 @mess_with_tm(...) #1

declare dso_local i32 @raise(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
