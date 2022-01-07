; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_wrap.c_des_ede3_unwrap.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_wrap.c_des_ede3_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*, i8*, i32)* }

@TDES_IVLEN = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@wrap_iv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*, i64)* @des_ede3_unwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede3_unwrap(%struct.TYPE_10__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @TDES_IVLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i32 -1, i32* %14, align 4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %148

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %30, 16
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %148

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @wrap_iv, align 4
  %38 = call i32 @memcpy(i8* %36, i32 %37, i32 8)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 %43(%struct.TYPE_10__* %44, i8* %45, i8* %46, i32 8)
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %33
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, 8
  %57 = call i32 @memmove(i8* %52, i8* %54, i64 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -8
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %51, %33
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = call i32 %65(%struct.TYPE_10__* %66, i8* %67, i8* %69, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 -8
  %84 = call i32 %78(%struct.TYPE_10__* %79, i8* %19, i8* %83, i32 8)
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %86 = call i32 @BUF_reverse(i8* %85, i8* null, i32 8)
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, 16
  %90 = trunc i64 %89 to i32
  %91 = call i32 @BUF_reverse(i8* %87, i8* null, i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @BUF_reverse(i8* %94, i8* %19, i32 8)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i64, i64* %9, align 8
  %105 = sub i64 %104, 16
  %106 = trunc i64 %105 to i32
  %107 = call i32 %100(%struct.TYPE_10__* %101, i8* %102, i8* %103, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_10__*, i8*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i8*, i32)** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %116 = call i32 %112(%struct.TYPE_10__* %113, i8* %114, i8* %115, i32 8)
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub i64 %118, 16
  %120 = call i32 @SHA1(i8* %117, i64 %119, i8* %22)
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %122 = call i32 @CRYPTO_memcmp(i8* %22, i8* %121, i32 8)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %60
  %125 = load i64, i64* %9, align 8
  %126 = sub i64 %125, 16
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %124, %60
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %130 = call i32 @OPENSSL_cleanse(i8* %129, i64 8)
  %131 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 @OPENSSL_cleanse(i8* %22, i64 %132)
  %134 = call i32 @OPENSSL_cleanse(i8* %19, i64 8)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @OPENSSL_cleanse(i8* %137, i64 8)
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %146

141:                                              ; preds = %128
  %142 = load i8*, i8** %7, align 8
  %143 = load i64, i64* %9, align 8
  %144 = sub i64 %143, 16
  %145 = call i32 @OPENSSL_cleanse(i8* %142, i64 %144)
  br label %146

146:                                              ; preds = %141, %128
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %148

148:                                              ; preds = %146, %29, %25
  %149 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @BUF_reverse(i8*, i8*, i32) #2

declare dso_local i32 @SHA1(i8*, i64, i8*) #2

declare dso_local i32 @CRYPTO_memcmp(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
