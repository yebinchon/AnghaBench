; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_wrap.c_des_ede3_wrap.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_wrap.c_des_ede3_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i8*, i8*, i64)* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@TDES_IVLEN = common dso_local global i64 0, align 8
@wrap_iv = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i64)* @des_ede3_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede3_wrap(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i64, i64* @TDES_IVLEN, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* @TDES_IVLEN, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %13, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %14, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %105

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memmove(i8* %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @SHA1(i8* %39, i64 %40, i8* %19)
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @memcpy(i8* %46, i8* %19, i64 %47)
  %49 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %50 = call i32 @OPENSSL_cleanse(i8* %19, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @rand_bytes_ex(i32 %53, i8* %56, i64 %57)
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %105

61:                                               ; preds = %32
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @memcpy(i8* %62, i8* %65, i64 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_7__*, i8*, i8*, i64)*, i32 (%struct.TYPE_7__*, i8*, i8*, i64)** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %80, %81
  %83 = call i32 %72(%struct.TYPE_7__* %73, i8* %76, i8* %79, i64 %82)
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @BUF_reverse(i8* %84, i32* null, i64 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** @wrap_iv, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @memcpy(i8* %89, i8* %90, i64 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_7__*, i8*, i8*, i64)*, i32 (%struct.TYPE_7__*, i8*, i8*, i64)** %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i32 %97(%struct.TYPE_7__* %98, i8* %99, i8* %100, i64 %101)
  %103 = load i64, i64* %14, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %61, %60, %29
  %106 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @SHA1(i8*, i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i64 @rand_bytes_ex(i32, i8*, i64) #2

declare dso_local i32 @BUF_reverse(i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
