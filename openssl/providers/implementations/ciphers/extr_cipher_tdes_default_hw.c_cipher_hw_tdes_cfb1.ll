; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_default_hw.c_cipher_hw_tdes_cfb1.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_default_hw.c_cipher_hw_tdes_cfb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EVP_CIPH_FLAG_LENGTH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*, i64)* @cipher_hw_tdes_cfb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_hw_tdes_cfb1(%struct.TYPE_5__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = bitcast %struct.TYPE_5__* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EVP_CIPH_FLAG_LENGTH_BITS, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = mul i64 %22, 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %21, %4
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %89, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = udiv i64 %31, 8
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i64, i64* %10, align 8
  %37 = urem i64 %36, 8
  %38 = sub i64 7, %37
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 128, i32 0
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %48 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DES_ede3_cfb_encrypt(i8* %47, i8* %48, i32 1, i32 1, i32* %50, i32* %52, i32* %54, i32* %58, i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = udiv i64 %64, 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i64, i64* %10, align 8
  %70 = urem i64 %69, 8
  %71 = trunc i64 %70 to i32
  %72 = ashr i32 128, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %68, %73
  %75 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 128
  %79 = load i64, i64* %10, align 8
  %80 = urem i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = ashr i32 %78, %81
  %83 = or i32 %74, %82
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = udiv i64 %86, 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %29
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %25

92:                                               ; preds = %25
  ret i32 1
}

declare dso_local i32 @DES_ede3_cfb_encrypt(i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
