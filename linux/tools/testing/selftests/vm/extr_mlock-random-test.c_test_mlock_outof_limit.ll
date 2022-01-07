; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_test_mlock_outof_limit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_test_mlock_outof_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"alloc_size[%d] >%u rlimit, violates test condition\0A\00", align 1
@TEST_LOOP = common dso_local global i32 0, align 4
@MLOCK_ONFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s() succeeds? on %p(%d) mlock%p(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mlock\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mlock2\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"tests leads to new mlocked page: old[%d], new[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_mlock_outof_limit(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rlimit, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %15 = call i32 @getrlimit(i32 %14, %struct.rlimit* %10)
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  store i32 -1, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = call i32 (...) @get_proc_locked_vm_size()
  store i32 %26, i32* %9, align 4
  %27 = call i32 @time(i32* null)
  %28 = call i32 @srand(i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %88, %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TEST_LOOP, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %29
  %34 = call i32 (...) @rand()
  %35 = srem i32 %34, 2
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = call i32 (...) @rand()
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %41, %43
  %45 = srem i32 %40, %44
  %46 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %12, align 4
  %49 = call i32 (...) @rand()
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %50, %51
  %53 = srem i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %33
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @mlock(i8* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %71

63:                                               ; preds = %33
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MLOCK_ONFAULT, align 4
  %70 = call i32 @mlock2_(i8* %67, i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63, %56
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %79, i32 %80, i8* %84, i32 %85)
  store i32 -1, i32* %3, align 4
  br label %101

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %29

91:                                               ; preds = %29
  %92 = call i32 (...) @get_proc_locked_vm_size()
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98)
  store i32 -1, i32* %3, align 4
  br label %101

100:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %96, %74, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_proc_locked_vm_size(...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @mlock(i8*, i32) #1

declare dso_local i32 @mlock2_(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
