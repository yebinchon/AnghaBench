; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_increase_core_file_limit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_increase_core_file_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@RLIMIT_CORE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@CORE_FILE_LIMIT = common dso_local global i64 0, align 8
@RLIMIT_FSIZE = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @increase_core_file_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @increase_core_file_limit() #0 {
  %1 = alloca %struct.rlimit, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RLIMIT_CORE, align 4
  %4 = call i32 @getrlimit(i32 %3, %struct.rlimit* %1)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @FAIL_IF(i32 %5)
  %7 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RLIM_INFINITY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RLIM_INFINITY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %30 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %23, %16
  %32 = load i32, i32* @RLIMIT_CORE, align 4
  %33 = call i32 @setrlimit(i32 %32, %struct.rlimit* %1)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @FAIL_IF(i32 %34)
  br label %36

36:                                               ; preds = %31, %11, %0
  %37 = load i32, i32* @RLIMIT_FSIZE, align 4
  %38 = call i32 @getrlimit(i32 %37, %struct.rlimit* %1)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @FAIL_IF(i32 %39)
  %41 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RLIM_INFINITY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %52 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RLIM_INFINITY, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* @CORE_FILE_LIMIT, align 8
  %64 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %57, %50
  %66 = load i32, i32* @RLIMIT_FSIZE, align 4
  %67 = call i32 @setrlimit(i32 %66, %struct.rlimit* %1)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @FAIL_IF(i32 %68)
  br label %70

70:                                               ; preds = %65, %45, %36
  %71 = load i32, i32* @TEST_PASS, align 4
  ret i32 %71
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
