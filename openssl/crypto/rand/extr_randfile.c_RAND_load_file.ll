; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_randfile.c_RAND_load_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_randfile.c_RAND_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@RAND_BUF_SIZE = common dso_local global i32 0, align 4
@RAND_DRBG_STRENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@RAND_F_RAND_LOAD_FILE = common dso_local global i32 0, align 4
@RAND_R_CANNOT_OPEN_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Filename=\00", align 1
@RAND_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@RAND_R_RESEED_ERROR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@RAND_LOAD_BUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_load_file(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @RAND_BUF_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @RAND_DRBG_STRENGTH, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i32* @openssl_fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @RAND_F_RAND_LOAD_FILE, align 4
  %29 = load i32, i32* @RAND_R_CANNOT_OPEN_FILE, align 4
  %30 = call i32 @RANDerr(i32 %28, i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

33:                                               ; preds = %23
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @fileno(i32* %34)
  %36 = call i64 @fstat(i32 %35, %struct.stat* %8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @RAND_F_RAND_LOAD_FILE, align 4
  %40 = load i32, i32* @RAND_R_INTERNAL_ERROR, align 4
  %41 = call i32 @RANDerr(i32 %39, i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @fclose(i32* %44)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

46:                                               ; preds = %33
  %47 = load i64, i64* %5, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @S_ISREG(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @RAND_DRBG_STRENGTH, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @setbuf(i32* %61, i32* null)
  br label %63

63:                                               ; preds = %110, %60
  %64 = load i64, i64* %5, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* @RAND_BUF_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @RAND_DRBG_STRENGTH, align 8
  %71 = add nsw i64 %69, %70
  %72 = icmp sle i64 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i64, i64* %5, align 8
  %75 = trunc i64 %74 to i32
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @RAND_BUF_SIZE, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  store i32 %79, i32* %10, align 4
  br label %86

80:                                               ; preds = %63
  %81 = load i32, i32* @RAND_BUF_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @RAND_DRBG_STRENGTH, align 8
  %84 = add nsw i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %78
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @fread(i8* %19, i32 1, i32 %87, i32* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %111

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sitofp i32 %95 to double
  %97 = call i32 @RAND_add(i8* %19, i32 %94, double %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i64, i64* %5, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %5, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %5, align 8
  %108 = icmp sle i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %111

110:                                              ; preds = %103, %93
  br label %63

111:                                              ; preds = %109, %92
  %112 = trunc i64 %17 to i32
  %113 = call i32 @OPENSSL_cleanse(i8* %19, i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @fclose(i32* %114)
  %116 = call i32 (...) @RAND_status()
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @RAND_F_RAND_LOAD_FILE, align 4
  %120 = load i32, i32* @RAND_R_RESEED_ERROR, align 4
  %121 = call i32 @RANDerr(i32 %119, i32 %120)
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

124:                                              ; preds = %111
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %118, %38, %27, %22
  %127 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @openssl_fopen(i8*, i8*) #2

declare dso_local i32 @RANDerr(i32, i32) #2

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @setbuf(i32*, i32*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @RAND_add(i8*, i32, double) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @RAND_status(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
