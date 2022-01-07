; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_AsnDecodeDerBlob.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_AsnDecodeDerBlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@CRYPT_DECODE_NOCOPY_FLAG = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_CORRUPT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32*, i32*)* @CRYPT_AsnDecodeDerBlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_AsnDecodeDerBlob(i32* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @CRYPT_GetLen(i32* %18, i32 %19, i32* %14)
  store i32 %20, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %6
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GET_LEN_BYTES(i32 %25)
  store i32 %26, i32* %15, align 4
  store i32 16, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 1, %32
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %31, %22
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 1, %42
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %110

53:                                               ; preds = %47
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @CRYPT_DecodeCheckSpace(i32* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = bitcast i8* %64 to i32**
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %10, align 8
  %70 = bitcast i8* %69 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %17, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 1, %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @CRYPT_DECODE_NOCOPY_FLAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  br label %103

90:                                               ; preds = %81
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @assert(i32* %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memcpy(i32* %97, i32* %98, i32 %101)
  br label %103

103:                                              ; preds = %90, %86
  br label %108

104:                                              ; preds = %68
  %105 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %106 = call i32 @SetLastError(i32 %105)
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %104, %103
  br label %109

109:                                              ; preds = %108, %53
  br label %110

110:                                              ; preds = %109, %50
  br label %111

111:                                              ; preds = %110, %6
  %112 = load i32, i32* %13, align 4
  ret i32 %112
}

declare dso_local i32 @CRYPT_GetLen(i32*, i32, i32*) #1

declare dso_local i32 @GET_LEN_BYTES(i32) #1

declare dso_local i32 @CRYPT_DecodeCheckSpace(i32*, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
