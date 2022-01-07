; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hmac.c_drbg_hmac_generate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hmac.c_drbg_hmac_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64, i8*, i64)* @drbg_hmac_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_hmac_generate(%struct.TYPE_8__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @drbg_hmac_update(%struct.TYPE_8__* %30, i8* %31, i64 %32, i32* null, i32 0, i32* null, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %107

36:                                               ; preds = %29, %26, %5
  br label %37

37:                                               ; preds = %88, %36
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @HMAC_Init_ex(i32* %38, i32 %41, i64 %44, i32 %47, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load i32*, i32** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @HMAC_Update(i32* %51, i8* %52, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50, %37
  store i32 0, i32* %6, align 4
  br label %107

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32*, i32** %13, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @HMAC_Final(i32* %66, i8* %67, i32* null)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %107

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %14, align 8
  br label %88

73:                                               ; preds = %59
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @HMAC_Final(i32* %74, i8* %77, i32* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %107

81:                                               ; preds = %73
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @memcpy(i8* %82, i8* %85, i64 %86)
  br label %99

88:                                               ; preds = %71
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %8, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %97, %96
  store i64 %98, i64* %9, align 8
  br label %37

99:                                               ; preds = %81
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @drbg_hmac_update(%struct.TYPE_8__* %100, i8* %101, i64 %102, i32* null, i32 0, i32* null, i32 0)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %107

106:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %105, %80, %70, %58, %35
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @drbg_hmac_update(%struct.TYPE_8__*, i8*, i64, i32*, i32, i32*, i32) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @HMAC_Update(i32*, i8*, i64) #1

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
