; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc4_hmac_md5_hw.c_cipher_hw_rc4_hmac_md5_init_mackey.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_rc4_hmac_md5_hw.c_cipher_hw_rc4_hmac_md5_init_mackey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @cipher_hw_rc4_hmac_md5_init_mackey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cipher_hw_rc4_hmac_md5_init_mackey(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 64)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %14, 64
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @MD5_Init(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @MD5_Update(i32* %21, i8* %22, i32 %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @MD5_Final(i8* %26, i32* %28)
  br label %35

30:                                               ; preds = %3
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %30, %16
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %38, 64
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, 54
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @MD5_Init(i32* %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %58 = call i32 @MD5_Update(i32* %56, i8* %57, i32 64)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %71, %51
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %61, 64
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = xor i32 %68, 106
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %59

74:                                               ; preds = %59
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @MD5_Init(i32* %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %81 = call i32 @MD5_Update(i32* %79, i8* %80, i32 64)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %83 = call i32 @OPENSSL_cleanse(i8* %82, i32 64)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #1

declare dso_local i32 @MD5_Final(i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
