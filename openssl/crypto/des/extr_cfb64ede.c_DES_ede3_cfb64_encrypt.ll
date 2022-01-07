; ModuleID = '/home/carl/AnghaBench/openssl/crypto/des/extr_cfb64ede.c_DES_ede3_cfb64_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/des/extr_cfb64ede.c_DES_ede3_cfb64_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ede3_cfb64_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5, i8** %6, i32* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca [2 x i8], align 1
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %27 = load i64, i64* %12, align 8
  store i64 %27, i64* %21, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %22, align 4
  %30 = load i8**, i8*** %16, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8* %32, i8** %24, align 8
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %9
  br label %36

36:                                               ; preds = %75, %35
  %37 = load i64, i64* %21, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %21, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load i32, i32* %22, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load i8*, i8** %24, align 8
  %45 = load i8, i8* %19, align 1
  %46 = call i32 @c2l(i8* %44, i8 zeroext %45)
  %47 = load i8*, i8** %24, align 8
  %48 = load i8, i8* %20, align 1
  %49 = call i32 @c2l(i8* %47, i8 zeroext %48)
  %50 = load i8, i8* %19, align 1
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  store i8 %50, i8* %51, align 1
  %52 = load i8, i8* %20, align 1
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @DES_encrypt3(i8* %54, i32* %55, i32* %56, i32* %57)
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %19, align 1
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 1
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %20, align 1
  %63 = load i8**, i8*** %16, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8* %65, i8** %24, align 8
  %66 = load i8, i8* %19, align 1
  %67 = load i8*, i8** %24, align 8
  %68 = call i32 @l2c(i8 zeroext %66, i8* %67)
  %69 = load i8, i8* %20, align 1
  %70 = load i8*, i8** %24, align 8
  %71 = call i32 @l2c(i8 zeroext %69, i8* %70)
  %72 = load i8**, i8*** %16, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8* %74, i8** %24, align 8
  br label %75

75:                                               ; preds = %43, %40
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %24, align 8
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = xor i32 %79, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %25, align 1
  %88 = load i8, i8* %25, align 1
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i8, i8* %25, align 1
  %92 = load i8*, i8** %24, align 8
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 %91, i8* %95, align 1
  %96 = load i32, i32* %22, align 4
  %97 = add nsw i32 %96, 1
  %98 = and i32 %97, 7
  store i32 %98, i32* %22, align 4
  br label %36

99:                                               ; preds = %36
  br label %166

100:                                              ; preds = %9
  br label %101

101:                                              ; preds = %140, %100
  %102 = load i64, i64* %21, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %21, align 8
  %104 = icmp ne i64 %102, 0
  br i1 %104, label %105, label %165

105:                                              ; preds = %101
  %106 = load i32, i32* %22, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %105
  %109 = load i8*, i8** %24, align 8
  %110 = load i8, i8* %19, align 1
  %111 = call i32 @c2l(i8* %109, i8 zeroext %110)
  %112 = load i8*, i8** %24, align 8
  %113 = load i8, i8* %20, align 1
  %114 = call i32 @c2l(i8* %112, i8 zeroext %113)
  %115 = load i8, i8* %19, align 1
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  store i8 %115, i8* %116, align 1
  %117 = load i8, i8* %20, align 1
  %118 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 1
  store i8 %117, i8* %118, align 1
  %119 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %120 = load i32*, i32** %13, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @DES_encrypt3(i8* %119, i32* %120, i32* %121, i32* %122)
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %19, align 1
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %20, align 1
  %128 = load i8**, i8*** %16, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  store i8* %130, i8** %24, align 8
  %131 = load i8, i8* %19, align 1
  %132 = load i8*, i8** %24, align 8
  %133 = call i32 @l2c(i8 zeroext %131, i8* %132)
  %134 = load i8, i8* %20, align 1
  %135 = load i8*, i8** %24, align 8
  %136 = call i32 @l2c(i8 zeroext %134, i8* %135)
  %137 = load i8**, i8*** %16, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  store i8* %139, i8** %24, align 8
  br label %140

140:                                              ; preds = %108, %105
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %10, align 8
  %143 = load i8, i8* %141, align 1
  store i8 %143, i8* %26, align 1
  %144 = load i8*, i8** %24, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  store i8 %148, i8* %25, align 1
  %149 = load i8, i8* %26, align 1
  %150 = load i8*, i8** %24, align 8
  %151 = load i32, i32* %22, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 %149, i8* %153, align 1
  %154 = load i8, i8* %25, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* %26, align 1
  %157 = zext i8 %156 to i32
  %158 = xor i32 %155, %157
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %11, align 8
  store i8 %159, i8* %160, align 1
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %162, 1
  %164 = and i32 %163, 7
  store i32 %164, i32* %22, align 4
  br label %101

165:                                              ; preds = %101
  br label %166

166:                                              ; preds = %165, %99
  store i8 0, i8* %26, align 1
  store i8 0, i8* %25, align 1
  %167 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 1
  store i8 0, i8* %167, align 1
  %168 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %168, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %19, align 1
  %169 = load i32, i32* %22, align 4
  %170 = load i32*, i32** %17, align 8
  store i32 %169, i32* %170, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i8 zeroext) #1

declare dso_local i32 @DES_encrypt3(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @l2c(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
