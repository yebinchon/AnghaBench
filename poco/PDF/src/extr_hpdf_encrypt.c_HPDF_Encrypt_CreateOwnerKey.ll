; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_CreateOwnerKey.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_CreateOwnerKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i32, i32*, i32* }

@HPDF_MD5_KEY_LEN = common dso_local global i32 0, align 4
@HPDF_PASSWD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c" HPDF_Encrypt_CreateOwnerKey\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.3 step 2\0A\00", align 1
@HPDF_ENCRYPT_R3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"@ Algorithm 3.3 step 3 loop %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"@ Algorithm 3.3 step 7 loop 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.3 step 5\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.3 step 6\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.3 step 7\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"@ Algorithm 3.3 step 7 loop %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.3 step 8\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Encrypt_CreateOwnerKey(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %15 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @HPDF_MD5Init(i32* %4)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %28 = call i32 @HPDF_MD5Update(i32* %4, i32* %26, i32 %27)
  %29 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @HPDF_MD5Final(i32* %18, i32* %4)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HPDF_ENCRYPT_R3, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 50
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = call i32 @HPDF_MD5Init(i32* %4)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @HPDF_MD5Update(i32* %4, i32* %18, i32 %44)
  %46 = call i32 @HPDF_MD5Final(i32* %18, i32* %4)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @HPDF_PTRACE(i8* %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %37

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %1
  %56 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ARC4Init(i32* %3, i32* %18, i32 %59)
  %61 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %67 = call i32 @ARC4CryptBuf(i32* %3, i32* %65, i32* %21, i32 %66)
  %68 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HPDF_ENCRYPT_R3, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %125

74:                                               ; preds = %55
  %75 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %9, align 8
  %78 = alloca i32, i64 %76, align 16
  store i64 %76, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %79

79:                                               ; preds = %120, %74
  %80 = load i32, i32* %11, align 4
  %81 = icmp sle i32 %80, 19
  br i1 %81, label %82, label %123

82:                                               ; preds = %79
  %83 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %13, align 8
  %86 = alloca i32, i64 %84, align 16
  store i64 %84, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %103, %82
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %18, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = xor i32 %97, %98
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %86, i64 %101
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @HPDF_PTRACE(i8* %109)
  %111 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %112 = call i32 @HPDF_MemCpy(i32* %78, i32* %21, i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ARC4Init(i32* %3, i32* %86, i32 %115)
  %117 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %118 = call i32 @ARC4CryptBuf(i32* %3, i32* %78, i32* %21, i32 %117)
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %79

123:                                              ; preds = %79
  %124 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %124)
  br label %125

125:                                              ; preds = %123, %55
  %126 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %131 = call i32 @HPDF_MemCpy(i32* %129, i32* %21, i32 %130)
  %132 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_MD5Init(i32*) #2

declare dso_local i32 @HPDF_MD5Update(i32*, i32*, i32) #2

declare dso_local i32 @HPDF_MD5Final(i32*, i32*) #2

declare dso_local i32 @ARC4Init(i32*, i32*, i32) #2

declare dso_local i32 @ARC4CryptBuf(i32*, i32*, i32*, i32) #2

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
