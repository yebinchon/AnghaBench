; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_CreateUserKey.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_CreateUserKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i64, i32* }

@.str = private unnamed_addr constant [29 x i8] c" HPDF_Encrypt_CreateUserKey\0A\00", align 1
@HPDF_PADDING_STRING = common dso_local global i32* null, align 8
@HPDF_PASSWD_LEN = common dso_local global i32 0, align 4
@HPDF_ENCRYPT_R3 = common dso_local global i64 0, align 8
@HPDF_MD5_KEY_LEN = common dso_local global i32 0, align 4
@HPDF_ID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.5 step 3\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.5 step 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"@ Algorithm 3.5 step 5 loop %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Encrypt_CreateUserKey(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %12 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ARC4Init(i32* %3, i32* %15, i32 %18)
  %20 = load i32*, i32** @HPDF_PADDING_STRING, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %25 = call i32 @ARC4CryptBuf(i32* %3, i32* %20, i32* %23, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HPDF_ENCRYPT_R3, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %119

31:                                               ; preds = %1
  %32 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %5, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %6, align 8
  %36 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %7, align 8
  %39 = call i32 @HPDF_MD5Init(i32* %4)
  %40 = load i32*, i32** @HPDF_PADDING_STRING, align 8
  %41 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %42 = call i32 @HPDF_MD5Update(i32* %4, i32* %40, i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @HPDF_ID_LEN, align 4
  %47 = call i32 @HPDF_MD5Update(i32* %4, i32* %45, i32 %46)
  %48 = call i32 @HPDF_MD5Final(i32* %35, i32* %4)
  %49 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ARC4Init(i32* %3, i32* %52, i32 %55)
  %57 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %58 = call i32 @ARC4CryptBuf(i32* %3, i32* %35, i32* %38, i32 %57)
  %59 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %104, %31
  %61 = load i32, i32* %8, align 4
  %62 = icmp sle i32 %61, 19
  br i1 %62, label %63, label %107

63:                                               ; preds = %60
  %64 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %10, align 8
  %67 = alloca i32, i64 %65, align 16
  store i64 %65, i64* %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @HPDF_PTRACE(i8* %70)
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %91, %63
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = xor i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %67, i64 %89
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %96 = call i32 @HPDF_MemCpy(i32* %35, i32* %38, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ARC4Init(i32* %3, i32* %67, i32 %99)
  %101 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %102 = call i32 @ARC4CryptBuf(i32* %3, i32* %35, i32* %38, i32 %101)
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %60

107:                                              ; preds = %60
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %112 = call i32 @HPDF_MemSet(i32* %110, i32 0, i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %117 = call i32 @HPDF_MemCpy(i32* %115, i32* %38, i32 %116)
  %118 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %107, %1
  ret void
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @ARC4Init(i32*, i32*, i32) #1

declare dso_local i32 @ARC4CryptBuf(i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @HPDF_MD5Init(i32*) #1

declare dso_local i32 @HPDF_MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @HPDF_MD5Final(i32*, i32*) #1

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
