; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_test_mlock_within_limit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_test_mlock_within_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"alloc_size[%d] < %u rlimit,lead to mlock failure\0A\00", align 1
@TEST_LOOP = common dso_local global i32 0, align 4
@MLOCK_ONFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s() failure at |%p(%d)| mlock:|%p(%d)|\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mlock\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mlock2\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot get proc MMUPageSize\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"test_mlock_within_limit() left VmLck:%d on %d chunk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_mlock_within_limit(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rlimit, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %15 = call i32 @getrlimit(i32 %14, %struct.rlimit* %9)
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %9, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  store i32 -1, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = call i32 @time(i32* null)
  %27 = call i32 @srand(i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %82, %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TEST_LOOP, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %28
  %33 = call i32 (...) @rand()
  %34 = srem i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = call i32 (...) @rand()
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = call i32 (...) @rand()
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %43, %44
  %46 = srem i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %32
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @mlock(i8* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %64

56:                                               ; preds = %32
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @MLOCK_ONFAULT, align 4
  %63 = call i32 @mlock2_(i8* %60, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56, %49
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %72, i32 %73, i8* %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %107

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %28

85:                                               ; preds = %28
  %86 = call i32 (...) @get_proc_locked_vm_size()
  store i32 %86, i32* %8, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = call i32 @get_proc_page_size(i64 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %107

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @PAGE_ALIGN(i32 %96, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = icmp sgt i32 %95, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %104)
  store i32 -1, i32* %3, align 4
  br label %107

106:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %102, %92, %67, %20
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @mlock(i8*, i32) #1

declare dso_local i32 @mlock2_(i8*, i32, i32) #1

declare dso_local i32 @get_proc_locked_vm_size(...) #1

declare dso_local i32 @get_proc_page_size(i64) #1

declare dso_local i32 @PAGE_ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
