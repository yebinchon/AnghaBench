; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_SSLerrmessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-openssl.c_SSLerrmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_ERR_LEN = common dso_local global i32 0, align 4
@ssl_nomem = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"no SSL error reported\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SSL error code %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @SSLerrmessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SSLerrmessage(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @SSL_ERR_LEN, align 4
  %7 = call i8* @malloc(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** @ssl_nomem, align 8
  store i8* %11, i8** %2, align 8
  br label %39

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @SSL_ERR_LEN, align 4
  %18 = call i8* @libpq_gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %17, i8* %18)
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %2, align 8
  br label %39

21:                                               ; preds = %12
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @ERR_reason_error_string(i64 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @SSL_ERR_LEN, align 4
  %30 = call i32 @strlcpy(i8* %27, i8* %28, i32 %29)
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %2, align 8
  br label %39

32:                                               ; preds = %21
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @SSL_ERR_LEN, align 4
  %35 = call i8* @libpq_gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %3, align 8
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %32, %26, %15, %10
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
