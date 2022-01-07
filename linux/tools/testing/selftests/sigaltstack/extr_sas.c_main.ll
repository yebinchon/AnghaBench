; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sigaltstack/extr_sas.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sigaltstack/extr_sas.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.sigaction = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i8*, i64 }

@SA_ONSTACK = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@my_usr1 = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@my_usr2 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGSTKSZ = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_STACK = common dso_local global i32 0, align 4
@sstack = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"mmap() - %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sigaltstack() - %s\0A\00", align 1
@SS_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Initial sigaltstack state was SS_DISABLE\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Initial sigaltstack state was %x; should have been SS_DISABLE\0A\00", align 1
@SS_ONSTACK = common dso_local global i32 0, align 4
@SS_AUTODISARM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"[NOTE]\09The running kernel doesn't support SS_AUTODISARM\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"sigaltstack(SS_ONSTACK | SS_AUTODISARM)  %s\0A\00", align 1
@ustack = common dso_local global i64 0, align 8
@uc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@switch_fn = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"ss_flags=%x, should be SS_AUTODISARM\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"sigaltstack is still SS_AUTODISARM after signal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @ksft_print_header()
  %6 = call i32 @ksft_set_plan(i32 3)
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  %8 = call i32 @sigemptyset(i32* %7)
  %9 = load i32, i32* @SA_ONSTACK, align 4
  %10 = load i32, i32* @SA_SIGINFO, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @my_usr1, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @SIGUSR1, align 4
  %16 = call i32 @sigaction(i32 %15, %struct.sigaction* %2, i32* null)
  %17 = load i32, i32* @my_usr2, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @SIGUSR2, align 4
  %20 = call i32 @sigaction(i32 %19, %struct.sigaction* %2, i32* null)
  %21 = load i8*, i8** @SIGSTKSZ, align 8
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_PRIVATE, align 4
  %26 = load i32, i32* @MAP_ANONYMOUS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAP_STACK, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @mmap(i32* null, i8* %21, i32 %24, i32 %29, i32 -1, i32 0)
  store i64 %30, i64* @sstack, align 8
  %31 = load i64, i64* @sstack, align 8
  %32 = load i64, i64* @MAP_FAILED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %0
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @strerror(i64 %35)
  %37 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %38, i32* %1, align 4
  br label %134

39:                                               ; preds = %0
  %40 = call i32 @sigaltstack(%struct.TYPE_9__* null, %struct.TYPE_9__* %3)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 @strerror(i64 %44)
  %46 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #4
  unreachable

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SS_DISABLE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %60, i32* %1, align 4
  br label %134

61:                                               ; preds = %54
  %62 = load i64, i64* @sstack, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  %64 = load i8*, i8** @SIGSTKSZ, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* @SS_ONSTACK, align 4
  %67 = load i32, i32* @SS_AUTODISARM, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = call i32 @sigaltstack(%struct.TYPE_9__* %3, %struct.TYPE_9__* null)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %61
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @EINVAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %134

79:                                               ; preds = %73
  %80 = load i64, i64* @errno, align 8
  %81 = call i32 @strerror(i64 %80)
  %82 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %83, i32* %1, align 4
  br label %134

84:                                               ; preds = %61
  %85 = load i8*, i8** @SIGSTKSZ, align 8
  %86 = load i32, i32* @PROT_READ, align 4
  %87 = load i32, i32* @PROT_WRITE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MAP_PRIVATE, align 4
  %90 = load i32, i32* @MAP_ANONYMOUS, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @MAP_STACK, align 4
  %93 = or i32 %91, %92
  %94 = call i64 @mmap(i32* null, i8* %85, i32 %88, i32 %93, i32 -1, i32 0)
  store i64 %94, i64* @ustack, align 8
  %95 = load i64, i64* @ustack, align 8
  %96 = load i64, i64* @MAP_FAILED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %84
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 @strerror(i64 %99)
  %101 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %102, i32* %1, align 4
  br label %134

103:                                              ; preds = %84
  %104 = call i32 @getcontext(%struct.TYPE_10__* @uc) #5
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uc, i32 0, i32 1), align 8
  %105 = load i64, i64* @ustack, align 8
  store i64 %105, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uc, i32 0, i32 0, i32 1), align 8
  %106 = load i8*, i8** @SIGSTKSZ, align 8
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uc, i32 0, i32 0, i32 0), align 8
  %107 = load i32, i32* @switch_fn, align 4
  %108 = call i32 @makecontext(%struct.TYPE_10__* @uc, i32 %107, i32 0)
  %109 = load i32, i32* @SIGUSR1, align 4
  %110 = call i32 @raise(i32 %109)
  %111 = call i32 @sigaltstack(%struct.TYPE_9__* null, %struct.TYPE_9__* %3)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load i64, i64* @errno, align 8
  %116 = call i32 @strerror(i64 %115)
  %117 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  %119 = call i32 @exit(i32 %118) #4
  unreachable

120:                                              ; preds = %103
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SS_AUTODISARM, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EXIT_FAILURE, align 4
  %130 = call i32 @exit(i32 %129) #4
  unreachable

131:                                              ; preds = %120
  %132 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %133 = call i32 (...) @ksft_exit_pass()
  store i32 0, i32* %1, align 4
  br label %134

134:                                              ; preds = %131, %98, %79, %77, %56, %34
  %135 = load i32, i32* %1, align 4
  ret i32 %135
}

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @mmap(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @sigaltstack(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @getcontext(%struct.TYPE_10__*) #3

declare dso_local i32 @makecontext(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
