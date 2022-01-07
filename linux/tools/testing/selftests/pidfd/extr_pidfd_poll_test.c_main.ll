; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_poll_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/pidfd/extr_pidfd_poll_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected command line argument\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid input parameter %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"running pidfd poll test for %d iterations\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"%s - failed to fork a child process\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%s - pidfd_open failed\0A\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@handle_alarm = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"%s - signal failed\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%s - pidfd_send_signal failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s - poll failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"unexpected poll result: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unexpected event type received: 0x%x\0A\00", align 1
@timeout = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"death notification wait timeout\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s - waitpid failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"pidfd poll test: pass\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.pollfd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10000, i32* %9, align 4
  %12 = load i32, i32* @POLLIN, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %21
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %134, %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %137

41:                                               ; preds = %37
  %42 = call i32 (...) @fork()
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EAGAIN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %134

52:                                               ; preds = %45
  %53 = load i64, i64* @errno, align 8
  %54 = call i32 @strerror(i64 %53)
  %55 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = call i32 @sleep(i32 60)
  %61 = load i32, i32* @EXIT_SUCCESS, align 4
  %62 = call i32 @exit(i32 %61) #3
  unreachable

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @sys_pidfd_open(i32 %64, i32 0)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i64, i64* @errno, align 8
  %70 = call i32 @strerror(i64 %69)
  %71 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* @SIGALRM, align 4
  %74 = load i32, i32* @handle_alarm, align 4
  %75 = call i64 @signal(i32 %73, i32 %74)
  %76 = load i64, i64* @SIG_ERR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* @errno, align 8
  %80 = call i32 @strerror(i64 %79)
  %81 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %72
  %83 = call i32 @alarm(i32 3)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @SIGKILL, align 4
  %86 = call i64 @sys_pidfd_send_signal(i32 %84, i32 %85, i32* null, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* @errno, align 8
  %90 = call i32 @strerror(i64 %89)
  %91 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %10, align 4
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = call i32 @poll(%struct.pollfd* %6, i32 1, i32 -1)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 @strerror(i64 %99)
  %101 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @POLLIN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i64, i64* @timeout, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @close(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = call i64 @waitpid(i32 %126, i32* null, i32 0)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i64, i64* @errno, align 8
  %131 = call i32 @strerror(i64 %130)
  %132 = call i32 (i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %123
  br label %134

134:                                              ; preds = %133, %49
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %37

137:                                              ; preds = %37
  %138 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %139 = call i32 (...) @ksft_exit_pass()
  ret i32 %139
}

declare dso_local i32 @ksft_exit_fail_msg(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sys_pidfd_open(i32, i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @sys_pidfd_send_signal(i32, i32, i32*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
