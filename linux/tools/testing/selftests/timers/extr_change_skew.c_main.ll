; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_change_skew.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_change_skew.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i64, i32 }

@__const.main.ppm = private unnamed_addr constant [5 x i32] [i32 0, i32 250, i32 500, i32 -250, i32 -500], align 16
@.str = private unnamed_addr constant [16 x i8] c"killall -9 ntpd\00", align 1
@ADJ_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Maybe you're not running as root?\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Using %i ppm adjustment\0A\00", align 1
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"[FAIL]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[OK]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timex, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @__const.main.ppm to i8*), i64 20, i1 false)
  %11 = call i32 @system(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @ADJ_OFFSET, align 4
  %13 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = call i32 @adjtimex(%struct.timex* %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @change_skew_test(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %42

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %21

42:                                               ; preds = %37, %21
  %43 = load i32, i32* @ADJ_FREQUENCY, align 4
  %44 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.timex, %struct.timex* %6, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = call i32 @adjtimex(%struct.timex* %6)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 (...) @ksft_exit_fail()
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %42
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 (...) @ksft_exit_pass()
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %49, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @adjtimex(%struct.timex*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @change_skew_test(i32) #2

declare dso_local i32 @ksft_exit_fail(...) #2

declare dso_local i32 @ksft_exit_pass(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
