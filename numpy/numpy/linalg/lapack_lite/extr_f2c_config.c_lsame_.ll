; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_config.c_lsame_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_config.c_lsame_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lsame_.inta = internal global i32 0, align 4
@lsame_.intb = internal global i32 0, align 4
@lsame_.zcode = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsame_(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %9, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %132

19:                                               ; preds = %2
  store i32 90, i32* @lsame_.zcode, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* @lsame_.inta, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* @lsame_.intb, align 4
  %26 = load i32, i32* @lsame_.zcode, align 4
  %27 = icmp eq i32 %26, 90
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @lsame_.zcode, align 4
  %30 = icmp eq i32 %29, 122
  br i1 %30, label %31, label %50

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @lsame_.inta, align 4
  %33 = icmp sge i32 %32, 97
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @lsame_.inta, align 4
  %36 = icmp sle i32 %35, 122
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @lsame_.inta, align 4
  %39 = add nsw i32 %38, -32
  store i32 %39, i32* @lsame_.inta, align 4
  br label %40

40:                                               ; preds = %37, %34, %31
  %41 = load i32, i32* @lsame_.intb, align 4
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @lsame_.intb, align 4
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @lsame_.intb, align 4
  %48 = add nsw i32 %47, -32
  store i32 %48, i32* @lsame_.intb, align 4
  br label %49

49:                                               ; preds = %46, %43, %40
  br label %126

50:                                               ; preds = %28
  %51 = load i32, i32* @lsame_.zcode, align 4
  %52 = icmp eq i32 %51, 233
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @lsame_.zcode, align 4
  %55 = icmp eq i32 %54, 169
  br i1 %55, label %56, label %99

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @lsame_.inta, align 4
  %58 = icmp sge i32 %57, 129
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @lsame_.inta, align 4
  %61 = icmp sle i32 %60, 137
  br i1 %61, label %74, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @lsame_.inta, align 4
  %64 = icmp sge i32 %63, 145
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @lsame_.inta, align 4
  %67 = icmp sle i32 %66, 153
  br i1 %67, label %74, label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @lsame_.inta, align 4
  %70 = icmp sge i32 %69, 162
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* @lsame_.inta, align 4
  %73 = icmp sle i32 %72, 169
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %65, %59
  %75 = load i32, i32* @lsame_.inta, align 4
  %76 = add nsw i32 %75, 64
  store i32 %76, i32* @lsame_.inta, align 4
  br label %77

77:                                               ; preds = %74, %71, %68
  %78 = load i32, i32* @lsame_.intb, align 4
  %79 = icmp sge i32 %78, 129
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @lsame_.intb, align 4
  %82 = icmp sle i32 %81, 137
  br i1 %82, label %95, label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @lsame_.intb, align 4
  %85 = icmp sge i32 %84, 145
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @lsame_.intb, align 4
  %88 = icmp sle i32 %87, 153
  br i1 %88, label %95, label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @lsame_.intb, align 4
  %91 = icmp sge i32 %90, 162
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @lsame_.intb, align 4
  %94 = icmp sle i32 %93, 169
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %86, %80
  %96 = load i32, i32* @lsame_.intb, align 4
  %97 = add nsw i32 %96, 64
  store i32 %97, i32* @lsame_.intb, align 4
  br label %98

98:                                               ; preds = %95, %92, %89
  br label %125

99:                                               ; preds = %53
  %100 = load i32, i32* @lsame_.zcode, align 4
  %101 = icmp eq i32 %100, 218
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @lsame_.zcode, align 4
  %104 = icmp eq i32 %103, 250
  br i1 %104, label %105, label %124

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @lsame_.inta, align 4
  %107 = icmp sge i32 %106, 225
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* @lsame_.inta, align 4
  %110 = icmp sle i32 %109, 250
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @lsame_.inta, align 4
  %113 = add nsw i32 %112, -32
  store i32 %113, i32* @lsame_.inta, align 4
  br label %114

114:                                              ; preds = %111, %108, %105
  %115 = load i32, i32* @lsame_.intb, align 4
  %116 = icmp sge i32 %115, 225
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @lsame_.intb, align 4
  %119 = icmp sle i32 %118, 250
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @lsame_.intb, align 4
  %122 = add nsw i32 %121, -32
  store i32 %122, i32* @lsame_.intb, align 4
  br label %123

123:                                              ; preds = %120, %117, %114
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125, %49
  %127 = load i32, i32* @lsame_.inta, align 4
  %128 = load i32, i32* @lsame_.intb, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %17
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
