; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_hugetlb_vs_thp_test.c_test_body.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_hugetlb_vs_thp_test.c_test_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_HUGETLB = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"munmap\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Mapping failed @ %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* inttoptr (i64 2684354560 to i8*), i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @SIZE, align 4
  %6 = load i32, i32* @PROT_READ, align 4
  %7 = load i32, i32* @PROT_WRITE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MAP_HUGETLB, align 4
  %10 = load i32, i32* @MAP_ANONYMOUS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MAP_PRIVATE, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @mmap(i8* %4, i32 %5, i32 %8, i32 %13, i32 -1, i32 0)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** @MAP_FAILED, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %0
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @SIZE, align 4
  %21 = call i64 @munmap(i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %48

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @SIZE, align 4
  %29 = load i32, i32* @PROT_READ, align 4
  %30 = load i32, i32* @PROT_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MAP_ANONYMOUS, align 4
  %33 = load i32, i32* @MAP_PRIVATE, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @mmap(i8* %27, i32 %28, i32 %31, i32 %34, i32 -1, i32 0)
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** @MAP_FAILED, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %48

43:                                               ; preds = %26
  %44 = load i8*, i8** %3, align 8
  store i8 15, i8* %44, align 1
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* @SIZE, align 4
  %47 = call i64 @munmap(i8* %45, i32 %46)
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %43, %39, %23
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @munmap(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
