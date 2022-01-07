; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_execute_HDR_push1_freeText_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_execute_HDR_push1_freeText_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"A free text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @execute_HDR_push1_freeText_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_HDR_push1_freeText_test(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = call i32* (...) @ASN1_UTF8STRING_new()
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ASN1_STRING_set(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ossl_cmp_hdr_push1_freeText(%struct.TYPE_5__* %18, i32* %19)
  %21 = call i32 @TEST_int_eq(i32 %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sk_ASN1_UTF8STRING_value(i32 %29, i32 0)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ASN1_STRING_cmp(i32 %30, i32* %31)
  %33 = call i32 @TEST_int_eq(i32 %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %39

36:                                               ; preds = %24
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ASN1_UTF8STRING_free(i32* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %35, %23, %14, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32* @ASN1_UTF8STRING_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @ossl_cmp_hdr_push1_freeText(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ASN1_STRING_cmp(i32, i32*) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_value(i32, i32) #1

declare dso_local i32 @ASN1_UTF8STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
