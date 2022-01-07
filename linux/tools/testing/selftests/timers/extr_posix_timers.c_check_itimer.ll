; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_check_itimer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_check_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Check itimer \00", align 1
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"virtual... \00", align 1
@ITIMER_PROF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"prof... \00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"real... \00", align 1
@stdout = common dso_local global i32 0, align 4
@done = common dso_local global i64 0, align 8
@SIGVTALRM = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@SIGPROF = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't call gettimeofday()\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Can't set timer\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_itimer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.itimerval, align 4
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* @DELAY, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ITIMER_VIRTUAL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ITIMER_PROF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ITIMER_REAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %21
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fflush(i32 %32)
  store i64 0, i64* @done, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ITIMER_VIRTUAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @SIGVTALRM, align 4
  %39 = load i32, i32* @sig_handler, align 4
  %40 = call i32 @signal(i32 %38, i32 %39)
  br label %59

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ITIMER_PROF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @SIGPROF, align 4
  %47 = load i32, i32* @sig_handler, align 4
  %48 = call i32 @signal(i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ITIMER_REAL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @SIGALRM, align 4
  %55 = load i32, i32* @sig_handler, align 4
  %56 = call i32 @signal(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %37
  %60 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %110

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @setitimer(i32 %66, %struct.itimerval* %7, i32* null)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %110

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @ITIMER_VIRTUAL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (...) @user_loop()
  br label %92

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @ITIMER_PROF, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (...) @kernel_loop()
  br label %91

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @ITIMER_REAL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (...) @idle_loop()
  br label %90

90:                                               ; preds = %88, %84
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %76
  %93 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %110

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @check_diff(i32 %100, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %98
  %106 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %109

107:                                              ; preds = %98
  %108 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %105
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %96, %70, %63
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @user_loop(...) #1

declare dso_local i32 @kernel_loop(...) #1

declare dso_local i32 @idle_loop(...) #1

declare dso_local i32 @check_diff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
