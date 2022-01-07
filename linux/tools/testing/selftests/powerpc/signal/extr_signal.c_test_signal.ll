; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_signal.c_test_signal.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_signal.c_test_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@signal_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sigaction SIGUSR1\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sigaction SIGALRM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@signaled = common dso_local global i64 0, align 8
@fail = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Didn't get signal from child\0A\00", align 1
@MAX_ATTEMPT = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"(%d) Fail reason: %d rc=0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_signal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32 (...) @getpid()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @signal_handler, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %11 = call i32 @sigemptyset(i32* %10)
  %12 = load i32, i32* @SIGUSR1, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.sigaction* %2, i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %0
  %19 = load i32, i32* @SIGALRM, align 4
  %20 = call i64 @sigaction(i32 %19, %struct.sigaction* %2, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %68, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %27, 1000
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = call i32 (...) @fork()
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SIGUSR1, align 4
  %42 = call i64 @signal_self(i32 %40, i32 %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %36
  %45 = call i32 @alarm(i32 0)
  %46 = call i32 @alarm(i32 2)
  br label %47

47:                                               ; preds = %56, %44
  %48 = load i64, i64* @signaled, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @fail, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %47

57:                                               ; preds = %54
  %58 = load i64, i64* @signaled, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @FAIL_IF(i32 1)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @waitpid(i32 %65, i32* null, i32 0)
  br label %67

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %26

71:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %114, %71
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @MAX_ATTEMPT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %72
  %77 = call i32 @alarm(i32 0)
  store i64 0, i64* @signaled, align 8
  %78 = load i32, i32* @TIMEOUT, align 4
  %79 = call i32 @alarm(i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @SIGUSR1, align 4
  %82 = call i64 @signal_self(i32 %80, i32 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* @fail, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88, i64 %89)
  %91 = call i32 @FAIL_IF(i32 1)
  br label %92

92:                                               ; preds = %85, %76
  br label %93

93:                                               ; preds = %102, %92
  %94 = load i64, i64* @signaled, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @fail, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !3
  br label %93

103:                                              ; preds = %100
  %104 = load i64, i64* @signaled, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @fail, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %109, i64 %110)
  %112 = call i32 @FAIL_IF(i32 1)
  br label %113

113:                                              ; preds = %106, %103
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %72

117:                                              ; preds = %72
  ret i32 0
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fork(...) #1

declare dso_local i64 @signal_self(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1290}
!3 = !{i32 1722}
