; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_ossl_property_parse_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_ossl_property_parse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ossl_property_parse_init.predefined_names = internal constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@ossl_property_true = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@ossl_property_false = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_property_parse_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @OSSL_NELEM(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @ossl_property_parse_init.predefined_names, i64 0, i64 0))
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ossl_property_parse_init.predefined_names, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @ossl_property_name(i32* %10, i8* %13, i32 1)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %31

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %5

21:                                               ; preds = %5
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @ossl_property_value(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i8* %23, i8** @ossl_property_true, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @ossl_property_value(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i8* %27, i8** @ossl_property_false, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  br label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %29, %16
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @OSSL_NELEM(i8**) #1

declare dso_local i64 @ossl_property_name(i32*, i8*, i32) #1

declare dso_local i8* @ossl_property_value(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
