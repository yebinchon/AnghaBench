; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_is_valid_oid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_is_valid_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @is_valid_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @is_valid_oid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 48
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 49
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 50
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %3, align 8
  br label %100

25:                                               ; preds = %17, %11, %1
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 46
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %3, align 8
  br label %99

33:                                               ; preds = %25
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %3, align 8
  br label %98

40:                                               ; preds = %33
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %5, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %4, align 8
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %94, %40
  %46 = load i64, i64* %3, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ false, %45 ], [ %52, %48 ]
  br i1 %54, label %55, label %97

55:                                               ; preds = %53
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @isdigit(i8 signext %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %3, align 8
  br label %74

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %63
  br label %93

75:                                               ; preds = %55
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 46
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %3, align 8
  br label %92

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* @FALSE, align 8
  store i64 %88, i64* %3, align 8
  br label %91

89:                                               ; preds = %82
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %80
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  br label %45

97:                                               ; preds = %53
  br label %98

98:                                               ; preds = %97, %38
  br label %99

99:                                               ; preds = %98, %31
  br label %100

100:                                              ; preds = %99, %23
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
