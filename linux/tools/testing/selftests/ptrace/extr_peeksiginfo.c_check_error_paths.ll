; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_peeksiginfo.c_check_error_paths.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ptrace/extr_peeksiginfo.c_check_error_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_peeksiginfo_args = type { i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"mmap() failed: %m\0A\00", align 1
@MAP_FIXED = common dso_local global i32 0, align 4
@SIGNR = common dso_local global i32 0, align 4
@PTRACE_PEEKSIGINFO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"sys_ptrace() returns %d (expected -1), errno %d (expected %d): %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"sys_ptrace() returns %d (expected 2): %m\0A\00", align 1
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_error_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_error_paths(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptrace_peeksiginfo_args, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 2, %9
  %11 = load i32, i32* @PROT_READ, align 4
  %12 = load i32, i32* @PROT_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAP_PRIVATE, align 4
  %15 = load i32, i32* @MAP_ANONYMOUS, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @mmap(i8* null, i32 %10, i32 %13, i32 %16, i32 -1, i32 0)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** @MAP_FAILED, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %96

23:                                               ; preds = %1
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @PROT_READ, align 4
  %30 = load i32, i32* @MAP_PRIVATE, align 4
  %31 = load i32, i32* @MAP_ANONYMOUS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MAP_FIXED, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @mmap(i8* %27, i32 %28, i32 %29, i32 %34, i32 -1, i32 0)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** @MAP_FAILED, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %90

41:                                               ; preds = %23
  %42 = load i32, i32* @SIGNR, align 4
  %43 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %4, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %4, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %4, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load i32, i32* @PTRACE_PEEKSIGINFO, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @sys_ptrace(i32 %46, i32 %47, %struct.ptrace_peeksiginfo_args* %4, i8* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EINVAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EINVAL, align 8
  %60 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %58, i64 %59)
  br label %90

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %4, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @PTRACE_PEEKSIGINFO, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr i8, i8* %65, i64 -8
  %67 = call i32 @sys_ptrace(i32 %63, i32 %64, %struct.ptrace_peeksiginfo_args* %4, i8* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %90

73:                                               ; preds = %61
  %74 = load i32, i32* @PTRACE_PEEKSIGINFO, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @sys_ptrace(i32 %74, i32 %75, %struct.ptrace_peeksiginfo_args* %4, i8* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EFAULT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EFAULT, align 8
  %88 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %86, i64 %87)
  br label %90

89:                                               ; preds = %80, %73
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %84, %70, %56, %39
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = mul nsw i32 2, %92
  %94 = call i32 @munmap(i8* %91, i32 %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %21
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @sys_ptrace(i32, i32, %struct.ptrace_peeksiginfo_args*, i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
