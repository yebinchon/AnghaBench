; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_def.c_get_next_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_def.c_get_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".conf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cnf\00", align 1
@CONF_F_GET_NEXT_FILE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**)* @get_next_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_next_file(i8* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %82, %2
  %15 = load i32**, i32*** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @OPENSSL_DIR_read(i32** %15, i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %83

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 5
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -5
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %24, %19
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, 4
  br i1 %33, label %34, label %82

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -4
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %34, %24
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = add i64 %44, 2
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i8* @OPENSSL_zalloc(i64 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @CONF_F_GET_NEXT_FILE, align 4
  %52 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %53 = call i32 @CONFerr(i32 %51, i32 %52)
  br label %83

54:                                               ; preds = %41
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @OPENSSL_strlcpy(i8* %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @OPENSSL_strlcat(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %60, %54
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @OPENSSL_strlcat(i8* %69, i8* %70, i64 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32* @BIO_new_file(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %74, i32** %11, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @OPENSSL_free(i8* %75)
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32*, i32** %11, align 8
  store i32* %80, i32** %3, align 8
  br label %87

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %34, %31
  br label %14

83:                                               ; preds = %50, %14
  %84 = load i32**, i32*** %5, align 8
  %85 = call i32 @OPENSSL_DIR_end(i32** %84)
  %86 = load i32**, i32*** %5, align 8
  store i32* null, i32** %86, align 8
  store i32* null, i32** %3, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_DIR_read(i32**, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_strlcat(i8*, i8*, i64) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_DIR_end(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
