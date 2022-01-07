; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_req.c_add_attribute_object.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_req.c_add_attribute_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Attribute value\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Attribute default\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error adding attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32, i32, i32, i64)* @add_attribute_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_attribute_object(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca [1024 x i8], align 16
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %16, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %26 = call i32 @build_data(i8* %20, i8* %21, i8* %22, i32 %23, i32 %24, i8* %25, i32 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %18, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %8
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %9, align 4
  br label %48

34:                                               ; preds = %29
  store i32 1, i32* %18, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %39 = call i32 @X509_REQ_add1_attr_by_NID(i32* %35, i32 %36, i64 %37, i8* %38, i32 -1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @bio_err, align 4
  %43 = call i32 @BIO_printf(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @bio_err, align 4
  %45 = call i32 @ERR_print_errors(i32 %44)
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %32
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @build_data(i8*, i8*, i8*, i32, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @X509_REQ_add1_attr_by_NID(i32*, i32, i64, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
