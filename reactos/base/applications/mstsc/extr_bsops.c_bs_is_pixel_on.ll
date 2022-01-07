; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_is_pixel_on.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_is_pixel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bs_is_pixel_on(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 8
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %26, 8
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %13, align 4
  %35 = ashr i32 128, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %162

39:                                               ; preds = %5
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %43, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %162

55:                                               ; preds = %39
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 15
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %93

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %62, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %61
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, 2
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %76, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %75, %61
  %91 = phi i1 [ true, %61 ], [ %89, %75 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %162

93:                                               ; preds = %58
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 24
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %161

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %101, 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %105, 4
  %107 = add nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %100, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %158, label %113

113:                                              ; preds = %99
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %115, 4
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 %119, 4
  %121 = add nsw i32 %118, %120
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %114, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %158, label %128

128:                                              ; preds = %113
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, 4
  %132 = load i32, i32* %10, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %134, 4
  %136 = add nsw i32 %133, %135
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %129, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %128
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 %145, 4
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %8, align 4
  %150 = mul nsw i32 %149, 4
  %151 = add nsw i32 %148, %150
  %152 = add nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %144, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br label %158

158:                                              ; preds = %143, %128, %113, %99
  %159 = phi i1 [ true, %128 ], [ true, %113 ], [ true, %99 ], [ %157, %143 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %6, align 4
  br label %162

161:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %158, %90, %42, %16
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
