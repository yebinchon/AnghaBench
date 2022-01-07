; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_params_from_text.c_prepare_from_text.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_params_from_text.c_prepare_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@CRYPTO_R_TOO_SMALL_BUFFER = common dso_local global i32 0, align 4
@ERR_R_PASSED_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i64, %struct.TYPE_6__**, i32*, i64*, i32**)* @prepare_from_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_from_text(%struct.TYPE_6__* %0, i8* %1, i8* %2, i64 %3, %struct.TYPE_6__** %4, i32* %5, i64* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32** %7, i32*** %17, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %15, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %27, %8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__* %31, i8* %32)
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %18, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %128

38:                                               ; preds = %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %127 [
    i32 131, label %42
    i32 129, label %42
    i32 128, label %100
    i32 130, label %113
  ]

42:                                               ; preds = %38, %38
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32**, i32*** %17, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @BN_hex2bn(i32** %47, i8* %48)
  br label %54

50:                                               ; preds = %42
  %51 = load i32**, i32*** %17, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @BN_dec2bn(i32** %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32**, i32*** %17, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %128

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 131
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32**, i32*** %17, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @BN_is_negative(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32**, i32*** %17, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @BN_sub_word(i32* %71, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %128

75:                                               ; preds = %69, %64, %59
  %76 = load i32**, i32*** %17, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @BN_num_bytes(i32* %77)
  %79 = load i64*, i64** %16, align 8
  store i64 %78, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %75
  %85 = load i64*, i64** %16, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp uge i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @CRYPTO_R_TOO_SMALL_BUFFER, align 4
  %93 = call i32 @CRYPTOerr(i32 0, i32 %92)
  store i32 0, i32* %9, align 4
  br label %128

94:                                               ; preds = %84
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %16, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %94, %75
  br label %127

100:                                              ; preds = %38
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @ERR_R_PASSED_INVALID_ARGUMENT, align 4
  %106 = call i32 @CRYPTOerr(i32 0, i32 %105)
  store i32 0, i32* %9, align 4
  br label %128

107:                                              ; preds = %100
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %16, align 8
  store i64 %111, i64* %112, align 8
  br label %127

113:                                              ; preds = %38
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = ashr i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = load i64*, i64** %16, align 8
  store i64 %121, i64* %122, align 8
  br label %126

123:                                              ; preds = %113
  %124 = load i64, i64* %13, align 8
  %125 = load i64*, i64** %16, align 8
  store i64 %124, i64* %125, align 8
  br label %126

126:                                              ; preds = %123, %117
  br label %127

127:                                              ; preds = %38, %126, %107, %99
  store i32 1, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %104, %91, %74, %58, %37
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @OSSL_PARAM_locate_const(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_dec2bn(i32**, i8*) #1

declare dso_local i32 @BN_is_negative(i32*) #1

declare dso_local i32 @BN_sub_word(i32*, i32) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
