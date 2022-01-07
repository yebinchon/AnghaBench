; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_mremap_vdso.c_try_to_remap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_mremap_vdso.c_try_to_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_NONE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"[WARN]\09mmap failed (%d): %m\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"[NOTE]\09Moving vDSO: [%p, %#lx] -> [%p, %#lx]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@MREMAP_FIXED = common dso_local global i32 0, align 4
@MREMAP_MAYMOVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"[NOTE]\09vDSO partial move failed, will try with bigger size\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[FAIL]\09mremap failed (%d): %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @try_to_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_remap(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @PROT_NONE, align 4
  %10 = load i32, i32* @MAP_PRIVATE, align 4
  %11 = load i32, i32* @MAP_ANONYMOUS, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @mmap(i32 0, i64 %8, i32 %9, i32 %12, i32 -1, i32 0)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** @MAP_FAILED, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %23, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %21, i64 %25, i8* %26, i64 %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fflush(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @MREMAP_FIXED, align 4
  %38 = load i32, i32* @MREMAP_MAYMOVE, align 4
  %39 = or i32 %37, %38
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @mremap(i8* %34, i64 %35, i64 %36, i32 %39, i8* %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %57

45:                                               ; preds = %20
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @munmap(i8* %46, i64 %47)
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %52, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @mremap(i8*, i64, i64, i32, i8*) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
