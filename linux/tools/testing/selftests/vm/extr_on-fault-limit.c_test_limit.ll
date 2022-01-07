; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_on-fault-limit.c_test_limit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_on-fault-limit.c_test_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1
@MCL_ONFAULT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mlockall\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"mmap should have failed, but didn't\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_limit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit, align 4
  %4 = alloca i8*, align 8
  store i32 1, i32* %2, align 4
  %5 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %6 = call i64 @getrlimit(i32 %5, %struct.rlimit* %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %47

11:                                               ; preds = %0
  %12 = load i32, i32* @MCL_ONFAULT, align 4
  %13 = load i32, i32* @MCL_FUTURE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @mlockall(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %47

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* @PROT_READ, align 4
  %25 = load i32, i32* @PROT_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MAP_PRIVATE, align 4
  %28 = load i32, i32* @MAP_ANONYMOUS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MAP_POPULATE, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @mmap(i32* null, i32 %23, i32 %26, i32 %31, i32 -1, i32 0)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** @MAP_FAILED, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %44

38:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 2, %41
  %43 = call i32 @munmap(i8* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %36
  %45 = call i32 (...) @munlockall()
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %44, %17, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mlockall(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @munlockall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
