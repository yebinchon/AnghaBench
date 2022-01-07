; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock.c_BIO_accept.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_b_sock.c_BIO_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_SOCKET = common dso_local global i64 0, align 8
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"calling accept()\00", align 1
@BIO_F_BIO_ACCEPT = common dso_local global i32 0, align 4
@BIO_R_ACCEPT_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_accept(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BIO_accept_ex(i32 %9, i32* %5, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* @INVALID_SOCKET, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @BIO_sock_should_retry(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -2, i32* %6, align 4
  br label %79

20:                                               ; preds = %15
  %21 = load i32, i32* @ERR_LIB_SYS, align 4
  %22 = call i32 (...) @get_last_socket_error()
  %23 = call i32 @ERR_raise_data(i32 %21, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @BIO_F_BIO_ACCEPT, align 4
  %25 = load i32, i32* @BIO_R_ACCEPT_ERROR, align 4
  %26 = call i32 @BIOerr(i32 %24, i32 %25)
  br label %79

27:                                               ; preds = %2
  %28 = load i8**, i8*** %4, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %78

30:                                               ; preds = %27
  %31 = call i8* @BIO_ADDR_hostname_string(i32* %5, i32 1)
  store i8* %31, i8** %7, align 8
  %32 = call i8* @BIO_ADDR_service_string(i32* %5, i32 1)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %40, %42
  %44 = add nsw i64 %43, 2
  %45 = call i8* @OPENSSL_zalloc(i64 %44)
  %46 = load i8**, i8*** %4, align 8
  store i8* %45, i8** %46, align 8
  br label %49

47:                                               ; preds = %35, %30
  %48 = load i8**, i8*** %4, align 8
  store i8* null, i8** %48, align 8
  br label %49

49:                                               ; preds = %47, %38
  %50 = load i8**, i8*** %4, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* @BIO_F_BIO_ACCEPT, align 4
  %55 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %56 = call i32 @BIOerr(i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BIO_closesocket(i32 %57)
  %59 = load i64, i64* @INVALID_SOCKET, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %73

61:                                               ; preds = %49
  %62 = load i8**, i8*** %4, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strcpy(i8* %63, i8* %64)
  %66 = load i8**, i8*** %4, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcat(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i8**, i8*** %4, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcat(i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %61, %53
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @OPENSSL_free(i8* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  br label %78

78:                                               ; preds = %73, %27
  br label %79

79:                                               ; preds = %78, %20, %19
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @BIO_accept_ex(i32, i32*, i32) #1

declare dso_local i64 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i8* @BIO_ADDR_hostname_string(i32*, i32) #1

declare dso_local i8* @BIO_ADDR_service_string(i32*, i32) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
