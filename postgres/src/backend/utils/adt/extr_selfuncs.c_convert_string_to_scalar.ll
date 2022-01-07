; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_string_to_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_string_to_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, double*, i8*, double*, i8*, double*)* @convert_string_to_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_string_to_scalar(i8* %0, double* %1, i8* %2, double* %3, i8* %4, double* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store double* %1, double** %8, align 8
  store i8* %2, i8** %9, align 8
  store double* %3, double** %10, align 8
  store i8* %4, i8** %11, align 8
  store double* %5, double** %12, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %14, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %15, align 8
  br label %21

21:                                               ; preds = %46, %6
  %22 = load i8*, i8** %15, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i8*, i8** %15, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %14, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8*, i8** %15, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %15, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %76, %49
  %52 = load i8*, i8** %15, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %15, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %15, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %15, align 8
  br label %51

79:                                               ; preds = %51
  %80 = load i32, i32* %13, align 4
  %81 = icmp sle i32 %80, 90
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = icmp sge i32 %83, 65
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 65
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 65, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 90
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 90, i32* %14, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %82, %79
  %95 = load i32, i32* %13, align 4
  %96 = icmp sle i32 %95, 122
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = icmp sge i32 %98, 97
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 97
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 97, i32* %13, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 122
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 122, i32* %14, align 4
  br label %108

108:                                              ; preds = %107, %104
  br label %109

109:                                              ; preds = %108, %97, %94
  %110 = load i32, i32* %13, align 4
  %111 = icmp sle i32 %110, 57
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = icmp sge i32 %113, 48
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 48
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 48, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 57
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 57, i32* %14, align 4
  br label %123

123:                                              ; preds = %122, %119
  br label %124

124:                                              ; preds = %123, %112, %109
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %125, %126
  %128 = icmp slt i32 %127, 9
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 32, i32* %13, align 4
  store i32 127, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %124
  br label %131

131:                                              ; preds = %152, %130
  %132 = load i8*, i8** %9, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8*, i8** %11, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %135
  %144 = load i8*, i8** %9, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143, %135
  br label %159

152:                                              ; preds = %143
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %7, align 8
  br label %131

159:                                              ; preds = %151, %131
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call double @convert_one_string_to_scalar(i8* %160, i32 %161, i32 %162)
  %164 = load double*, double** %8, align 8
  store double %163, double* %164, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call double @convert_one_string_to_scalar(i8* %165, i32 %166, i32 %167)
  %169 = load double*, double** %10, align 8
  store double %168, double* %169, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call double @convert_one_string_to_scalar(i8* %170, i32 %171, i32 %172)
  %174 = load double*, double** %12, align 8
  store double %173, double* %174, align 8
  ret void
}

declare dso_local double @convert_one_string_to_scalar(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
