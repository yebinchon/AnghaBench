; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_signal_tm.c_test_signal_tm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_signal_tm.c_test_signal_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@signal_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sigaction SIGUSR1\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sigaction SIGALRM\00", align 1
@MAX_ATTEMPT = common dso_local global i32 0, align 4
@signaled = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"TEXASR 0x%016lx, TFIAR 0x%016lx\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"(%d) Fail reason: %d rc=0x%lx ret=0x%lx\0A\00", align 1
@fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_signal_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_signal_tm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @signal_handler, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %9 = call i32 @sigemptyset(i32* %8)
  %10 = load i32, i32* @SIGUSR1, align 4
  %11 = call i64 @sigaction(i32 %10, %struct.sigaction* %2, i32* null)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %0
  %17 = load i32, i32* @SIGALRM, align 4
  %18 = call i64 @sigaction(i32 %17, %struct.sigaction* %2, i32* null)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %16
  %24 = call i32 (...) @have_htm()
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @SKIP_IF(i32 %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %88, %23
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @MAX_ATTEMPT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %29
  store i64 57005, i64* %3, align 8
  store i64 48879, i64* %4, align 8
  %34 = call i32 @alarm(i32 0)
  store i64 0, i64* @signaled, align 8
  %35 = load i32, i32* @TIMEOUT, align 4
  %36 = call i32 @alarm(i32 %35)
  %37 = call i32 (...) @tcheck_transactional()
  %38 = call i32 @FAIL_IF(i32 %37)
  %39 = call i32 (...) @getpid()
  %40 = load i32, i32* @SIGUSR1, align 4
  %41 = call i64 @tm_signal_self(i32 %39, i32 %40, i64* %3)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp eq i64 %42, 57005
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %88

45:                                               ; preds = %33
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %3, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48, %45
  %52 = call i32 (...) @__builtin_get_texasr()
  %53 = call i32 (...) @__builtin_get_tfiar()
  %54 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @fail, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i64 %58, i64 %59)
  %61 = load i64, i64* %3, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @FAIL_IF(i32 %62)
  br label %64

64:                                               ; preds = %51, %48
  br label %65

65:                                               ; preds = %74, %64
  %66 = load i64, i64* @signaled, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @fail, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i1 [ false, %65 ], [ %71, %68 ]
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %65

75:                                               ; preds = %72
  %76 = load i64, i64* @signaled, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* @fail, align 4
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i64 %82, i64 %83)
  %85 = load i32, i32* @fail, align 4
  %86 = call i32 @FAIL_IF(i32 %85)
  br label %87

87:                                               ; preds = %78, %75
  br label %88

88:                                               ; preds = %87, %44
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %29

91:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @tcheck_transactional(...) #1

declare dso_local i64 @tm_signal_self(i32, i32, i64*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @__builtin_get_texasr(...) #1

declare dso_local i32 @__builtin_get_tfiar(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1685}
