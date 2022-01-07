; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_test_anon.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_test_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@segv = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Kernel page size must be 64K!\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"allocated malloc block of 0x%lx bytes at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"testing malloc block...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_anon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %7 = load i32, i32* @SA_SIGINFO, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %9 = load i32, i32* @segv, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @syscall_available()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @SKIP_IF(i32 %13)
  %15 = call i32 (...) @getpagesize()
  %16 = icmp ne i32 %15, 65536
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %45

20:                                               ; preds = %0
  %21 = load i32, i32* @SIGSEGV, align 4
  %22 = call i32 @sigaction(i32 %21, %struct.sigaction* %3, i32* null)
  store i64 67108864, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @posix_memalign(i8** %4, i32 65536, i64 %23)
  %25 = call i32 @FAIL_IF(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = and i64 %28, 65535
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i64, i64* %2, align 8
  %33 = or i64 %32, 65535
  %34 = add i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %31, %20
  %36 = load i64, i64* %2, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %38, i8* %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @run_test(i8* %42, i64 %43)
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %35, %17
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @syscall_available(...) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @posix_memalign(i8**, i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @run_test(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
