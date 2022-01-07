; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_escape_string.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*)* @escape_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @escape_string(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %11, align 1
  %22 = load i8, i8* %11, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %48

25:                                               ; preds = %17
  %26 = load i8, i8* %11, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %11, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 34
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33, %29, %25
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %13

48:                                               ; preds = %24, %13
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %49, %50
  %52 = add i64 %51, 1
  %53 = mul i64 %52, 1
  %54 = call i8* @heap_xalloc(i64 %53)
  store i8* %54, i8** %10, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %108, %48
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %12, align 1
  %64 = load i8, i8* %12, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %113

67:                                               ; preds = %59
  %68 = load i8, i8* %12, align 1
  %69 = sext i8 %68 to i32
  switch i32 %69, label %102 [
    i32 13, label %70
    i32 10, label %78
    i32 92, label %86
    i32 34, label %94
  ]

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 92, i8* %74, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 114, i8* %77, align 1
  br label %107

78:                                               ; preds = %67
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 92, i8* %82, align 1
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8 110, i8* %85, align 1
  br label %107

86:                                               ; preds = %67
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  %90 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 92, i8* %90, align 1
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 92, i8* %93, align 1
  br label %107

94:                                               ; preds = %67
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  %98 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 92, i8* %98, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 34, i8* %101, align 1
  br label %107

102:                                              ; preds = %67
  %103 = load i8, i8* %12, align 1
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %103, i8* %106, align 1
  br label %107

107:                                              ; preds = %102, %94, %86, %78, %70
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %55

113:                                              ; preds = %66, %55
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i64, i64* %9, align 8
  %118 = load i64*, i64** %6, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i8*, i8** %10, align 8
  ret i8* %119
}

declare dso_local i8* @heap_xalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
