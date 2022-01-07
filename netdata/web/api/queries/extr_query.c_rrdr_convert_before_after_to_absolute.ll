; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_rrdr_convert_before_after_to_absolute.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_rrdr_convert_before_after_to_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@API_RELATIVE_TIME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32, i64, i64)* @rrdr_convert_before_after_to_absolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrdr_convert_before_after_to_absolute(i64* %0, i64* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %24, %21, %5
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @abs(i64 %28)
  %30 = load i32, i32* @API_RELATIVE_TIME_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @abs(i64 %33)
  %35 = load i32, i32* %8, align 4
  %36 = srem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = srem i64 %46, %48
  %50 = sub nsw i64 %45, %49
  store i64 %50, i64* %13, align 8
  br label %61

51:                                               ; preds = %38
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = srem i64 %56, %58
  %60 = sub nsw i64 %55, %59
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %51, %41
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i64, i64* %13, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %13, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %13, align 8
  br label %73

69:                                               ; preds = %62
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %69, %65
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @abs(i64 %75)
  %77 = load i32, i32* @API_RELATIVE_TIME_MAX, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %120

79:                                               ; preds = %74
  %80 = load i64, i64* %12, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 0, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @abs(i64 %87)
  %89 = load i32, i32* %8, align 4
  %90 = srem i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load i64, i64* %12, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i64, i64* %12, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = srem i64 %100, %102
  %104 = sub nsw i64 %99, %103
  store i64 %104, i64* %12, align 8
  br label %115

105:                                              ; preds = %92
  %106 = load i64, i64* %12, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = srem i64 %110, %112
  %114 = sub nsw i64 %109, %113
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %105, %95
  br label %116

116:                                              ; preds = %115, %86
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add nsw i64 %117, %118
  store i64 %119, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %116, %74
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %13, align 8
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %9, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* %9, align 8
  store i64 %135, i64* %13, align 8
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i64, i64* %10, align 8
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* %9, align 8
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %14, align 8
  %154 = load i64, i64* %12, align 8
  store i64 %154, i64* %13, align 8
  %155 = load i64, i64* %14, align 8
  store i64 %155, i64* %12, align 8
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i64, i64* %13, align 8
  %158 = load i64*, i64** %7, align 8
  store i64 %157, i64* %158, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64*, i64** %6, align 8
  store i64 %159, i64* %160, align 8
  %161 = load i32, i32* %11, align 4
  ret i32 %161
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
