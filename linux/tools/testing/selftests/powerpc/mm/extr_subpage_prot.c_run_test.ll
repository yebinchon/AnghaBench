; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_subpage_prot.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__NR_subpage_prot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"subpage_perm\00", align 1
@in_test = common dso_local global i32 0, align 4
@errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%d errors detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = udiv i64 %11, 65536
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = mul nsw i64 %13, 4
  %15 = call i32* @malloc(i64 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @assert(i32* %16)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %39, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 1
  %25 = mul nsw i64 %24, 2
  %26 = srem i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = ashr i32 1073741824, %27
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 3
  %31 = mul nsw i64 %30, 2
  %32 = srem i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = lshr i32 -1073741824, %33
  %35 = or i32 %28, %34
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %22
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* @__NR_subpage_prot, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @syscall(i32 %43, i8* %44, i64 %45, i32* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %92

52:                                               ; preds = %42
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @free(i32* %53)
  store i32 1, i32* @in_test, align 4
  store i32 0, i32* @errors, align 4
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %82, %52
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %61, 16
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @do_read(i8* %64)
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @check_faulted(i8* %66, i64 %67, i64 %68, i32 0)
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @do_write(i8* %70)
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @check_faulted(i8* %72, i64 %73, i64 %74, i32 1)
  br label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %8, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr i8, i8* %79, i64 4096
  store i8* %80, i8** %4, align 8
  br label %60

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %55

85:                                               ; preds = %55
  store i32 0, i32* @in_test, align 4
  %86 = load i32, i32* @errors, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @errors, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 1, i32* %3, align 4
  br label %92

91:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %50
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @syscall(i32, i8*, i64, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @do_read(i8*) #1

declare dso_local i32 @check_faulted(i8*, i64, i64, i32) #1

declare dso_local i32 @do_write(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
