; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_bool.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@SOAP_ENCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @to_xml_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_xml_bool(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @xmlNewNode(i32* null, i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @xmlAddChild(i32 %12, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @FIND_ZVAL_NULL(i32* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @zend_is_true(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @BAD_CAST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @xmlNodeSetContent(i32 %23, i32 %24)
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @xmlNodeSetContent(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SOAP_ENCODED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @set_ns_and_type(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @FIND_ZVAL_NULL(i32*, i32, i32) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @xmlNodeSetContent(i32, i32) #1

declare dso_local i32 @set_ns_and_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
