; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_error_log_limit.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_error_log_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_log_limit.start = internal global i64 0, align 8
@error_log_limit.counter = internal global i64 0, align 8
@error_log_limit.prevented = internal global i64 0, align 8
@error_log_throttle_period = common dso_local global i64 0, align 8
@error_log_errors_per_period = common dso_local global i64 0, align 8
@LOG_DATE_LENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"%s: %s LOG FLOOD PROTECTION reset for process '%s' (prevented %lu logs in the last %ld seconds).\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [110 x i8] c"%s: %s LOG FLOOD PROTECTION resuming logging from process '%s' (prevented %lu logs in the last %ld seconds).\0A\00", align 1
@.str.2 = private unnamed_addr constant [171 x i8] c"%s: %s LOG FLOOD PROTECTION too many logs (%lu logs in %ld seconds, threshold is set to %lu logs in %ld seconds). Preventing more logs from process '%s' for %ld seconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @error_log_limit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i64, i64* @error_log_throttle_period, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

14:                                               ; preds = %1
  %15 = load i64, i64* @error_log_errors_per_period, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %109

18:                                               ; preds = %14
  %19 = call i64 (...) @now_monotonic_sec()
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @error_log_limit.start, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* @error_log_limit.start, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i64, i64* @error_log_limit.prevented, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* @LOG_DATE_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %5, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %6, align 8
  %35 = load i32, i32* @LOG_DATE_LENGTH, align 4
  %36 = call i32 @log_date(i8* %34, i32 %35)
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** @program_name, align 8
  %39 = load i8*, i8** @program_name, align 8
  %40 = load i64, i64* @error_log_limit.prevented, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @error_log_limit.start, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %38, i8* %39, i64 %40, i64 %43)
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  br label %46

46:                                               ; preds = %30, %27
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* @error_log_limit.start, align 8
  store i64 0, i64* @error_log_limit.counter, align 8
  store i64 0, i64* @error_log_limit.prevented, align 8
  br label %48

48:                                               ; preds = %46, %24
  %49 = load i64, i64* @error_log_limit.counter, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* @error_log_limit.counter, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @error_log_limit.start, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* @error_log_throttle_period, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %48
  %57 = load i64, i64* @error_log_limit.prevented, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* @LOG_DATE_LENGTH, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %7, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %8, align 8
  %64 = load i32, i32* @LOG_DATE_LENGTH, align 4
  %65 = call i32 @log_date(i8* %63, i32 %64)
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @program_name, align 8
  %68 = load i8*, i8** @program_name, align 8
  %69 = load i64, i64* @error_log_limit.prevented, align 8
  %70 = load i64, i64* @error_log_throttle_period, align 8
  %71 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %67, i8* %68, i64 %69, i64 %70)
  %72 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %59, %56
  %74 = load i64, i64* %4, align 8
  store i64 %74, i64* @error_log_limit.start, align 8
  store i64 1, i64* @error_log_limit.counter, align 8
  store i64 0, i64* @error_log_limit.prevented, align 8
  store i32 0, i32* %2, align 4
  br label %109

75:                                               ; preds = %48
  %76 = load i64, i64* @error_log_limit.counter, align 8
  %77 = load i64, i64* @error_log_errors_per_period, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i64, i64* @error_log_limit.prevented, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @LOG_DATE_LENGTH, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %9, align 8
  %86 = alloca i8, i64 %84, align 16
  store i64 %84, i64* %10, align 8
  %87 = load i32, i32* @LOG_DATE_LENGTH, align 4
  %88 = call i32 @log_date(i8* %86, i32 %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @program_name, align 8
  %91 = load i64, i64* @error_log_limit.counter, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @error_log_limit.start, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* @error_log_errors_per_period, align 8
  %96 = load i64, i64* @error_log_throttle_period, align 8
  %97 = load i8*, i8** @program_name, align 8
  %98 = load i64, i64* @error_log_limit.start, align 8
  %99 = load i64, i64* @error_log_throttle_period, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %4, align 8
  %102 = sub nsw i64 %100, %101
  %103 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %90, i64 %91, i64 %94, i64 %95, i64 %96, i8* %97, i64 %102)
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  br label %105

105:                                              ; preds = %82, %79
  %106 = load i64, i64* @error_log_limit.prevented, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* @error_log_limit.prevented, align 8
  store i32 1, i32* %2, align 4
  br label %109

108:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %105, %73, %17, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @now_monotonic_sec(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_date(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
