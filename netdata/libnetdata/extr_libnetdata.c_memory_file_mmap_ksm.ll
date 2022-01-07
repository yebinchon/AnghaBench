; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_memory_file_mmap_ksm.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_memory_file_mmap_ksm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memory_file_mmap_ksm.log_madvise_2 = internal global i32 1, align 4
@memory_file_mmap_ksm.log_madvise_3 = internal global i32 1, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot read from file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot seek to beginning of file '%s'.\00", align 1
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@MADV_DONTFORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [94 x i8] c"Cannot advise the kernel about the memory usage (MADV_SEQUENTIAL|MADV_DONTFORK) of file '%s'.\00", align 1
@MADV_MERGEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [79 x i8] c"Cannot advise the kernel about the memory usage (MADV_MERGEABLE) of file '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @memory_file_mmap_ksm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @memory_file_mmap_ksm(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @memory_file_open(i8* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %19, i8** %4, align 8
  br label %95

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @PROT_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAP_ANONYMOUS, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @mmap(i32* null, i64 %22, i32 %25, i32 %28, i32 -1, i32 0)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** @MAP_FAILED, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i64 @lseek(i32 %37, i32 0, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @read(i32 %42, i8* %43, i64 %44)
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %41
  br label %55

52:                                               ; preds = %36
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @MADV_SEQUENTIAL, align 4
  %60 = load i32, i32* @MADV_DONTFORK, align 4
  %61 = or i32 %59, %60
  %62 = call i64 @madvise(i8* %57, i64 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32, i32* @memory_file_mmap_ksm.log_madvise_2, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @error(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @memory_file_mmap_ksm.log_madvise_2, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* @memory_file_mmap_ksm.log_madvise_2, align 4
  br label %72

72:                                               ; preds = %67, %64, %56
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* @MADV_MERGEABLE, align 4
  %76 = call i64 @madvise(i8* %73, i64 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* @memory_file_mmap_ksm.log_madvise_3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @memory_file_mmap_ksm.log_madvise_3, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @memory_file_mmap_ksm.log_madvise_3, align 4
  br label %86

86:                                               ; preds = %81, %78, %72
  br label %87

87:                                               ; preds = %86, %21
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @close(i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i8*, i8** %9, align 8
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %93, %18
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i32 @memory_file_open(i8*, i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @madvise(i8*, i64, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
