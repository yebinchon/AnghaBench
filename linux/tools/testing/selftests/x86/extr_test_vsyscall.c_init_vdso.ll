; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_init_vdso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_init_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"linux-vdso.so.1\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@RTLD_LOCAL = common dso_local global i32 0, align 4
@RTLD_NOLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"linux-gate.so.1\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"[WARN]\09failed to find vDSO\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"__vdso_gettimeofday\00", align 1
@vdso_gtod = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"[WARN]\09failed to find gettimeofday in vDSO\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__vdso_clock_gettime\00", align 1
@vdso_gettime = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"[WARN]\09failed to find clock_gettime in vDSO\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"__vdso_time\00", align 1
@vdso_time = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"[WARN]\09failed to find time in vDSO\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"__vdso_getcpu\00", align 1
@vdso_getcpu = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"[%s]\09failed to find getcpu in vDSO\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_vdso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vdso() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @RTLD_LAZY, align 4
  %3 = load i32, i32* @RTLD_LOCAL, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @RTLD_NOLOAD, align 4
  %6 = or i32 %4, %5
  %7 = call i8* @dlopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @RTLD_LAZY, align 4
  %12 = load i32, i32* @RTLD_LOCAL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RTLD_NOLOAD, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @dlopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i8* %16, i8** %1, align 8
  br label %17

17:                                               ; preds = %10, %0
  %18 = load i8*, i8** %1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %50

22:                                               ; preds = %17
  %23 = load i8*, i8** %1, align 8
  %24 = call i64 @dlsym(i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i64 %24, i64* @vdso_gtod, align 8
  %25 = load i64, i64* @vdso_gtod, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i8*, i8** %1, align 8
  %31 = call i64 @dlsym(i8* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i64 %31, i64* @vdso_gettime, align 8
  %32 = load i64, i64* @vdso_gettime, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i8*, i8** %1, align 8
  %38 = call i64 @dlsym(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i64 %38, i64* @vdso_time, align 8
  %39 = load i64, i64* @vdso_time, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @dlsym(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i64 %45, i64* @vdso_getcpu, align 8
  %46 = load i64, i64* @vdso_getcpu, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %50

50:                                               ; preds = %20, %48, %43
  ret void
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @dlsym(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
