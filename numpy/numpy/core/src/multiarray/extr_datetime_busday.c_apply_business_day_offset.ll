; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_apply_business_day_offset.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_apply_business_day_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_DATETIME_NAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*, i32, i64*, i32, i64*, i64*)* @apply_business_day_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_business_day_offset(i64 %0, i32 %1, i64* %2, i32 %3, i64* %4, i32 %5, i64* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store i64 %0, i64* %10, align 8
  store i32 %1, i32* %11, align 4
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i64*, i64** %14, align 8
  %23 = load i64*, i64** %16, align 8
  %24 = load i64*, i64** %17, align 8
  %25 = call i64 @apply_business_day_roll(i64 %20, i64* %10, i32* %18, i32 %21, i64* %22, i64* %23, i64* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %161

28:                                               ; preds = %8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @NPY_DATETIME_NAT, align 8
  %34 = load i64*, i64** %12, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %9, align 4
  br label %161

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64*, i64** %16, align 8
  %41 = load i64*, i64** %17, align 8
  %42 = call i64* @find_earliest_holiday_on_or_after(i64 %39, i64* %40, i64* %41)
  store i64* %42, i64** %16, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sdiv i32 %43, %44
  %46 = mul nsw i32 %45, 7
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %15, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %16, align 8
  %55 = load i64*, i64** %17, align 8
  %56 = call i64* @find_earliest_holiday_after(i64 %53, i64* %54, i64* %55)
  store i64* %56, i64** %19, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = load i64*, i64** %16, align 8
  %59 = ptrtoint i64* %57 to i64
  %60 = ptrtoint i64* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i64*, i64** %19, align 8
  store i64* %67, i64** %16, align 8
  br label %68

68:                                               ; preds = %94, %38
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %10, align 8
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  %76 = icmp eq i32 %75, 7
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i64*, i64** %14, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load i64, i64* %10, align 8
  %87 = load i64*, i64** %16, align 8
  %88 = load i64*, i64** %17, align 8
  %89 = call i32 @is_holiday(i64 %86, i64* %87, i64* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %85, %78
  br label %68

95:                                               ; preds = %68
  br label %158

96:                                               ; preds = %35
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %157

99:                                               ; preds = %96
  %100 = load i64, i64* %10, align 8
  %101 = load i64*, i64** %16, align 8
  %102 = load i64*, i64** %17, align 8
  %103 = call i64* @find_earliest_holiday_after(i64 %100, i64* %101, i64* %102)
  store i64* %103, i64** %17, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sdiv i32 %104, %105
  %107 = mul nsw i32 %106, 7
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %15, align 4
  %113 = srem i32 %111, %112
  store i32 %113, i32* %11, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i64*, i64** %16, align 8
  %116 = load i64*, i64** %17, align 8
  %117 = call i64* @find_earliest_holiday_on_or_after(i64 %114, i64* %115, i64* %116)
  store i64* %117, i64** %19, align 8
  %118 = load i64*, i64** %17, align 8
  %119 = load i64*, i64** %19, align 8
  %120 = ptrtoint i64* %118 to i64
  %121 = ptrtoint i64* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %11, align 4
  %128 = load i64*, i64** %19, align 8
  store i64* %128, i64** %17, align 8
  br label %129

129:                                              ; preds = %155, %99
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %129
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %10, align 8
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %18, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 6, i32* %18, align 4
  br label %139

139:                                              ; preds = %138, %132
  %140 = load i64*, i64** %14, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = load i64, i64* %10, align 8
  %148 = load i64*, i64** %16, align 8
  %149 = load i64*, i64** %17, align 8
  %150 = call i32 @is_holiday(i64 %147, i64* %148, i64* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %152, %146, %139
  br label %129

156:                                              ; preds = %129
  br label %157

157:                                              ; preds = %156, %96
  br label %158

158:                                              ; preds = %157, %95
  %159 = load i64, i64* %10, align 8
  %160 = load i64*, i64** %12, align 8
  store i64 %159, i64* %160, align 8
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %158, %32, %27
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i64 @apply_business_day_roll(i64, i64*, i32*, i32, i64*, i64*, i64*) #1

declare dso_local i64* @find_earliest_holiday_on_or_after(i64, i64*, i64*) #1

declare dso_local i64* @find_earliest_holiday_after(i64, i64*, i64*) #1

declare dso_local i32 @is_holiday(i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
