; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_OSSL_CMP_print_errors_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_OSSL_CMP_print_errors_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_print_errors_cb_LIMIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@ERR_TXT_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@OSSL_CMP_LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OSSL_CMP_print_errors_cb(i64 (i8*, i8*, i32, i32, i8*)* %0) #0 {
  %2 = alloca i64 (i8*, i8*, i32, i32, i8*)*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i8*, align 8
  store i64 (i8*, i8*, i32, i32, i8*)* %0, i64 (i8*, i8*, i32, i32, i8*)** %2, align 8
  %14 = load i32, i32* @ERR_print_errors_cb_LIMIT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %18 = load i64 (i8*, i8*, i32, i32, i8*)*, i64 (i8*, i8*, i32, i32, i8*)** %2, align 8
  %19 = icmp eq i64 (i8*, i8*, i32, i32, i8*)* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @ERR_print_errors_fp(i32 %21)
  store i32 1, i32* %11, align 4
  br label %76

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %74, %23
  %25 = call i64 @ERR_get_error_all(i8** %6, i32* %9, i8** %7, i8** %8, i32* %10)
  store i64 %25, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  br label %38

37:                                               ; preds = %30, %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i8* [ %36, %35 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %37 ]
  store i8* %39, i8** %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ERR_TXT_STRING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i8* null, i8** %8, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %46, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = trunc i64 %15 to i32
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @ERR_reason_error_string(i64 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %8, align 8
  %55 = icmp eq i8* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %63

61:                                               ; preds = %45
  %62 = load i8*, i8** %8, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %60 ], [ %62, %61 ]
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %17, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %57, i8* %64)
  %66 = load i64 (i8*, i8*, i32, i32, i8*)*, i64 (i8*, i8*, i32, i32, i8*)** %2, align 8
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @OSSL_CMP_LOG_ERR, align 4
  %71 = call i64 %66(i8* %67, i8* %68, i32 %69, i32 %70, i8* %17)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %75

74:                                               ; preds = %63
  br label %24

75:                                               ; preds = %73, %24
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %20
  %77 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %11, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERR_print_errors_fp(i32) #2

declare dso_local i64 @ERR_get_error_all(i8**, i32*, i8**, i8**, i32*) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @ERR_reason_error_string(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
