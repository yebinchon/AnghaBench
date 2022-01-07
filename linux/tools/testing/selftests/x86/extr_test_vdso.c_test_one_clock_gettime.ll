; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vdso.c_test_one_clock_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vdso.c_test_one_clock_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"[RUN]\09Testing clock_gettime for clock %s (%d)...\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"[OK]\09No such clock.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"[FAIL]\09No such clock, but __vdso_clock_gettime returned %d\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"[WARN]\09 clock_gettime(%d) syscall returned error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"[FAIL]\09vDSO returned %d, syscall errno=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\09%llu.%09ld %llu.%09ld %llu.%09ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"[FAIL]\09Times are out of sequence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_one_clock_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_one_clock_gettime(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sys_clock_gettime(i32 %13, %struct.timespec* %5)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @vdso_clock_gettime(i32 %21, %struct.timespec* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @nerrs, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @nerrs, align 4
  br label %34

34:                                               ; preds = %29, %27
  br label %39

35:                                               ; preds = %16
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %34
  br label %79

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @vdso_clock_gettime(i32 %41, %struct.timespec* %6)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @sys_clock_gettime(i32 %43, %struct.timespec* %7)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47, %40
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @nerrs, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @nerrs, align 4
  br label %79

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %58, i32 %60, i64 %62, i32 %64, i64 %66, i32 %68)
  %70 = call i32 @ts_leq(%struct.timespec* %5, %struct.timespec* %6)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = call i32 @ts_leq(%struct.timespec* %6, %struct.timespec* %7)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72, %56
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32, i32* @nerrs, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @nerrs, align 4
  br label %79

79:                                               ; preds = %39, %50, %75, %72
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sys_clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @vdso_clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @ts_leq(%struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
