; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_time.c_doConnection.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_time.c_doConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@BIO_SOCK_NODELAY = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@verify_args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X509_V_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"verify error:%s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @doConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @doConnection(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call i32 (...) @BIO_s_connect()
  %12 = call i32* @BIO_new(i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %63

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @BIO_set_conn_hostname(i32* %16, i8* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @BIO_SOCK_NODELAY, align 4
  %21 = call i32 @BIO_set_conn_mode(i32* %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @SSL_new(i32* %25)
  store i32* %26, i32** %9, align 8
  br label %31

27:                                               ; preds = %15
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @SSL_set_connect_state(i32* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @SSL_set_bio(i32* %32, i32* %33, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @SSL_connect(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load i32, i32* @bio_err, align 4
  %42 = call i32 (i32, i8*, ...) @BIO_printf(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0), align 8
  %44 = load i64, i64* @X509_V_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @bio_err, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0), align 8
  %49 = call i32 @X509_verify_cert_error_string(i64 %48)
  %50 = call i32 (i32, i8*, ...) @BIO_printf(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @bio_err, align 4
  %53 = call i32 @ERR_print_errors(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** %5, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @SSL_free(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  store i32* null, i32** %4, align 8
  br label %63

61:                                               ; preds = %31
  %62 = load i32*, i32** %9, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %61, %60, %14
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_connect(...) #1

declare dso_local i32 @BIO_set_conn_hostname(i32*, i8*) #1

declare dso_local i32 @BIO_set_conn_mode(i32*, i32) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @X509_verify_cert_error_string(i64) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @SSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
