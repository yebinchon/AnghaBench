; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-trap.c_tm_trap_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-trap.c_tm_trap_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i8* }

@SA_SIGINFO = common dso_local global i8* null, align 8
@trap_signal_handler = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@usr1_signal_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pthread_attr_init()\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pthread_attr_setaffinity()\00", align 1
@le = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"%s machine detected. Checking if endianness flips %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Little-Endian\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Big-Endian\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"inadvertently on trap in TM... \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fflush()\00", align 1
@t0_ping = common dso_local global i32 0, align 4
@ping = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"pthread_create()\00", align 1
@exit_from_pong = common dso_local global i64 0, align 8
@t1_pong = common dso_local global i32 0, align 4
@pong = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"pthread_join()\00", align 1
@success = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"no.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"yes!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm_trap_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  store i32 1, i32* %2, align 4
  %8 = call i32 (...) @have_htm()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @SKIP_IF(i32 %11)
  %13 = load i8*, i8** @SA_SIGINFO, align 8
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @trap_signal_handler, align 4
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @SIGTRAP, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %6, i32* null)
  %19 = load i8*, i8** @SA_SIGINFO, align 8
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @usr1_signal_handler, align 4
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @SIGUSR1, align 4
  %24 = call i32 @sigaction(i32 %23, %struct.sigaction* %7, i32* null)
  %25 = call i32 @CPU_ZERO(i32* %5)
  %26 = call i32 @CPU_SET(i32 0, i32* %5)
  %27 = call i32 @pthread_attr_init(i32* %4)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %0
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @pr_error(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %0
  %34 = call i32 @pthread_attr_setaffinity_np(i32* %4, i32 4, i32* %5)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pr_error(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  %41 = bitcast i32* %2 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @le, align 4
  %44 = load i32, i32* @le, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @fflush(i32 0)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @pr_error(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %40
  %56 = load i32, i32* @ping, align 4
  %57 = call i32 @pthread_create(i32* @t0_ping, i32* %4, i32 %56, i32* null)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @pr_error(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  store i64 0, i64* @exit_from_pong, align 8
  %64 = load i32, i32* @pong, align 4
  %65 = call i32 @pthread_create(i32* @t1_pong, i32* %4, i32 %64, i32* null)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pr_error(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* @t0_ping, align 4
  %73 = call i32 @pthread_join(i32 %72, i32* null)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @pr_error(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* @t1_pong, align 4
  %81 = call i32 @pthread_join(i32 %80, i32* null)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @pr_error(i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i64, i64* @success, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %92 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %92, i32* %1, align 4
  br label %96

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %95 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pr_error(i32, i8*) #1

declare dso_local i32 @pthread_attr_setaffinity_np(i32*, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
