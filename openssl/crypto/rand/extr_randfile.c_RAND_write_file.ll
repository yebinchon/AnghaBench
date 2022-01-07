; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_randfile.c_RAND_write_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_randfile.c_RAND_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@RAND_BUF_SIZE = common dso_local global i32 0, align 4
@RAND_F_RAND_WRITE_FILE = common dso_local global i32 0, align 4
@RAND_R_NOT_A_REGULAR_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Filename=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@RAND_R_CANNOT_OPEN_FILE = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_write_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @RAND_BUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %8)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISREG(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @RAND_F_RAND_WRITE_FILE, align 4
  %24 = load i32, i32* @RAND_R_NOT_A_REGULAR_FILE, align 4
  %25 = call i32 @RANDerr(i32 %23, i32 %24)
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %59

28:                                               ; preds = %17, %1
  %29 = trunc i64 %11 to i32
  %30 = call i32 @RAND_priv_bytes(i8* %13, i32 %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %59

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = call i32* @openssl_fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @RAND_F_RAND_WRITE_FILE, align 4
  %44 = load i32, i32* @RAND_R_CANNOT_OPEN_FILE, align 4
  %45 = call i32 @RANDerr(i32 %43, i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %59

48:                                               ; preds = %39
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @chmod(i8* %49, i32 384)
  %51 = load i32, i32* @RAND_BUF_SIZE, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @fwrite(i8* %13, i32 1, i32 %51, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = load i32, i32* @RAND_BUF_SIZE, align 4
  %57 = call i32 @OPENSSL_cleanse(i8* %13, i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %48, %42, %32, %22
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @RANDerr(i32, i32) #2

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #2

declare dso_local i32 @RAND_priv_bytes(i8*, i32) #2

declare dso_local i32* @openssl_fopen(i8*, i8*) #2

declare dso_local i32 @chmod(i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

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
