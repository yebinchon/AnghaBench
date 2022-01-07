; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_hw.c_cipher_hw_tdes_cbc.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_tdes_hw.c_cipher_hw_tdes_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i8*, i8*, i64, i32, i64)* }

@MAXCHUNK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_hw_tdes_cbc(%struct.TYPE_9__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = bitcast %struct.TYPE_9__* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (i8*, i8*, i64, i32, i64)*, i32 (i8*, i8*, i64, i32, i64)** %15, align 8
  %17 = icmp ne i32 (i8*, i8*, i64, i32, i64)* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (i8*, i8*, i64, i32, i64)*, i32 (i8*, i8*, i64, i32, i64)** %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 %22(i8* %23, i8* %24, i64 %25, i32 %29, i64 %32)
  store i32 1, i32* %5, align 4
  br label %88

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @MAXCHUNK, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* @MAXCHUNK, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DES_ede3_cbc_encrypt(i8* %40, i8* %41, i64 %42, i32* %44, i32* %46, i32* %48, i32* %52, i32 %55)
  %57 = load i64, i64* @MAXCHUNK, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* @MAXCHUNK, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %8, align 8
  %63 = load i64, i64* @MAXCHUNK, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %7, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load i64, i64* %9, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DES_ede3_cbc_encrypt(i8* %70, i8* %71, i64 %72, i32* %74, i32* %76, i32* %78, i32* %82, i32 %85)
  br label %87

87:                                               ; preds = %69, %66
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %18
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @DES_ede3_cbc_encrypt(i8*, i8*, i64, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
