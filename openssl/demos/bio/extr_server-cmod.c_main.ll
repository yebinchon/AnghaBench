; ModuleID = '/home/carl/AnghaBench/openssl/demos/bio/extr_server-cmod.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/bio/extr_server-cmod.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"*:4433\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"cmod.cnf\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"testapp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Error processing config file\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Error configuring server.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %14, i32* %12, align 4
  %15 = call i32 (...) @TLS_server_method()
  %16 = call i32* @SSL_CTX_new(i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = call i64 @CONF_modules_load_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %74

22:                                               ; preds = %2
  %23 = load i32*, i32** %11, align 8
  %24 = call i64 @SSL_CTX_config(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %74

29:                                               ; preds = %22
  %30 = load i32*, i32** %11, align 8
  %31 = call i32* @BIO_new_ssl(i32* %30, i32 0)
  store i32* %31, i32** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32* @BIO_new_accept(i8* %32)
  store i32* %33, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %74

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @BIO_set_accept_bios(i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %52, %36
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @BIO_do_accept(i32* %41)
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %74

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %67, %65, %45
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %49 = call i32 @BIO_read(i32* %47, i8* %48, i32 512)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @BIO_pop(i32* %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @BIO_free_all(i32* %56)
  br label %40

58:                                               ; preds = %46
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @BIO_should_retry(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %46

66:                                               ; preds = %61
  br label %74

67:                                               ; preds = %58
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @stdout, align 4
  %71 = call i32 @fwrite(i8* %68, i32 1, i32 %69, i32 %70)
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32 @fflush(i32 %72)
  br label %46

74:                                               ; preds = %66, %44, %35, %26, %19
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @EXIT_SUCCESS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 @ERR_print_errors_fp(i32 %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @BIO_free(i32* %82)
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i64 @CONF_modules_load_file(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @SSL_CTX_config(i32*, i8*) #1

declare dso_local i32* @BIO_new_ssl(i32*, i32) #1

declare dso_local i32* @BIO_new_accept(i8*) #1

declare dso_local i32 @BIO_set_accept_bios(i32*, i32*) #1

declare dso_local i64 @BIO_do_accept(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @BIO_pop(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i64 @BIO_should_retry(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
