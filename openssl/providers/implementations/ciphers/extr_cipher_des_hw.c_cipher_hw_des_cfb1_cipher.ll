; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_des_hw.c_cipher_hw_des_cfb1_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_des_hw.c_cipher_hw_des_cfb1_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MAXCHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i64)* @cipher_hw_des_cfb1_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_hw_des_cfb1_cipher(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @MAXCHUNK, align 4
  %15 = sdiv i32 %14, 8
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = bitcast %struct.TYPE_7__* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32* %20, i32** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %4
  br label %27

27:                                               ; preds = %115, %26
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp uge i64 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %116

36:                                               ; preds = %34
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %97, %36
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = mul i64 %39, 8
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = udiv i64 %44, 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i64, i64* %9, align 8
  %50 = urem i64 %49, 8
  %51 = sub i64 7, %50
  %52 = trunc i64 %51 to i32
  %53 = shl i32 1, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 128, i32 0
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  store i8 %58, i8* %59, align 1
  %60 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %61 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DES_cfb_encrypt(i8* %60, i8* %61, i32 1, i32 1, i32* %62, i32* %66, i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = udiv i64 %72, 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i64, i64* %9, align 8
  %78 = urem i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = ashr i32 128, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %76, %81
  %83 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 128
  %87 = load i64, i64* %9, align 8
  %88 = urem i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = ashr i32 %86, %89
  %91 = or i32 %82, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %9, align 8
  %95 = udiv i64 %94, 8
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 %92, i8* %96, align 1
  br label %97

97:                                               ; preds = %42
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %37

100:                                              ; preds = %37
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %8, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %6, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %113, %100
  br label %27

116:                                              ; preds = %34
  ret i32 1
}

declare dso_local i32 @DES_cfb_encrypt(i8*, i8*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
