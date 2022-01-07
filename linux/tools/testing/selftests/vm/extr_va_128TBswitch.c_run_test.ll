; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_va_128TBswitch.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_va_128TBswitch.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i8*, i32, i32, i64, i32, i32 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s: %p - \00", align 1
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@ADDR_SWITCH_HINT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase*, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(%struct.testcase* %0, i32 %1) #0 {
  %3 = alloca %struct.testcase*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.testcase*, align 8
  store %struct.testcase* %0, %struct.testcase** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %72, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load %struct.testcase*, %struct.testcase** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.testcase, %struct.testcase* %14, i64 %16
  store %struct.testcase* %17, %struct.testcase** %8, align 8
  %18 = load %struct.testcase*, %struct.testcase** %8, align 8
  %19 = getelementptr inbounds %struct.testcase, %struct.testcase* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.testcase*, %struct.testcase** %8, align 8
  %22 = getelementptr inbounds %struct.testcase, %struct.testcase* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PROT_READ, align 4
  %25 = load i32, i32* @PROT_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.testcase*, %struct.testcase** %8, align 8
  %28 = getelementptr inbounds %struct.testcase, %struct.testcase* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @mmap(i32 %20, i32 %23, i32 %26, i32 %29, i32 -1, i32 0)
  store i8* %30, i8** %5, align 8
  %31 = load %struct.testcase*, %struct.testcase** %8, align 8
  %32 = getelementptr inbounds %struct.testcase, %struct.testcase* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** @MAP_FAILED, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %72

41:                                               ; preds = %13
  %42 = load %struct.testcase*, %struct.testcase** %8, align 8
  %43 = getelementptr inbounds %struct.testcase, %struct.testcase* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* @ADDR_SWITCH_HINT, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = icmp uge i8* %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %60

53:                                               ; preds = %46, %41
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.testcase*, %struct.testcase** %8, align 8
  %56 = getelementptr inbounds %struct.testcase, %struct.testcase* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memset(i8* %54, i32 0, i32 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %53, %51
  %61 = load %struct.testcase*, %struct.testcase** %8, align 8
  %62 = getelementptr inbounds %struct.testcase, %struct.testcase* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.testcase*, %struct.testcase** %8, align 8
  %68 = getelementptr inbounds %struct.testcase, %struct.testcase* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @munmap(i8* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %9

75:                                               ; preds = %9
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
