; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32*, i32* }

@SIV_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_siv128_decrypt(%struct.TYPE_11__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @SIV_LEN, align 4
  %29 = call i32 @memcpy(%struct.TYPE_10__* %12, i8* %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 12
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 127
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @siv128_do_encrypt(i32 %42, i8* %43, i8* %44, i64 %45, %struct.TYPE_10__* %12)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %19
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @siv128_do_s2v_p(%struct.TYPE_11__* %49, %struct.TYPE_10__* %11, i8* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %19
  store i32 0, i32* %5, align 4
  br label %101

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %78, %55
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @SIV_LEN, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, %70
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %60

81:                                               ; preds = %60
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %85, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @OPENSSL_cleanse(i8* %93, i64 %94)
  store i32 0, i32* %5, align 4
  br label %101

96:                                               ; preds = %81
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %96, %92, %54, %18
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @siv128_do_encrypt(i32, i8*, i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @siv128_do_s2v_p(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
