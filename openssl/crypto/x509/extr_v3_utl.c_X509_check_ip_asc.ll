; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_X509_check_ip_asc.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_X509_check_ip_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEN_IPADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_ip_asc(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %27

13:                                               ; preds = %3
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @a2i_ipadd(i8* %14, i8* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -2, i32* %4, align 4
  br label %27

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GEN_IPADD, align 4
  %26 = call i32 @do_x509_check(i32* %21, i8* %22, i64 %23, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %19, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @a2i_ipadd(i8*, i8*) #1

declare dso_local i32 @do_x509_check(i32*, i8*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
