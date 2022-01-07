; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_ok.c_block_in.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_ok.c_block_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i64, i64, i32, i32, i64, i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@OK_BLOCK_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @block_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_in(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_3__* @BIO_get_data(i32* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @EVP_MD_CTX_md(i32* %20)
  %22 = call i32 @EVP_MD_size(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 8, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = shl i64 %33, 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = shl i64 %42, 8
  store i64 %43, i64* %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = shl i64 %51, 8
  store i64 %52, i64* %6, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = icmp ult i64 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %135

72:                                               ; preds = %1
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = bitcast i64* %79 to i8*
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @EVP_DigestUpdate(i32* %73, i8* %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %132

85:                                               ; preds = %72
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @EVP_DigestFinal_ex(i32* %86, i8* %14, i32* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %132

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %94, %96
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @memcmp(i64* %98, i8* %14, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %90
  %103 = load i64, i64* %6, align 8
  %104 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %106, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %120, %122
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  store i32 1, i32* %127, align 4
  br label %131

128:                                              ; preds = %90
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 6
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %102
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %135

132:                                              ; preds = %89, %84
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @BIO_clear_retry_flags(i32* %133)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %135

135:                                              ; preds = %132, %131, %71
  %136 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #2

declare dso_local i32 @EVP_MD_size(i32) #2

declare dso_local i32 @EVP_MD_CTX_md(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i64 @memcmp(i64*, i8*, i32) #2

declare dso_local i32 @BIO_clear_retry_flags(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
