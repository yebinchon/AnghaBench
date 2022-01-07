; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_mremap_vdso.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_mremap_vdso.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"[WARN]\09failed to fork (%d): %m\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@AT_SYSINFO_EHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\09AT_SYSINFO_EHDR is %#lx\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"[WARN]\09getauxval failed\0A\00", align 1
@SYS_exit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"[FAIL]\09mremap() of the vDSO does not work on this kernel!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"[FAIL]\09Child failed with %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = call i32 (...) @fork()
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %23, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  %24 = load i32, i32* @AT_SYSINFO_EHDR, align 4
  %25 = call i64 @getauxval(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ENOENT, align 8
  %33 = sub i64 0, %32
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %22
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %76

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %41, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i64, i64* %10, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @try_to_remap(i8* %43, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %38

49:                                               ; preds = %38
  %50 = load i32, i32* @SYS_exit, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @syscall(i32 %50, i32 %51)
  br label %75

53:                                               ; preds = %19
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @waitpid(i32 %54, i32* %12, i32 0)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @WIFEXITED(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %53
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %76

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @WEXITSTATUS(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @WEXITSTATUS(i32 %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  store i32 1, i32* %4, align 4
  br label %76

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %49
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %68, %62, %35, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @getauxval(i32) #1

declare dso_local i32 @try_to_remap(i8*, i64) #1

declare dso_local i32 @syscall(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
