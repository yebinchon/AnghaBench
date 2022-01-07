; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_test_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_test_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@segv = common dso_local global i32 0, align 4
@file_name = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to open file\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to map file\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"allocated %s for 0x%lx bytes at %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"testing file map...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %7 = load i32, i32* @SA_SIGINFO, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %9 = load i32, i32* @segv, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @syscall_available()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @SKIP_IF(i32 %13)
  %15 = load i8*, i8** @file_name, align 8
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %58

22:                                               ; preds = %0
  %23 = load i32, i32* @SIGSEGV, align 4
  %24 = call i32 @sigaction(i32 %23, %struct.sigaction* %2, i32* null)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SEEK_END, align 4
  %27 = call i32 @lseek(i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65535
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, -65536
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @PROT_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAP_SHARED, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @mmap(i32* null, i32 %37, i32 %40, i32 %41, i32 %42, i32 0)
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** @MAP_FAILED, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %58

49:                                               ; preds = %36
  %50 = load i8*, i8** @file_name, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51, i8* %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @run_test(i8* %55, i32 %56)
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %49, %47, %20
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @syscall_available(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @run_test(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
