; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vdso.c_test_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vdso.c_test_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.timezone = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"[RUN]\09Testing gettimeofday...\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[FAIL]\09sys_gettimeofday failed (%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@nerrs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"[FAIL]\09vDSO returned %d, syscall errno=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\09%llu.%06ld %llu.%06ld %llu.%06ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[FAIL]\09Times are out of sequence\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"[OK]\09timezones match: minuteswest=%d, dsttime=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"[FAIL]\09timezones do not match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gettimeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gettimeofday() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timezone, align 8
  %5 = alloca %struct.timezone, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @sys_gettimeofday(%struct.timeval* %1, %struct.timezone* %4)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @nerrs, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @nerrs, align 4
  br label %77

16:                                               ; preds = %0
  %17 = call i32 @vdso_gettimeofday(%struct.timeval* %2, %struct.timezone* %5)
  store i32 %17, i32* %6, align 4
  %18 = call i32 @sys_gettimeofday(%struct.timeval* %3, %struct.timezone* null)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @nerrs, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @nerrs, align 4
  br label %77

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %32, i32 %34, i64 %36, i32 %38, i64 %40, i32 %42)
  %44 = call i32 @tv_leq(%struct.timeval* %1, %struct.timeval* %2)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = call i32 @tv_leq(%struct.timeval* %2, %struct.timeval* %3)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %30
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @nerrs, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @nerrs, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = getelementptr inbounds %struct.timezone, %struct.timezone* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.timezone, %struct.timezone* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.timezone, %struct.timezone* %4, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.timezone, %struct.timezone* %5, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.timezone, %struct.timezone* %4, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.timezone, %struct.timezone* %4, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %67, i64 %69)
  br label %75

71:                                               ; preds = %59, %53
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @nerrs, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @nerrs, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = call i32 @vdso_gettimeofday(%struct.timeval* %2, %struct.timezone* null)
  br label %77

77:                                               ; preds = %75, %24, %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sys_gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @vdso_gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @tv_leq(%struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
