; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_is_legal_utf8.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_is_legal_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @is_legal_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_legal_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* null, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 0, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %121

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %20 [
    i32 4, label %21
    i32 3, label %33
    i32 2, label %45
    i32 1, label %103
  ]

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %121

21:                                               ; preds = %14
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %29, 191
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %21
  store i32 0, i32* %3, align 4
  br label %121

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %14, %32
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 128
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sgt i32 %41, 191
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33
  store i32 0, i32* %3, align 4
  br label %121

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %14, %44
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %6, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %92 [
    i32 224, label %52
    i32 237, label %62
    i32 240, label %72
    i32 244, label %82
  ]

52:                                               ; preds = %45
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %54, 160
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sgt i32 %58, 191
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  store i32 0, i32* %3, align 4
  br label %121

61:                                               ; preds = %56
  br label %102

62:                                               ; preds = %45
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sgt i32 %68, 159
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  store i32 0, i32* %3, align 4
  br label %121

71:                                               ; preds = %66
  br label %102

72:                                               ; preds = %45
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp slt i32 %74, 144
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %6, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sgt i32 %78, 191
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  store i32 0, i32* %3, align 4
  br label %121

81:                                               ; preds = %76
  br label %102

82:                                               ; preds = %45
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp slt i32 %84, 128
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8, i8* %6, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sgt i32 %88, 143
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %82
  store i32 0, i32* %3, align 4
  br label %121

91:                                               ; preds = %86
  br label %102

92:                                               ; preds = %45
  %93 = load i8, i8* %6, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp slt i32 %94, 128
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8, i8* %6, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sgt i32 %98, 191
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  store i32 0, i32* %3, align 4
  br label %121

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %91, %81, %71, %61
  br label %103

103:                                              ; preds = %14, %102
  %104 = load i8*, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sge i32 %106, 128
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp slt i32 %111, 194
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %121

114:                                              ; preds = %108, %103
  br label %115

115:                                              ; preds = %114
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp sle i32 %118, 244
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %113, %100, %90, %80, %70, %60, %43, %31, %20, %13
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
