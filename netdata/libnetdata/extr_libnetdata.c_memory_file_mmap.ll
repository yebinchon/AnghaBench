; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_memory_file_mmap.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_memory_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memory_file_mmap.log_madvise = internal global i32 1, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@MADV_DONTFORK = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MADV_WILLNEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot advise the kernel about shared memory usage.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @memory_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @memory_file_mmap(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @memory_file_open(i8* %14, i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %20, i8** %4, align 8
  br label %67

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @PROT_READ, align 4
  %25 = load i32, i32* @PROT_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @mmap(i32* null, i64 %23, i32 %26, i32 %27, i32 %28, i32 0)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** @MAP_FAILED, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %22
  %34 = load i32, i32* @MADV_SEQUENTIAL, align 4
  %35 = load i32, i32* @MADV_DONTFORK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MAP_SHARED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @MADV_WILLNEED, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @madvise(i8* %46, i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @memory_file_mmap.log_madvise, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @memory_file_mmap.log_madvise, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* @memory_file_mmap.log_madvise, align 4
  br label %58

58:                                               ; preds = %54, %51, %45
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i8*, i8** %9, align 8
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %65, %19
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i32 @memory_file_open(i8*, i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @madvise(i8*, i64, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
