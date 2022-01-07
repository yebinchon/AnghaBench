; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_status.c_ossl_cmp_PKIStatus_to_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_status.c_ossl_cmp_PKIStatus_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"PKIStatus: accepted\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"PKIStatus: granted with modifications\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PKIStatus: rejection\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PKIStatus: waiting\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"PKIStatus: revocation warning - a revocation of the cert is imminent\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"PKIStatus: revocation notification - a revocation of the cert has occurred\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"PKIStatus: key update warning - update already done for the cert\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"PKIStatus: invalid=%d\00", align 1
@CMP_R_ERROR_PARSING_PKISTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ossl_cmp_PKIStatus_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [40 x i8], align 16
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %13 [
    i32 134, label %6
    i32 133, label %7
    i32 131, label %8
    i32 128, label %9
    i32 129, label %10
    i32 130, label %11
    i32 132, label %12
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %21

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @BIO_snprintf(i8* %14, i32 40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @CMP_R_ERROR_PARSING_PKISTATUS, align 4
  %18 = call i32 @CMPerr(i32 0, i32 %17)
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %20 = call i32 @ossl_cmp_add_error_data(i8* %19)
  store i8* null, i8** %2, align 8
  br label %21

21:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i32 @ossl_cmp_add_error_data(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
