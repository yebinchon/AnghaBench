; ModuleID = '/home/carl/AnghaBench/php-src/ext/filter/extr_logical_filters.c__php_filter_validate_ipv4.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/filter/extr_logical_filters.c__php_filter_validate_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @_php_filter_validate_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_php_filter_validate_ipv4(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %113, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %114

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp slt i32 %23, 48
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sgt i32 %28, 57
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %115

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 48
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %76, %31
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i1 [ false, %42 ], [ %57, %56 ]
  br i1 %59, label %60, label %77

60:                                               ; preds = %58
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, 10
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 255
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = icmp sgt i32 %73, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %60
  store i32 0, i32* %4, align 4
  br label %115

76:                                               ; preds = %71
  br label %42

77:                                               ; preds = %58
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 0, i32* %4, align 4
  br label %115

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = icmp eq i8* %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %115

101:                                              ; preds = %87
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp uge i8* %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  %108 = load i8, i8* %106, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 46
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %101
  store i32 0, i32* %4, align 4
  br label %115

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  br label %16

114:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %111, %96, %86, %75, %30
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
