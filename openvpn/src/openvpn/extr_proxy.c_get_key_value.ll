; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_get_key_value.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_get_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i8**)* @get_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_value(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %14, align 4
  br label %19

19:                                               ; preds = %35, %6
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 61
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %30, 0
  br label %33

33:                                               ; preds = %29, %24, %19
  %34 = phi i1 [ false, %24 ], [ false, %19 ], [ %32, %29 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8, i8* %36, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  store i8 %38, i8* %39, align 1
  br label %19

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 61, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %108

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 34, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  store i32 1, i32* %15, align 4
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %101, %57
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %14, align 4
  %68 = icmp ne i32 %66, 0
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i1 [ false, %60 ], [ %68, %65 ]
  br i1 %70, label %71, label %104

71:                                               ; preds = %69
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %96 [
    i32 92, label %75
    i32 44, label %82
    i32 13, label %87
    i32 10, label %87
    i32 34, label %88
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  store i32 1, i32* %16, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  store i8 92, i8* %79, align 1
  br label %101

81:                                               ; preds = %75
  br label %96

82:                                               ; preds = %71
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %101

86:                                               ; preds = %82
  br label %96

87:                                               ; preds = %71, %71
  store i32 0, i32* %14, align 4
  br label %101

88:                                               ; preds = %71
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %14, align 4
  br label %101

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %71, %95, %86, %81
  store i32 0, i32* %16, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  store i8 %98, i8* %99, align 1
  br label %101

101:                                              ; preds = %96, %94, %87, %85, %78
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  br label %60

104:                                              ; preds = %69
  %105 = load i8*, i8** %10, align 8
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i8**, i8*** %13, align 8
  store i8* %106, i8** %107, align 8
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %48
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
