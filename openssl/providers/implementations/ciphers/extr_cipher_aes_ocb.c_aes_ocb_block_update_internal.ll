; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_block_update_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_ocb.c_aes_ocb_block_update_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_OUTPUT_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@PROV_R_CIPHER_OPERATION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*, i8*, i64*, i64, i8*, i64, i32 (i32*, i8*, i8*, i64)*)* @aes_ocb_block_update_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_ocb_block_update_internal(i32* %0, i8* %1, i64* %2, i8* %3, i64* %4, i64 %5, i8* %6, i64 %7, i32 (i32*, i8*, i8*, i64)* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32 (i32*, i8*, i8*, i64)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64* %2, i64** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 (i32*, i8*, i8*, i64)* %8, i32 (i32*, i8*, i8*, i64)** %19, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %25 = call i64 @fillblock(i8* %22, i64* %23, i64 %24, i8** %17, i64* %18)
  store i64 %25, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %26 = load i64*, i64** %13, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %9
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @ERR_LIB_PROV, align 4
  %36 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %37 = call i32 @ERR_raise(i32 %35, i32 %36)
  store i32 0, i32* %10, align 4
  br label %102

38:                                               ; preds = %30
  %39 = load i32 (i32*, i8*, i8*, i64)*, i32 (i32*, i8*, i8*, i64)** %19, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %44 = call i32 %39(i32* %40, i8* %41, i8* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ERR_LIB_PROV, align 4
  %48 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %49 = call i32 @ERR_raise(i32 %47, i32 %48)
  store i32 0, i32* %10, align 4
  br label %102

50:                                               ; preds = %38
  %51 = load i64*, i64** %13, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @AES_BLOCK_SIZE, align 8
  store i64 %52, i64* %21, align 8
  %53 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %14, align 8
  br label %56

56:                                               ; preds = %50, %9
  %57 = load i64, i64* %20, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* %21, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %21, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %21, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @ERR_LIB_PROV, align 4
  %68 = load i32, i32* @PROV_R_OUTPUT_BUFFER_TOO_SMALL, align 4
  %69 = call i32 @ERR_raise(i32 %67, i32 %68)
  store i32 0, i32* %10, align 4
  br label %102

70:                                               ; preds = %59
  %71 = load i32 (i32*, i8*, i8*, i64)*, i32 (i32*, i8*, i8*, i64)** %19, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i64, i64* %20, align 8
  %76 = call i32 %71(i32* %72, i8* %73, i8* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ERR_LIB_PROV, align 4
  %80 = load i32, i32* @PROV_R_CIPHER_OPERATION_FAILED, align 4
  %81 = call i32 @ERR_raise(i32 %79, i32 %80)
  store i32 0, i32* %10, align 4
  br label %102

82:                                               ; preds = %70
  %83 = load i64, i64* %20, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %17, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %18, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %18, align 8
  br label %89

89:                                               ; preds = %82, %56
  %90 = load i8*, i8** %12, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %93 = call i32 @trailingdata(i8* %90, i64* %91, i64 %92, i8** %17, i64* %18)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  br label %102

96:                                               ; preds = %89
  %97 = load i64, i64* %21, align 8
  %98 = load i64*, i64** %15, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i64, i64* %18, align 8
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %95, %78, %66, %46, %34
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i64 @fillblock(i8*, i64*, i64, i8**, i64*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @trailingdata(i8*, i64*, i64, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
