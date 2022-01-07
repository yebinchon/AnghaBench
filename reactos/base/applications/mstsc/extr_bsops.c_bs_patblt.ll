; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_patblt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_patblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_hatch_patterns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_patblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [8 x i8], align 1
  %26 = alloca i8*, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* %17, align 4
  switch i32 %27, label %68 [
    i32 0, label %28
    i32 2, label %36
    i32 3, label %46
  ]

28:                                               ; preds = %11
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %22, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @bs_rect(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  br label %68

36:                                               ; preds = %11
  %37 = load i32, i32* @g_hatch_patterns, align 4
  %38 = load i8*, i8** %18, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = mul nsw i32 %41, 8
  %43 = add nsw i32 %37, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %26, align 8
  br label %68

46:                                               ; preds = %11
  store i32 0, i32* %23, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %23, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i8*, i8** %18, align 8
  %52 = load i32, i32* %23, align 4
  %53 = sub nsw i32 7, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = xor i32 %57, -1
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %23, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %23, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %23, align 4
  br label %47

66:                                               ; preds = %47
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  store i8* %67, i8** %26, align 8
  br label %68

68:                                               ; preds = %11, %66, %36, %28
  %69 = load i8*, i8** %26, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %126

71:                                               ; preds = %68
  store i32 0, i32* %23, align 4
  br label %72

72:                                               ; preds = %122, %71
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %72
  store i32 0, i32* %24, align 4
  br label %77

77:                                               ; preds = %118, %76
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %77
  %82 = load i8*, i8** %26, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %24, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %19, align 4
  %87 = add nsw i32 %85, %86
  %88 = srem i32 %87, 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %23, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %91, %92
  %94 = srem i32 %93, 8
  %95 = call i64 @bs_is_pixel_on(i8* %82, i32 %88, i32 %94, i32 8, i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %81
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %24, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %23, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @bs_set_pixel(i32 %100, i32 %103, i32 %104, i32 %105, i32 1)
  br label %117

107:                                              ; preds = %81
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %24, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %23, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @bs_set_pixel(i32 %110, i32 %113, i32 %114, i32 %115, i32 1)
  br label %117

117:                                              ; preds = %107, %97
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %24, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %24, align 4
  br label %77

121:                                              ; preds = %77
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %23, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %23, align 4
  br label %72

125:                                              ; preds = %72
  br label %126

126:                                              ; preds = %125, %68
  ret void
}

declare dso_local i32 @bs_rect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @bs_is_pixel_on(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bs_set_pixel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
