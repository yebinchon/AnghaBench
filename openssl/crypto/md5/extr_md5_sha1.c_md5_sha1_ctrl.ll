; ModuleID = '/home/carl/AnghaBench/openssl/crypto/md5/extr_md5_sha1.c_md5_sha1_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/md5/extr_md5_sha1.c_md5_sha1_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_sha1_ctrl(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [48 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

26:                                               ; preds = %4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 48
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @md5_sha1_update(%struct.TYPE_5__* %35, i8* %36, i32 %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

41:                                               ; preds = %34
  %42 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 54, i32 48)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %47 = call i32 @MD5_Update(i32* %45, i8* %46, i32 48)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = call i32 @MD5_Final(i8* %18, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %60 = call i32 @SHA1_Update(i32* %58, i8* %59, i32 40)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @SHA1_Final(i8* %21, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = call i32 @md5_sha1_init(%struct.TYPE_5__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @md5_sha1_update(%struct.TYPE_5__* %75, i8* %76, i32 %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

81:                                               ; preds = %74
  %82 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %83 = call i32 @memset(i8* %82, i32 92, i32 48)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %87 = call i32 @MD5_Update(i32* %85, i8* %86, i32 48)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

90:                                               ; preds = %81
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = trunc i64 %16 to i32
  %94 = call i32 @MD5_Update(i32* %92, i8* %18, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

97:                                               ; preds = %90
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %101 = call i32 @SHA1_Update(i32* %99, i8* %100, i32 40)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

104:                                              ; preds = %97
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = trunc i64 %20 to i32
  %108 = call i32 @SHA1_Update(i32* %106, i8* %21, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

111:                                              ; preds = %104
  %112 = trunc i64 %16 to i32
  %113 = call i32 @OPENSSL_cleanse(i8* %18, i32 %112)
  %114 = trunc i64 %20 to i32
  %115 = call i32 @OPENSSL_cleanse(i8* %21, i32 %114)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %111, %110, %103, %96, %89, %80, %73, %68, %62, %55, %49, %40, %33, %29, %25
  %117 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @md5_sha1_update(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #2

declare dso_local i32 @MD5_Final(i8*, i32*) #2

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @md5_sha1_init(%struct.TYPE_5__*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
