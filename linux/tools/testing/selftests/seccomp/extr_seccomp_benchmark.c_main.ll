; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_benchmark.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_benchmark.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_filter = type { i32 }
%struct.sock_fprog = type { i16, %struct.sock_filter* }

@BPF_RET = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@SECCOMP_RET_ALLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Benchmarking %llu samples...\0A\00", align 1
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"getpid native: %llu ns\0A\00", align 1
@PR_SET_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@PR_SET_SECCOMP = common dso_local global i32 0, align 4
@SECCOMP_MODE_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"getpid RET_ALLOW: %llu ns\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Estimated seccomp overhead per syscall: %llu ns\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Trying running again with more samples.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1 x %struct.sock_filter], align 4
  %7 = alloca %struct.sock_fprog, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds [1 x %struct.sock_filter], [1 x %struct.sock_filter]* %6, i64 0, i64 0
  %13 = load i32, i32* @BPF_RET, align 4
  %14 = load i32, i32* @BPF_K, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SECCOMP_RET_ALLOW, align 4
  %17 = call i32 @BPF_STMT(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %12, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %7, i32 0, i32 0
  %20 = getelementptr inbounds [1 x %struct.sock_filter], [1 x %struct.sock_filter]* %6, i64 0, i64 0
  %21 = call i64 @ARRAY_SIZE(%struct.sock_filter* %20)
  %22 = trunc i64 %21 to i16
  store i16 %22, i16* %19, align 8
  %23 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %7, i32 0, i32 1
  %24 = getelementptr inbounds [1 x %struct.sock_filter], [1 x %struct.sock_filter]* %6, i64 0, i64 0
  store %struct.sock_filter* %24, %struct.sock_filter** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strtoull(i8* %30, i32* null, i32 0)
  store i64 %31, i64* %9, align 8
  br label %34

32:                                               ; preds = %2
  %33 = call i64 (...) @calibrate()
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i64, i64* %9, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @timing(i32 %37, i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = udiv i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @PR_SET_NO_NEW_PRIVS, align 4
  %45 = call i64 (i32, i32, %struct.sock_fprog*, ...) @prctl(i32 %44, i32 1, %struct.sock_fprog* null, i32 0, i32 0)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @PR_SET_SECCOMP, align 4
  %51 = load i32, i32* @SECCOMP_MODE_FILTER, align 4
  %52 = call i64 (i32, i32, %struct.sock_fprog*, ...) @prctl(i32 %50, i32 %51, %struct.sock_fprog* %7)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @timing(i32 %57, i64 %58)
  %60 = load i64, i64* %9, align 8
  %61 = udiv i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %64, %65
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %34
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %34
  ret i32 0
}

declare dso_local i32 @BPF_STMT(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.sock_filter*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i64 @calibrate(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @timing(i32, i64) #1

declare dso_local i64 @prctl(i32, i32, %struct.sock_fprog*, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
