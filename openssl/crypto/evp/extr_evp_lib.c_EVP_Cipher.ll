; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_Cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_Cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (i32, i8*, i64*, i32, i8*, i64)*, i32 (i32, i8*, i64*, i64)*, {}*, i64 (i32, i8*, i64*, i32, i8*, i64)*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_Cipher(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %109

19:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call i64 @EVP_CIPHER_CTX_block_size(%struct.TYPE_7__* %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64 (i32, i8*, i64*, i32, i8*, i64)*, i64 (i32, i8*, i64*, i32, i8*, i64)** %25, align 8
  %27 = icmp ne i64 (i32, i8*, i64*, i32, i8*, i64)* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i64 (i32, i8*, i64*, i32, i8*, i64)*, i64 (i32, i8*, i64*, i32, i8*, i64)** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %45

43:                                               ; preds = %28
  %44 = load i64, i64* %12, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i64 [ 0, %42 ], [ %44, %43 ]
  %47 = add i64 %39, %46
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = call i64 %33(i32 %36, i8* %37, i64* %11, i32 %48, i8* %49, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ -1, %57 ]
  store i32 %59, i32* %10, align 4
  br label %107

60:                                               ; preds = %19
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (i32, i8*, i64*, i32, i8*, i64)*, i32 (i32, i8*, i64*, i32, i8*, i64)** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %80

78:                                               ; preds = %63
  %79 = load i64, i64* %12, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i64 [ 0, %77 ], [ %79, %78 ]
  %82 = add i64 %74, %81
  %83 = trunc i64 %82 to i32
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = call i32 %68(i32 %71, i8* %72, i64* %11, i32 %83, i8* %84, i64 %86)
  store i32 %87, i32* %10, align 4
  br label %106

88:                                               ; preds = %60
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (i32, i8*, i64*, i64)*, i32 (i32, i8*, i64*, i64)** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp eq i64 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %103

101:                                              ; preds = %88
  %102 = load i64, i64* %12, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i64 [ 0, %100 ], [ %102, %101 ]
  %105 = call i32 %93(i32 %96, i8* %97, i64* %11, i64 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %80
  br label %107

107:                                              ; preds = %106, %58
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %121

109:                                              ; preds = %4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = bitcast {}** %113 to i32 (%struct.TYPE_7__*, i8*, i8*, i32)**
  %115 = load i32 (%struct.TYPE_7__*, i8*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i8*, i32)** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 %115(%struct.TYPE_7__* %116, i8* %117, i8* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %109, %107
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i64 @EVP_CIPHER_CTX_block_size(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
