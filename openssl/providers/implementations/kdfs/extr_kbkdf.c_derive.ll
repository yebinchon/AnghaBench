; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FEEDBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32, i8*, i64)* @derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive(i32* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i64 %9, i32 %10, i8* %11, i64 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8, align 1
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i64 %1, i64* %15, align 8
  store i8* %2, i8** %16, align 8
  store i64 %3, i64* %17, align 8
  store i8* %4, i8** %18, align 8
  store i64 %5, i64* %19, align 8
  store i8* %6, i8** %20, align 8
  store i64 %7, i64* %21, align 8
  store i8* %8, i8** %22, align 8
  store i64 %9, i64* %23, align 8
  store i32 %10, i32* %24, align 4
  store i8* %11, i8** %25, align 8
  store i64 %12, i64* %26, align 8
  store i32 0, i32* %27, align 4
  store i32* null, i32** %28, align 8
  store i64 0, i64* %29, align 8
  %35 = load i64, i64* %17, align 8
  store i64 %35, i64* %31, align 8
  store i8 0, i8* %32, align 1
  %36 = load i64, i64* %17, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %13
  %39 = load i8*, i8** %22, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i64, i64* %17, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %13
  store i32 1, i32* %33, align 4
  br label %44

44:                                               ; preds = %121, %43
  %45 = load i64, i64* %29, align 8
  %46 = load i64, i64* %26, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %44
  %49 = load i32, i32* %33, align 4
  %50 = call i32 @be32(i32 %49)
  store i32 %50, i32* %34, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = call i32* @EVP_MAC_CTX_dup(i32* %51)
  store i32* %52, i32** %28, align 8
  %53 = load i32*, i32** %28, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %125

56:                                               ; preds = %48
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @FEEDBACK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32*, i32** %28, align 8
  %62 = load i8*, i8** %22, align 8
  %63 = load i64, i64* %31, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @EVP_MAC_update(i32* %61, i8* %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %125

68:                                               ; preds = %60, %56
  %69 = load i32*, i32** %28, align 8
  %70 = bitcast i32* %34 to i8*
  %71 = call i32 @EVP_MAC_update(i32* %69, i8* %70, i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load i32*, i32** %28, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i64, i64* %19, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @EVP_MAC_update(i32* %74, i8* %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %73
  %81 = load i32*, i32** %28, align 8
  %82 = call i32 @EVP_MAC_update(i32* %81, i8* %32, i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32*, i32** %28, align 8
  %86 = load i8*, i8** %20, align 8
  %87 = load i64, i64* %21, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @EVP_MAC_update(i32* %85, i8* %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load i32*, i32** %28, align 8
  %93 = bitcast i32* %24 to i8*
  %94 = call i32 @EVP_MAC_update(i32* %92, i8* %93, i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32*, i32** %28, align 8
  %98 = load i8*, i8** %22, align 8
  %99 = load i64, i64* %23, align 8
  %100 = call i32 @EVP_MAC_final(i32* %97, i8* %98, i32* null, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96, %91, %84, %80, %73, %68
  br label %125

103:                                              ; preds = %96
  %104 = load i64, i64* %26, align 8
  %105 = load i64, i64* %29, align 8
  %106 = sub i64 %104, %105
  store i64 %106, i64* %30, align 8
  %107 = load i8*, i8** %25, align 8
  %108 = load i64, i64* %29, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8*, i8** %22, align 8
  %111 = load i64, i64* %30, align 8
  %112 = load i64, i64* %23, align 8
  %113 = call i64 @MIN(i64 %111, i64 %112)
  %114 = call i32 @memcpy(i8* %109, i8* %110, i64 %113)
  %115 = load i64, i64* %23, align 8
  %116 = load i64, i64* %29, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %29, align 8
  %118 = load i64, i64* %23, align 8
  store i64 %118, i64* %31, align 8
  %119 = load i32*, i32** %28, align 8
  %120 = call i32 @EVP_MAC_CTX_free(i32* %119)
  store i32* null, i32** %28, align 8
  br label %121

121:                                              ; preds = %103
  %122 = load i32, i32* %33, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %33, align 4
  br label %44

124:                                              ; preds = %44
  store i32 1, i32* %27, align 4
  br label %125

125:                                              ; preds = %124, %102, %67, %55
  %126 = load i32*, i32** %28, align 8
  %127 = call i32 @EVP_MAC_CTX_free(i32* %126)
  %128 = load i32, i32* %27, align 4
  ret i32 %128
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @be32(i32) #1

declare dso_local i32* @EVP_MAC_CTX_dup(i32*) #1

declare dso_local i32 @EVP_MAC_update(i32*, i8*, i32) #1

declare dso_local i32 @EVP_MAC_final(i32*, i8*, i32*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
