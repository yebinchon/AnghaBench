; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_sqr.c_bn_sqr_recursive.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_sqr.c_bn_sqr_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_SQR_RECURSIVE_SIZE_NORMAL = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_sqr_recursive(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @bn_sqr_normal(i32* %20, i32* %21, i32 4, i32* %22)
  br label %195

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @bn_sqr_normal(i32* %28, i32* %29, i32 8, i32* %30)
  br label %195

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BN_SQR_RECURSIVE_SIZE_NORMAL, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @bn_sqr_normal(i32* %38, i32* %39, i32 %40, i32* %41)
  br label %195

43:                                               ; preds = %33
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @bn_cmp_words(i32* %44, i32* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @bn_sub_words(i32* %54, i32* %55, i32* %59, i32 %60)
  br label %76

62:                                               ; preds = %43
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @bn_sub_words(i32* %66, i32* %70, i32* %71, i32 %72)
  br label %75

74:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32* %81, i32** %14, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %14, align 8
  call void @bn_sqr_recursive(i32* %88, i32* %89, i32 %90, i32* %91)
  br label %102

92:                                               ; preds = %76
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memset(i32* %96, i32 0, i32 %100)
  br label %102

102:                                              ; preds = %92, %84
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %14, align 8
  call void @bn_sqr_recursive(i32* %103, i32* %104, i32 %105, i32* %106)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32*, i32** %14, align 8
  call void @bn_sqr_recursive(i32* %110, i32* %114, i32 %115, i32* %116)
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %7, align 4
  %124 = call i64 @bn_add_words(i32* %117, i32* %118, i32* %122, i32 %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @bn_sub_words(i32* %129, i32* %130, i32* %134, i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %7, align 4
  %153 = call i64 @bn_add_words(i32* %143, i32* %147, i32* %151, i32 %152)
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %195

159:                                              ; preds = %102
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  store i32* %165, i32** %14, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* @BN_MASK2, align 4
  %172 = and i32 %170, %171
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32*, i32** %14, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %190, %178
  %180 = load i32*, i32** %14, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %14, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* @BN_MASK2, align 4
  %187 = and i32 %185, %186
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32*, i32** %14, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %179
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %179, label %193

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %193, %159
  br label %195

195:                                              ; preds = %19, %27, %37, %194, %102
  ret void
}

declare dso_local i32 @bn_sqr_normal(i32*, i32*, i32, i32*) #1

declare dso_local i32 @bn_cmp_words(i32*, i32*, i32) #1

declare dso_local i64 @bn_sub_words(i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @bn_add_words(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
