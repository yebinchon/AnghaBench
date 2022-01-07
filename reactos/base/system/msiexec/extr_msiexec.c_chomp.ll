; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_chomp.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_chomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @chomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chomp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 129, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %84, %2
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %72 [
    i32 128, label %17
    i32 129, label %30
    i32 130, label %64
  ]

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %25 [
    i32 32, label %21
    i32 34, label %22
  ]

21:                                               ; preds = %17
  br label %29

22:                                               ; preds = %17
  store i32 130, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %8, align 4
  store i32 129, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %22, %21
  br label %72

30:                                               ; preds = %14
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %42 [
    i32 34, label %34
    i32 32, label %35
  ]

34:                                               ; preds = %30
  store i32 130, i32* %5, align 4
  br label %63

35:                                               ; preds = %30
  store i32 128, i32* %5, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  store i8 0, i8* %39, align 1
  br label %41

41:                                               ; preds = %38, %35
  br label %63

42:                                               ; preds = %30
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 34
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  store i8 0, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %46, %42
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %41, %34
  br label %72

64:                                               ; preds = %14
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %69 [
    i32 34, label %68
  ]

68:                                               ; preds = %64
  store i32 129, i32* %5, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %68
  br label %72

72:                                               ; preds = %14, %71, %63, %29
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %78, %75, %72
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  br label %10

87:                                               ; preds = %10
  %88 = load i8*, i8** %4, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8*, i8** %4, align 8
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
