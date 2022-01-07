; ModuleID = '/home/carl/AnghaBench/openssl/crypto/des/extr_cfb64enc.c_DES_cfb64_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/des/extr_cfb64enc.c_DES_cfb64_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_cfb64_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8** %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca [2 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %17, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i8**, i8*** %12, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8* %28, i8** %20, align 8
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %7
  br label %32

32:                                               ; preds = %70, %31
  %33 = load i64, i64* %17, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %17, align 8
  %35 = icmp ne i64 %33, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i8*, i8** %20, align 8
  %41 = load i8, i8* %15, align 1
  %42 = call i32 @c2l(i8* %40, i8 zeroext %41)
  %43 = load i8, i8* %15, align 1
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %20, align 8
  %46 = load i8, i8* %16, align 1
  %47 = call i32 @c2l(i8* %45, i8 zeroext %46)
  %48 = load i8, i8* %16, align 1
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @DES_ENCRYPT, align 4
  %53 = call i32 @DES_encrypt1(i8* %50, i32* %51, i32 %52)
  %54 = load i8**, i8*** %12, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8* %56, i8** %20, align 8
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %15, align 1
  %59 = load i8, i8* %15, align 1
  %60 = load i8*, i8** %20, align 8
  %61 = call i32 @l2c(i8 zeroext %59, i8* %60)
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %15, align 1
  %64 = load i8, i8* %15, align 1
  %65 = load i8*, i8** %20, align 8
  %66 = call i32 @l2c(i8 zeroext %64, i8* %65)
  %67 = load i8**, i8*** %12, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8* %69, i8** %20, align 8
  br label %70

70:                                               ; preds = %39, %36
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** %20, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = xor i32 %74, %80
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %21, align 1
  %83 = load i8, i8* %21, align 1
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i8, i8* %21, align 1
  %87 = load i8*, i8** %20, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  %93 = and i32 %92, 7
  store i32 %93, i32* %18, align 4
  br label %32

94:                                               ; preds = %32
  br label %160

95:                                               ; preds = %7
  br label %96

96:                                               ; preds = %134, %95
  %97 = load i64, i64* %17, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %17, align 8
  %99 = icmp ne i64 %97, 0
  br i1 %99, label %100, label %159

100:                                              ; preds = %96
  %101 = load i32, i32* %18, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %100
  %104 = load i8*, i8** %20, align 8
  %105 = load i8, i8* %15, align 1
  %106 = call i32 @c2l(i8* %104, i8 zeroext %105)
  %107 = load i8, i8* %15, align 1
  %108 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 %107, i8* %108, align 1
  %109 = load i8*, i8** %20, align 8
  %110 = load i8, i8* %16, align 1
  %111 = call i32 @c2l(i8* %109, i8 zeroext %110)
  %112 = load i8, i8* %16, align 1
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  store i8 %112, i8* %113, align 1
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* @DES_ENCRYPT, align 4
  %117 = call i32 @DES_encrypt1(i8* %114, i32* %115, i32 %116)
  %118 = load i8**, i8*** %12, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8* %120, i8** %20, align 8
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %15, align 1
  %123 = load i8, i8* %15, align 1
  %124 = load i8*, i8** %20, align 8
  %125 = call i32 @l2c(i8 zeroext %123, i8* %124)
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %15, align 1
  %128 = load i8, i8* %15, align 1
  %129 = load i8*, i8** %20, align 8
  %130 = call i32 @l2c(i8 zeroext %128, i8* %129)
  %131 = load i8**, i8*** %12, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  store i8* %133, i8** %20, align 8
  br label %134

134:                                              ; preds = %103, %100
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  %137 = load i8, i8* %135, align 1
  store i8 %137, i8* %22, align 1
  %138 = load i8*, i8** %20, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %21, align 1
  %143 = load i8, i8* %22, align 1
  %144 = load i8*, i8** %20, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 %143, i8* %147, align 1
  %148 = load i8, i8* %21, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* %22, align 1
  %151 = zext i8 %150 to i32
  %152 = xor i32 %149, %151
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %9, align 8
  store i8 %153, i8* %154, align 1
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  %158 = and i32 %157, 7
  store i32 %158, i32* %18, align 4
  br label %96

159:                                              ; preds = %96
  br label %160

160:                                              ; preds = %159, %94
  store i8 0, i8* %22, align 1
  store i8 0, i8* %21, align 1
  %161 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  store i8 0, i8* %161, align 1
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %162, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %15, align 1
  %163 = load i32, i32* %18, align 4
  %164 = load i32*, i32** %13, align 8
  store i32 %163, i32* %164, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i8 zeroext) #1

declare dso_local i32 @DES_encrypt1(i8*, i32*, i32) #1

declare dso_local i32 @l2c(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
