; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_ERR_error_string_n.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_ERR_error_string_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"lib(%lu)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"reason(%lu)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error:%08lX:%s:%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"err:%lx:%lx:%lx:%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERR_error_string_n(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @ERR_GET_LIB(i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @ERR_lib_error_string(i64 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %26 = load i64, i64* %12, align 8
  %27 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %25, i64 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i64, i64* %4, align 8
  %31 = call i8* @ERR_reason_error_string(i64 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @ERR_GET_REASON(i64 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %38 = load i64, i64* %13, align 8
  %39 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %37, i64 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %44, i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, 1
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 (i8*, i64, i8*, i64, ...) @BIO_snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %56, i64 %57, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %16, %53, %41
  ret void
}

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i8* @ERR_lib_error_string(i64) #1

declare dso_local i32 @BIO_snprintf(i8*, i64, i8*, i64, ...) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
