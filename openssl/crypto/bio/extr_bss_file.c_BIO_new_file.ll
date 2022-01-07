; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_file.c_BIO_new_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_file.c_BIO_new_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_CLOSE = common dso_local global i32 0, align 4
@BIO_FP_TEXT = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"calling fopen(%s, %s)\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@BIO_F_BIO_NEW_FILE = common dso_local global i32 0, align 4
@BIO_R_NO_SUCH_FILE = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@BIO_FLAGS_UPLINK_INTERNAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BIO_new_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @openssl_fopen(i8* %9, i8* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @BIO_CLOSE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @strchr(i8* %13, i8 signext 98)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @BIO_FP_TEXT, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, i32* @ERR_LIB_SYS, align 4
  %25 = call i32 (...) @get_last_sys_error()
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @ERR_raise_data(i32 %24, i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @BIO_F_BIO_NEW_FILE, align 4
  %34 = load i32, i32* @BIO_R_NO_SUCH_FILE, align 4
  %35 = call i32 @BIOerr(i32 %33, i32 %34)
  br label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @BIO_F_BIO_NEW_FILE, align 4
  %38 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %39 = call i32 @BIOerr(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  store i32* null, i32** %3, align 8
  br label %57

41:                                               ; preds = %20
  %42 = call i32 (...) @BIO_s_file()
  %43 = call i32* @BIO_new(i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @fclose(i32* %46)
  store i32* null, i32** %3, align 8
  br label %57

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @BIO_FLAGS_UPLINK_INTERNAL, align 4
  %51 = call i32 @BIO_clear_flags(i32* %49, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @BIO_set_fp(i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  store i32* %56, i32** %3, align 8
  br label %57

57:                                               ; preds = %48, %45, %40
  %58 = load i32*, i32** %3, align 8
  ret i32* %58
}

declare dso_local i32* @openssl_fopen(i8*, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @get_last_sys_error(...) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @BIO_clear_flags(i32*, i32) #1

declare dso_local i32 @BIO_set_fp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
