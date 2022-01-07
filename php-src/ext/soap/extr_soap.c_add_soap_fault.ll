; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_add_soap_fault.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_add_soap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"__soap_fault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_soap_fault(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = call i32 @ZVAL_NULL(i32* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @set_soap_fault(i32* %11, i32* null, i8* %13, i8* %14, i8* %15, i32* %16, i32* null)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @add_property_zval(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %11)
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @Z_DELREF(i32 %20)
  ret void
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @set_soap_fault(i32*, i32*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @add_property_zval(i32*, i8*, i32*) #1

declare dso_local i32 @Z_DELREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
