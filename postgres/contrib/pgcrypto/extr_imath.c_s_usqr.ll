; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_usqr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_usqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_DIGIT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64)* @s_usqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_usqr(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %135, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %142

19:                                               ; preds = %15
  %20 = load i64*, i64** %5, align 8
  store i64* %20, i64** %10, align 8
  %21 = load i64*, i64** %4, align 8
  store i64* %21, i64** %11, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %135

26:                                               ; preds = %19
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = mul nsw i32 %29, %32
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @LOWER_HALF(i32 %38)
  %40 = load i64*, i64** %10, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @UPPER_HALF(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i64*, i64** %11, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %11, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %97, %26
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = load i64*, i64** %4, align 8
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = mul nsw i32 %56, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @HIGH_BIT_SET(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @ADD_WILL_OVERFLOW(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @LOWER_HALF(i32 %83)
  %85 = load i64*, i64** %10, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @UPPER_HALF(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @MP_DIGIT_MAX, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %8, align 8
  %100 = load i64*, i64** %11, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %11, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %10, align 8
  br label %49

104:                                              ; preds = %49
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64*, i64** %10, align 8
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %106, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64*, i64** %10, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %118, %104
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @UPPER_HALF(i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i64*, i64** %10, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %10, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %122, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i64 @LOWER_HALF(i32 %127)
  %129 = load i64*, i64** %10, align 8
  store i64 %128, i64* %129, align 8
  br label %114

130:                                              ; preds = %114
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  br label %135

135:                                              ; preds = %130, %25
  %136 = load i64, i64* %7, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %7, align 8
  %138 = load i64*, i64** %5, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 2
  store i64* %139, i64** %5, align 8
  %140 = load i64*, i64** %4, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %4, align 8
  br label %15

142:                                              ; preds = %15
  ret void
}

declare dso_local i64 @LOWER_HALF(i32) #1

declare dso_local i32 @UPPER_HALF(i32) #1

declare dso_local i64 @HIGH_BIT_SET(i32) #1

declare dso_local i64 @ADD_WILL_OVERFLOW(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
