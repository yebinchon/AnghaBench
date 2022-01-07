; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_lib.c_TS_ASN1_INTEGER_print_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_lib.c_TS_ASN1_INTEGER_print_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_ASN1_INTEGER_print_bio(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @ASN1_INTEGER_to_BN(i32* %9, i32* null)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @BN_bn2hex(i32* %15)
  store i8* %16, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @BIO_write(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i64 @BIO_write(i32* %26, i8* %27, i32 %29)
  %31 = icmp sgt i64 %30, 0
  br label %32

32:                                               ; preds = %25, %18
  %33 = phi i1 [ false, %18 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @OPENSSL_free(i8* %35)
  br label %37

37:                                               ; preds = %32, %14
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @BN_free(i32* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
