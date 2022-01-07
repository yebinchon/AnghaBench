; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_apply_business_day_roll.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_apply_business_day_roll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_DATETIME_NAT = common dso_local global i64 0, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NaT input in busday_offset\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Non-business day date in busday_offset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i32*, i32, i64*, i64*, i64*)* @apply_business_day_roll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_business_day_roll(i64 %0, i64* %1, i32* %2, i32 %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %7
  %23 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %24 = load i64*, i64** %10, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @PyExc_ValueError, align 4
  %29 = call i32 @PyErr_SetString(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %187

30:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %187

31:                                               ; preds = %7
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @get_day_of_week(i64 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i64*, i64** %13, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %14, align 8
  %43 = load i64*, i64** %15, align 8
  %44 = call i64 @is_holiday(i64 %41, i64* %42, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %182

46:                                               ; preds = %40, %31
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %17, align 8
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %181 [
    i32 133, label %50
    i32 132, label %50
    i32 129, label %112
    i32 131, label %112
    i32 130, label %174
    i32 128, label %176
  ]

50:                                               ; preds = %46, %46
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58
  %60 = load i64*, i64** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %14, align 8
  %69 = load i64*, i64** %15, align 8
  %70 = call i64 @is_holiday(i64 %67, i64* %68, i64* %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %66, %59
  %73 = phi i1 [ true, %59 ], [ %71, %66 ]
  br i1 %73, label %51, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 132
  br i1 %76, label %77, label %111

77:                                               ; preds = %74
  %78 = load i64, i64* %17, align 8
  %79 = call i32 @days_to_month_number(i64 %78)
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @days_to_month_number(i64 %80)
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %77
  %84 = load i64, i64* %17, align 8
  store i64 %84, i64* %9, align 8
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %107, %83
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %9, align 8
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %16, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 6, i32* %16, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93
  %95 = load i64*, i64** %13, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %94
  %102 = load i64, i64* %9, align 8
  %103 = load i64*, i64** %14, align 8
  %104 = load i64*, i64** %15, align 8
  %105 = call i64 @is_holiday(i64 %102, i64* %103, i64* %104)
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %101, %94
  %108 = phi i1 [ true, %94 ], [ %106, %101 ]
  br i1 %108, label %86, label %109

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %77
  br label %111

111:                                              ; preds = %110, %74
  br label %181

112:                                              ; preds = %46, %46
  br label %113

113:                                              ; preds = %134, %112
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %9, align 8
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %16, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 6, i32* %16, align 4
  br label %120

120:                                              ; preds = %119, %113
  br label %121

121:                                              ; preds = %120
  %122 = load i64*, i64** %13, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %121
  %129 = load i64, i64* %9, align 8
  %130 = load i64*, i64** %14, align 8
  %131 = load i64*, i64** %15, align 8
  %132 = call i64 @is_holiday(i64 %129, i64* %130, i64* %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %128, %121
  %135 = phi i1 [ true, %121 ], [ %133, %128 ]
  br i1 %135, label %113, label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 131
  br i1 %138, label %139, label %173

139:                                              ; preds = %136
  %140 = load i64, i64* %17, align 8
  %141 = call i32 @days_to_month_number(i64 %140)
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @days_to_month_number(i64 %142)
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %139
  %146 = load i64, i64* %17, align 8
  store i64 %146, i64* %9, align 8
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %169, %145
  %149 = load i64, i64* %9, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %9, align 8
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  %153 = icmp eq i32 %152, 7
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %154, %148
  br label %156

156:                                              ; preds = %155
  %157 = load i64*, i64** %13, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = load i64, i64* %9, align 8
  %165 = load i64*, i64** %14, align 8
  %166 = load i64*, i64** %15, align 8
  %167 = call i64 @is_holiday(i64 %164, i64* %165, i64* %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %163, %156
  %170 = phi i1 [ true, %156 ], [ %168, %163 ]
  br i1 %170, label %148, label %171

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %136
  br label %181

174:                                              ; preds = %46
  %175 = load i64, i64* @NPY_DATETIME_NAT, align 8
  store i64 %175, i64* %9, align 8
  br label %181

176:                                              ; preds = %46
  %177 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %178 = load i64*, i64** %10, align 8
  store i64 %177, i64* %178, align 8
  %179 = load i32, i32* @PyExc_ValueError, align 4
  %180 = call i32 @PyErr_SetString(i32 %179, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %187

181:                                              ; preds = %46, %174, %173, %111
  br label %182

182:                                              ; preds = %181, %40
  %183 = load i64, i64* %9, align 8
  %184 = load i64*, i64** %10, align 8
  store i64 %183, i64* %184, align 8
  %185 = load i32, i32* %16, align 4
  %186 = load i32*, i32** %11, align 8
  store i32 %185, i32* %186, align 4
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %182, %176, %30, %27
  %188 = load i32, i32* %8, align 4
  ret i32 %188
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @get_day_of_week(i64) #1

declare dso_local i64 @is_holiday(i64, i64*, i64*) #1

declare dso_local i32 @days_to_month_number(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
