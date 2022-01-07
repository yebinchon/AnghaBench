; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/uevent/extr_uevent_filtering.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/uevent/extr_uevent_filtering.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s- Failed to block SIGCHLD\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s - Failed to fork() new process\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to set PR_SET_PDEATHSIG to SIGKILL\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@CLONE_NEWUSER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s - Failed to unshare user namespace\0A\00", align 1
@CLONE_NEWNET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"%s - Failed to unshare network namespace\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to synchronize with child process\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed triggering uevents\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = call i32 @sigemptyset(i32* %13)
  %17 = load i32, i32* @SIGCHLD, align 4
  %18 = call i32 @sigaddset(i32* %13, i32 %17)
  %19 = load i32, i32* @SIG_BLOCK, align 4
  %20 = call i32 @sigprocmask(i32 %19, i32* %13, i32* %14)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @stderr, align 4
  %25 = load i64, i64* @errno, align 8
  %26 = call i8* @strerror(i64 %25)
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %5, align 4
  br label %151

28:                                               ; preds = %4
  %29 = call i64 (...) @fork()
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i64, i64* @errno, align 8
  %35 = call i8* @strerror(i64 %34)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %5, align 4
  br label %151

37:                                               ; preds = %28
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %37
  %41 = call i32 (...) @set_death_signal()
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @_exit(i32 %47) #3
  unreachable

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @CLONE_NEWUSER, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i64, i64* @CLONE_NEWUSER, align 8
  %56 = call i32 @unshare(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = load i64, i64* @errno, align 8
  %62 = call i8* @strerror(i64 %61)
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @_exit(i32 %64) #3
  unreachable

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @CLONE_NEWNET, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i64, i64* @CLONE_NEWNET, align 8
  %74 = call i32 @unshare(i64 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @stderr, align 4
  %79 = load i64, i64* @errno, align 8
  %80 = call i8* @strerror(i64 %79)
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @EXIT_FAILURE, align 4
  %83 = call i32 @_exit(i32 %82) #3
  unreachable

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @uevent_listener(i64 %86, i32 %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EXIT_FAILURE, align 4
  %93 = call i32 @_exit(i32 %92) #3
  unreachable

94:                                               ; preds = %85
  %95 = load i32, i32* @EXIT_SUCCESS, align 4
  %96 = call i32 @_exit(i32 %95) #3
  unreachable

97:                                               ; preds = %37
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @read_nointr(i32 %98, i32* %11, i32 4)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 %101, 4
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @EXIT_FAILURE, align 4
  %107 = call i32 @_exit(i32 %106) #3
  unreachable

108:                                              ; preds = %97
  %109 = call i32 @trigger_uevent(i32 10)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 2, i32* %116, align 8
  %117 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %126, %115
  %119 = call i32 @sigtimedwait(i32* %13, i32* null, %struct.timespec* %15)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  %123 = load i64, i64* @errno, align 8
  %124 = load i64, i64* @EINTR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %118

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %12, align 8
  %132 = load i32, i32* @SIGTERM, align 4
  %133 = call i32 @kill(i64 %131, i32 %132)
  store i32 %133, i32* %10, align 4
  br label %138

134:                                              ; preds = %127
  %135 = load i64, i64* %12, align 8
  %136 = load i32, i32* @SIGUSR1, align 4
  %137 = call i32 @kill(i64 %135, i32 %136)
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 -1, i32* %5, align 4
  br label %151

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142, %118
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @wait_for_pid(i64 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 -1, i32* %5, align 4
  br label %151

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %148, %141, %32, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @set_death_signal(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @unshare(i64) #1

declare dso_local i64 @uevent_listener(i64, i32, i32) #1

declare dso_local i32 @read_nointr(i32, i32*, i32) #1

declare dso_local i32 @trigger_uevent(i32) #1

declare dso_local i32 @sigtimedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @wait_for_pid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
