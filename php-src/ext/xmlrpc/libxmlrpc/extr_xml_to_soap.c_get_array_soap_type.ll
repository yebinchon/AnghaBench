; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_get_array_soap_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_get_array_soap_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_ANY = common dso_local global i8* null, align 8
@TOKEN_NULL = common dso_local global i8* null, align 8
@TOKEN_INT = common dso_local global i8* null, align 8
@TOKEN_DOUBLE = common dso_local global i8* null, align 8
@TOKEN_BOOLEAN = common dso_local global i8* null, align 8
@TOKEN_STRING = common dso_local global i8* null, align 8
@TOKEN_BASE64 = common dso_local global i8* null, align 8
@TOKEN_DATETIME = common dso_local global i8* null, align 8
@TOKEN_STRUCT = common dso_local global i8* null, align 8
@TOKEN_ARRAY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_array_soap_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_array_soap_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i32 130, i32* %3, align 4
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @XMLRPC_VectorRewind(i64 %7)
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** @TOKEN_ANY, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @XMLRPC_GetValueTypeEasy(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @XMLRPC_VectorNext(i64 %12)
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @XMLRPC_GetValueTypeEasy(i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 50
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %17
  store i32 130, i32* %3, align 4
  br label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @XMLRPC_VectorNext(i64 %29)
  store i64 %30, i64* %4, align 8
  br label %14

31:                                               ; preds = %25, %14
  %32 = load i32, i32* %3, align 4
  switch i32 %32, label %55 [
    i32 130, label %33
    i32 133, label %35
    i32 132, label %37
    i32 134, label %39
    i32 136, label %41
    i32 129, label %43
    i32 137, label %45
    i32 135, label %47
    i32 128, label %49
    i32 138, label %51
    i32 131, label %53
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** @TOKEN_ANY, align 8
  store i8* %34, i8** %6, align 8
  br label %55

35:                                               ; preds = %31
  %36 = load i8*, i8** @TOKEN_NULL, align 8
  store i8* %36, i8** %6, align 8
  br label %55

37:                                               ; preds = %31
  %38 = load i8*, i8** @TOKEN_INT, align 8
  store i8* %38, i8** %6, align 8
  br label %55

39:                                               ; preds = %31
  %40 = load i8*, i8** @TOKEN_DOUBLE, align 8
  store i8* %40, i8** %6, align 8
  br label %55

41:                                               ; preds = %31
  %42 = load i8*, i8** @TOKEN_BOOLEAN, align 8
  store i8* %42, i8** %6, align 8
  br label %55

43:                                               ; preds = %31
  %44 = load i8*, i8** @TOKEN_STRING, align 8
  store i8* %44, i8** %6, align 8
  br label %55

45:                                               ; preds = %31
  %46 = load i8*, i8** @TOKEN_BASE64, align 8
  store i8* %46, i8** %6, align 8
  br label %55

47:                                               ; preds = %31
  %48 = load i8*, i8** @TOKEN_DATETIME, align 8
  store i8* %48, i8** %6, align 8
  br label %55

49:                                               ; preds = %31
  %50 = load i8*, i8** @TOKEN_STRUCT, align 8
  store i8* %50, i8** %6, align 8
  br label %55

51:                                               ; preds = %31
  %52 = load i8*, i8** @TOKEN_ARRAY, align 8
  store i8* %52, i8** %6, align 8
  br label %55

53:                                               ; preds = %31
  %54 = load i8*, i8** @TOKEN_STRUCT, align 8
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %31, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i64 @XMLRPC_VectorRewind(i64) #1

declare dso_local i32 @XMLRPC_GetValueTypeEasy(i64) #1

declare dso_local i64 @XMLRPC_VectorNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
