; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_double.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@precision = common dso_local global i32 0, align 4
@MAX_LENGTH_OF_DOUBLE = common dso_local global i64 0, align 8
@SOAP_ENCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @to_xml_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_xml_double(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @xmlNewNode(i32* null, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @xmlAddChild(i32 %14, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @FIND_ZVAL_NULL(i32* %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @zval_get_double(i32* %21)
  %23 = call i32 @ZVAL_DOUBLE(i32* %10, i32 %22)
  %24 = load i32, i32* @precision, align 4
  %25 = call i32 @EG(i32 %24)
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @precision, align 4
  %29 = call i32 @EG(i32 %28)
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 17, %30 ]
  %33 = load i64, i64* @MAX_LENGTH_OF_DOUBLE, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i64 @safe_emalloc(i32 %32, i32 1, i64 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %11, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @Z_DVAL(i32 %37)
  %39 = load i32, i32* @precision, align 4
  %40 = call i32 @EG(i32 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @php_gcvt(i32 %38, i32 %40, i8 signext 46, i8 signext 69, i8* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @BAD_CAST(i8* %44)
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @xmlNodeSetContentLen(i32 %43, i32 %45, i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @efree(i8* %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SOAP_ENCODED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @set_ns_and_type(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %31
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @FIND_ZVAL_NULL(i32*, i32, i32) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, i32) #1

declare dso_local i32 @zval_get_double(i32*) #1

declare dso_local i64 @safe_emalloc(i32, i32, i64) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @php_gcvt(i32, i32, i8 signext, i8 signext, i8*) #1

declare dso_local i32 @Z_DVAL(i32) #1

declare dso_local i32 @xmlNodeSetContentLen(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @set_ns_and_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
