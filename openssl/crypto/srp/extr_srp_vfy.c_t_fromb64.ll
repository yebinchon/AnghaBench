; ModuleID = '/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_t_fromb64.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_t_fromb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"00\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@EVP_ENCODE_CTX_USE_SRP_ALPHABET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @t_fromb64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_fromb64(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br label %29

29:                                               ; preds = %24, %19, %14
  %30 = phi i1 [ true, %19 ], [ true, %14 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  br label %14

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = and i64 %37, 3
  %39 = sub i64 4, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = and i64 %40, 3
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @INT_MAX, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = udiv i64 %48, 4
  %50 = mul i64 %49, 3
  %51 = load i64, i64* %6, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %34
  store i32 -1, i32* %4, align 4
  br label %129

54:                                               ; preds = %45
  %55 = call i32* (...) @EVP_ENCODE_CTX_new()
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %129

59:                                               ; preds = %54
  %60 = load i64, i64* %12, align 8
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 -1, i32* %9, align 4
  br label %125

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @EVP_DecodeInit(i32* %64)
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* @EVP_ENCODE_CTX_USE_SRP_ALPHABET, align 4
  %68 = call i32 @evp_encode_ctx_set_flags(i32* %66, i32 %67)
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load i32*, i32** %8, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @EVP_DecodeUpdate(i32* %72, i8* %73, i32* %9, i8* %74, i64 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 -1, i32* %9, align 4
  br label %125

79:                                               ; preds = %71, %63
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @EVP_DecodeUpdate(i32* %80, i8* %81, i32* %10, i8* %82, i64 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 -1, i32* %9, align 4
  br label %125

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = call i32 @EVP_DecodeFinal(i32* %91, i8* %95, i32* %10)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %87
  %103 = load i64, i64* %12, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 -1, i32* %9, align 4
  br label %125

108:                                              ; preds = %102
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %12, align 8
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memmove(i8* %109, i8* %112, i32 %117)
  %119 = load i64, i64* %12, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %108, %87
  br label %125

125:                                              ; preds = %124, %107, %86, %78, %62
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @EVP_ENCODE_CTX_free(i32* %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %58, %53
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @EVP_ENCODE_CTX_new(...) #1

declare dso_local i32 @EVP_DecodeInit(i32*) #1

declare dso_local i32 @evp_encode_ctx_set_flags(i32*, i32) #1

declare dso_local i64 @EVP_DecodeUpdate(i32*, i8*, i32*, i8*, i64) #1

declare dso_local i32 @EVP_DecodeFinal(i32*, i8*, i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @EVP_ENCODE_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
