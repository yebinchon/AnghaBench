; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_regstore.c_CRYPT_RegReadSerializedFromReg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_regstore.c_CRYPT_RegReadSerializedFromReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*, i32, i32*)*, i64 (i8*, i32, i32*, i32*)* }

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@BlobW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Adding cert with hash %s\0A\00", align 1
@pCertInterface = common dso_local global %struct.TYPE_5__* null, align 8
@pCRLInterface = common dso_local global %struct.TYPE_5__* null, align 8
@pCTLInterface = common dso_local global %struct.TYPE_5__* null, align 8
@CERT_HASH_PROP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"comparing %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"with %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"hash matches, adding\0A\00", align 1
@CERT_STORE_ADD_REPLACE_EXISTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"hash doesn't match, ignoring\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @CRYPT_RegReadSerializedFromReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CRYPT_RegReadSerializedFromReg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca [20 x i32], align 16
  %18 = alloca [41 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  br label %23

23:                                               ; preds = %125, %3
  %24 = call i32 @ARRAY_SIZE(i32* %22)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = call i32 @RegEnumKeyExW(i32 %25, i32 %26, i32* %22, i32* %11, i32* null, i32* null, i32* null, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %124, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @KEY_READ, align 4
  %34 = call i32 @RegOpenKeyExW(i32 %32, i32* %22, i32 0, i32 %33, i32* %12)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %122, label %37

37:                                               ; preds = %31
  store i32* null, i32** %13, align 8
  store i32 0, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @BlobW, align 4
  %40 = call i32 @RegQueryValueExW(i32 %38, i32 %39, i32* null, i32* null, i32* null, i32* %11)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = call i32* @CryptMemAlloc(i32 %44)
  store i32* %45, i32** %13, align 8
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %119

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @BlobW, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @RegQueryValueExW(i32 %50, i32 %51, i32* null, i32* null, i32* %52, i32* %11)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %116, label %56

56:                                               ; preds = %49
  %57 = call i32 @debugstr_w(i32* %22)
  %58 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @CRYPT_ReadSerializedElement(i32* %59, i32 %60, i32 %61, i32* %15)
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %115

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  switch i32 %66, label %73 [
    i32 130, label %67
    i32 129, label %69
    i32 128, label %71
  ]

67:                                               ; preds = %65
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pCertInterface, align 8
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %16, align 8
  br label %74

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pCRLInterface, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %16, align 8
  br label %74

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pCTLInterface, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %16, align 8
  br label %74

73:                                               ; preds = %65
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  br label %74

74:                                               ; preds = %73, %71, %69, %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %76 = icmp ne %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  store i32 80, i32* %11, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64 (i8*, i32, i32*, i32*)*, i64 (i8*, i32, i32*, i32*)** %79, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* @CERT_HASH_PROP_ID, align 4
  %83 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0, i64 0
  %84 = call i64 %80(i8* %81, i32 %82, i32* %83, i32* %11)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %77
  %87 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0, i64 0
  %88 = getelementptr inbounds [41 x i32], [41 x i32]* %18, i64 0, i64 0
  %89 = call i32 @CRYPT_HashToStr(i32* %87, i32* %88)
  %90 = getelementptr inbounds [41 x i32], [41 x i32]* %18, i64 0, i64 0
  %91 = call i32 @debugstr_w(i32* %90)
  %92 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = call i32 @debugstr_w(i32* %22)
  %94 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [41 x i32], [41 x i32]* %18, i64 0, i64 0
  %96 = call i32 @lstrcmpW(i32* %95, i32* %22)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %86
  %99 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* @CERT_STORE_ADD_REPLACE_EXISTING, align 4
  %106 = call i32 %102(i32 %103, i8* %104, i32 %105, i32* null)
  br label %109

107:                                              ; preds = %86
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %98
  br label %110

110:                                              ; preds = %109, %77
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @context_from_ptr(i8* %111)
  %113 = call i32 @Context_Release(i32 %112)
  br label %114

114:                                              ; preds = %110, %74
  br label %115

115:                                              ; preds = %114, %56
  br label %116

116:                                              ; preds = %115, %49
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @CryptMemFree(i32* %117)
  br label %119

119:                                              ; preds = %116, %46
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @RegCloseKey(i32 %120)
  br label %122

122:                                              ; preds = %119, %31
  %123 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %23
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br i1 %128, label %23, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @RegEnumKeyExW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @RegQueryValueExW(i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32* @CryptMemAlloc(i32) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i8* @CRYPT_ReadSerializedElement(i32*, i32, i32, i32*) #2

declare dso_local i32 @CRYPT_HashToStr(i32*, i32*) #2

declare dso_local i32 @lstrcmpW(i32*, i32*) #2

declare dso_local i32 @Context_Release(i32) #2

declare dso_local i32 @context_from_ptr(i8*) #2

declare dso_local i32 @CryptMemFree(i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
