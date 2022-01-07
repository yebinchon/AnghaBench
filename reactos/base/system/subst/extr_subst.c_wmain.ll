; ModuleID = '/home/carl/AnghaBench/reactos/base/system/subst/extr_subst.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/subst/extr_subst.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@IDS_INCORRECT_PARAMETER_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 47, i32 68, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = call i32 (...) @ConInitStdStreams()
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32**, i32*** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @_wcsicmp(i32* %17, i8* bitcast ([3 x i32]* @.str to i8*))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @StdOut, align 4
  %22 = load i32, i32* @IDS_USAGE, align 4
  %23 = call i32 @ConResPuts(i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %83

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @StdErr, align 4
  %36 = load i32, i32* @IDS_INVALID_PARAMETER, align 4
  %37 = load i32**, i32*** %5, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ConResPrintf(i32 %35, i32 %36, i32* %39)
  store i32 1, i32* %3, align 4
  br label %83

41:                                               ; preds = %31
  %42 = call i32 (...) @DumpSubstedDrives()
  store i32 0, i32* %3, align 4
  br label %83

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* @StdErr, align 4
  %48 = load i32, i32* @IDS_INCORRECT_PARAMETER_COUNT, align 4
  %49 = load i32**, i32*** %5, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ConResPrintf(i32 %47, i32 %48, i32* %51)
  store i32 1, i32* %3, align 4
  br label %83

53:                                               ; preds = %43
  %54 = load i32**, i32*** %5, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @_wcsicmp(i32* %56, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32**, i32*** %5, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @DeleteSubst(i32* %62)
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %53
  %65 = load i32**, i32*** %5, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @_wcsicmp(i32* %67, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load i32**, i32*** %5, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @DeleteSubst(i32* %73)
  store i32 %74, i32* %3, align 4
  br label %83

75:                                               ; preds = %64
  %76 = load i32**, i32*** %5, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32**, i32*** %5, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @AddSubst(i32* %78, i32* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %70, %59, %46, %41, %34, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i32 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @ConResPrintf(i32, i32, i32*) #1

declare dso_local i32 @DumpSubstedDrives(...) #1

declare dso_local i32 @DeleteSubst(i32*) #1

declare dso_local i32 @AddSubst(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
