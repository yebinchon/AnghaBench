; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_sha.c_SHA256Transform.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_sha.c_SHA256Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_K = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @SHA256Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA256Transform(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [64 x i64], align 16
  %17 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 5
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 6
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 7
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @SHADecode32(i64* %42, i8* %43, i32 64)
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %56, %2
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %54
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %45

59:                                               ; preds = %45
  store i32 16, i32* %17, align 4
  br label %60

60:                                               ; preds = %92, %59
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @SHA256_F5(i64 %68)
  %70 = load i32, i32* %17, align 4
  %71 = sub nsw i32 %70, 7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = load i32, i32* %17, align 4
  %77 = sub nsw i32 %76, 15
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @SHA256_F4(i64 %80)
  %82 = add nsw i64 %75, %81
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %83, 16
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %90
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %63
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %60

95:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %139, %95
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %97, 64
  br i1 %98, label %99, label %142

99:                                               ; preds = %96
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @SHA256_F3(i64 %101)
  %103 = add nsw i64 %100, %102
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 @SHA256_F0(i64 %104, i64 %105, i64 %106)
  %108 = add nsw i64 %103, %107
  %109 = load i64*, i64** @SHA256_K, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %108, %113
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i64], [64 x i64]* %16, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %114, %118
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @SHA256_F2(i64 %120)
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @SHA256_F1(i64 %122, i64 %123, i64 %124)
  %126 = add nsw i64 %121, %125
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %9, align 8
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %7, align 8
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %6, align 8
  store i64 %134, i64* %7, align 8
  %135 = load i64, i64* %5, align 8
  store i64 %135, i64* %6, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = add nsw i64 %136, %137
  store i64 %138, i64* %5, align 8
  br label %139

139:                                              ; preds = %99
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %96

142:                                              ; preds = %96
  %143 = load i64, i64* %5, align 8
  %144 = load i64*, i64** %3, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i64*, i64** %3, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i64, i64* %7, align 8
  %154 = load i64*, i64** %3, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 2
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64*, i64** %3, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 3
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64*, i64** %3, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 4
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load i64*, i64** %3, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 5
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64*, i64** %3, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 6
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load i64*, i64** %3, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 7
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %184 = bitcast i64* %183 to i8*
  %185 = call i32 @ZEND_SECURE_ZERO(i8* %184, i32 128)
  ret void
}

declare dso_local i32 @SHADecode32(i64*, i8*, i32) #1

declare dso_local i64 @SHA256_F5(i64) #1

declare dso_local i64 @SHA256_F4(i64) #1

declare dso_local i64 @SHA256_F3(i64) #1

declare dso_local i64 @SHA256_F0(i64, i64, i64) #1

declare dso_local i64 @SHA256_F2(i64) #1

declare dso_local i64 @SHA256_F1(i64, i64, i64) #1

declare dso_local i32 @ZEND_SECURE_ZERO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
