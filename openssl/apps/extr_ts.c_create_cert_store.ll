; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_create_cert_store.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_create_cert_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verify_cb = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@X509_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error loading directory %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error loading file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Error loading store URI %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32*)* @create_cert_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_cert_store(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = call i32* (...) @X509_STORE_new()
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32, i32* @verify_cb, align 4
  %15 = call i32 @X509_STORE_set_verify_cb(i32* %13, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 (...) @X509_LOOKUP_hash_dir()
  %21 = call i32* @X509_STORE_add_lookup(i32* %19, i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @bio_err, align 4
  %26 = call i32 (i32, i8*, ...) @BIO_printf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %92

27:                                               ; preds = %18
  %28 = load i32*, i32** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %31 = call i32 @X509_LOOKUP_add_dir(i32* %28, i8* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @bio_err, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, ...) @BIO_printf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %92

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 (...) @X509_LOOKUP_file()
  %44 = call i32* @X509_STORE_add_lookup(i32* %42, i32 %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @bio_err, align 4
  %49 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %92

50:                                               ; preds = %41
  %51 = load i32*, i32** %11, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %54 = call i32 @X509_LOOKUP_load_file(i32* %51, i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @bio_err, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %92

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 (...) @X509_LOOKUP_store()
  %67 = call i32* @X509_STORE_add_lookup(i32* %65, i32 %66)
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 (i32, i8*, ...) @BIO_printf(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %92

73:                                               ; preds = %64
  %74 = load i32*, i32** %11, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @X509_LOOKUP_load_store(i32* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @bio_err, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (i32, i8*, ...) @BIO_printf(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %92

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @X509_STORE_set1_param(i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32*, i32** %10, align 8
  store i32* %91, i32** %5, align 8
  br label %95

92:                                               ; preds = %78, %70, %56, %47, %33, %24
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @X509_STORE_free(i32* %93)
  store i32* null, i32** %5, align 8
  br label %95

95:                                               ; preds = %92, %90
  %96 = load i32*, i32** %5, align 8
  ret i32* %96
}

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32 @X509_STORE_set_verify_cb(i32*, i32) #1

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_hash_dir(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @X509_LOOKUP_add_dir(i32*, i8*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32 @X509_LOOKUP_load_file(i32*, i8*, i32) #1

declare dso_local i32 @X509_LOOKUP_store(...) #1

declare dso_local i32 @X509_LOOKUP_load_store(i32*, i8*) #1

declare dso_local i32 @X509_STORE_set1_param(i32*, i32*) #1

declare dso_local i32 @X509_STORE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
