; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"bamxt:fi:h\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Mess with TM before signal\0A\00", align 1
@ARG_MESS_WITH_TM_BEFORE = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Mess with TM at signal handler\0A\00", align 1
@ARG_MESS_WITH_TM_AT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Mess with MSR[TS] bits in mcontext\0A\00", align 1
@ARG_MESS_WITH_MSR_AT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Running with all options enabled\0A\00", align 1
@ARG_COMPLETE = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@nthread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Threads = %d\0A\00", align 1
@ARG_FOREVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Press ^C to stop\0A\00", align 1
@count_max = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Running for %d interactions\0A\00", align 1
@signal_fuzzer = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"signal_fuzzer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %84, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %85

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 98
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ARG_MESS_WITH_TM_BEFORE, align 4
  %18 = load i32, i32* @args, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @args, align 4
  br label %84

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 97
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ARG_MESS_WITH_TM_AT, align 4
  %26 = load i32, i32* @args, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @args, align 4
  br label %83

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 109
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @ARG_MESS_WITH_MSR_AT, align 4
  %34 = load i32, i32* @args, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @args, align 4
  br label %82

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 120
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* @ARG_COMPLETE, align 4
  %42 = load i32, i32* @args, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @args, align 4
  br label %81

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 116
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 @atoi(i32 %48)
  store i32 %49, i32* @nthread, align 4
  %50 = load i32, i32* @nthread, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  br label %80

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 102
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @ARG_FOREVER, align 4
  %57 = load i32, i32* @args, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @args, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @test_harness_set_timeout(i32 -1)
  br label %79

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 105
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @optarg, align 4
  %66 = call i32 @atoi(i32 %65)
  store i32 %66, i32* @count_max, align 4
  %67 = load i32, i32* @count_max, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  br label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 104
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @show_help(i8* %75)
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %39
  br label %82

82:                                               ; preds = %81, %31
  br label %83

83:                                               ; preds = %82, %23
  br label %84

84:                                               ; preds = %83, %15
  br label %7

85:                                               ; preds = %7
  %86 = load i32, i32* @args, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @ARG_COMPLETE, align 4
  store i32 %89, i32* @args, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* @signal_fuzzer, align 4
  %92 = call i32 @test_harness(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @test_harness_set_timeout(i32) #1

declare dso_local i32 @show_help(i8*) #1

declare dso_local i32 @test_harness(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
