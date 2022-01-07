; ModuleID = '/home/carl/AnghaBench/openssl/demos/pkcs12/extr_pkwrite.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/pkcs12/extr_pkwrite.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Usage: pkwrite infile password name p12file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error opening file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error creating PKCS#12 structure\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  %17 = call i32 (...) @OpenSSL_add_all_algorithms()
  %18 = call i32 (...) @ERR_load_crypto_strings()
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %16
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @PEM_read_X509(i32* %32, i32* null, i32* null, i32* null)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @rewind(i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @PEM_read_PrivateKey(i32* %36, i32* null, i32* null, i32* null)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @PKCS12_create(i8* %42, i8* %45, i32* %46, i32* %47, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @ERR_print_errors_fp(i32 %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %31
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %61, i32** %6, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @ERR_print_errors_fp(i32 %69)
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %57
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @i2d_PKCS12_fp(i32* %73, i32* %74)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @PKCS12_free(i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fclose(i32* %78)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @ERR_load_crypto_strings(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @PEM_read_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @PEM_read_PrivateKey(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @PKCS12_create(i8*, i8*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @i2d_PKCS12_fp(i32*, i32*) #1

declare dso_local i32 @PKCS12_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
