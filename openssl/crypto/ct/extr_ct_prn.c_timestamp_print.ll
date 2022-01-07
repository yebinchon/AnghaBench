; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_prn.c_timestamp_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_prn.c_timestamp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%.14s.%03dZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @timestamp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timestamp_print(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [20 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call i32* (...) @ASN1_GENERALIZEDTIME_new()
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %36

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, 86400000
  %15 = load i32, i32* %3, align 4
  %16 = srem i32 %15, 86400000
  %17 = sdiv i32 %16, 1000
  %18 = call i32 @ASN1_GENERALIZEDTIME_adj(i32* %12, i32 0, i32 %14, i32 %17)
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ASN1_STRING_get0_data(i32* %20)
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 1000
  %24 = call i32 @BIO_snprintf(i8* %19, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %27 = call i64 @ASN1_GENERALIZEDTIME_set_string(i32* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %11
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ASN1_GENERALIZEDTIME_free(i32* %34)
  br label %36

36:                                               ; preds = %33, %10
  ret void
}

declare dso_local i32* @ASN1_GENERALIZEDTIME_new(...) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_adj(i32*, i32, i32, i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i64 @ASN1_GENERALIZEDTIME_set_string(i32*, i8*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(i32*, i32*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
