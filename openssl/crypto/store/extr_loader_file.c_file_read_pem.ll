; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_read_pem.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_read_pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_pass_data = type { i32 }

@PEM_FLAG_SECURE = common dso_local global i32 0, align 4
@PEM_FLAG_EAY_COMPATIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@file_get_pem_pass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8**, i8**, i64*, i32*, i8*, i32)* @file_read_pem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_read_pem(i32* %0, i8** %1, i8** %2, i8** %3, i64* %4, i32* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pem_pass_data, align 4
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %8
  %24 = load i32*, i32** %10, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8**, i8*** %12, align 8
  %27 = load i8**, i8*** %13, align 8
  %28 = load i64*, i64** %14, align 8
  %29 = load i32, i32* @PEM_FLAG_SECURE, align 4
  %30 = load i32, i32* @PEM_FLAG_EAY_COMPATIBLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @PEM_read_bio_ex(i32* %24, i8** %25, i8** %26, i8** %27, i64* %28, i32 %31)
  br label %40

33:                                               ; preds = %8
  %34 = load i32*, i32** %10, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = load i8**, i8*** %12, align 8
  %37 = load i8**, i8*** %13, align 8
  %38 = load i64*, i64** %14, align 8
  %39 = call i32 @PEM_read_bio(i32* %34, i8** %35, i8** %36, i8** %37, i64* %38)
  br label %40

40:                                               ; preds = %33, %23
  %41 = phi i32 [ %32, %23 ], [ %39, %33 ]
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %70

45:                                               ; preds = %40
  %46 = load i8**, i8*** %12, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = icmp sgt i32 %48, 10
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load i8**, i8*** %12, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PEM_get_EVP_CIPHER_INFO(i8* %52, i32* %19)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i32*, i32** %15, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = call i32 @file_fill_pem_pass_data(%struct.pem_pass_data* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i8**, i8*** %13, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64*, i64** %14, align 8
  %64 = load i32, i32* @file_get_pem_pass, align 4
  %65 = call i32 @PEM_do_header(i32* %19, i8* %62, i64* %63, i32 %64, %struct.pem_pass_data* %20)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60, %55, %50
  store i32 0, i32* %9, align 4
  br label %70

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %45
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %67, %44
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @PEM_read_bio_ex(i32*, i8**, i8**, i8**, i64*, i32) #1

declare dso_local i32 @PEM_read_bio(i32*, i8**, i8**, i8**, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @PEM_get_EVP_CIPHER_INFO(i8*, i32*) #1

declare dso_local i32 @file_fill_pem_pass_data(%struct.pem_pass_data*, i8*, i32*, i8*) #1

declare dso_local i32 @PEM_do_header(i32*, i8*, i64*, i32, %struct.pem_pass_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
