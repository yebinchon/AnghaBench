; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_property_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_property_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VT_DISPATCH = common dso_local global i64 0, align 8
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@DISP_E_BADPARAMCOUNT = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"this variant has no properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i8**, i32*)* @com_property_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @com_property_read(i32* %0, i32* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @ZVAL_NULL(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i64 @V_VT(i32* %20)
  %22 = load i64, i64* @VT_DISPATCH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %5
  %25 = call i32 @VariantInit(i32* %12)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ZSTR_VAL(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ZSTR_LEN(i32* %29)
  %31 = load i32, i32* @DISPATCH_METHOD, align 4
  %32 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @php_com_do_invoke(%struct.TYPE_3__* %26, i32 %28, i32 %30, i32 %33, i32* %12, i32 0, i32* null, i32 1)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @php_com_zval_from_variant(i32* %39, i32* %12, i32 %42)
  %44 = call i32 @VariantClear(i32* %12)
  br label %56

45:                                               ; preds = %24
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @DISP_E_BADPARAMCOUNT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @ZVAL_STR(i32* %14, i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @php_com_saproxy_create(i32* %52, i32* %53, i32* %14)
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %38
  br label %60

57:                                               ; preds = %5
  %58 = load i32, i32* @E_INVALIDARG, align 4
  %59 = call i32 @php_com_throw_exception(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32*, i32** %10, align 8
  ret i32* %61
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @php_com_do_invoke(%struct.TYPE_3__*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @php_com_zval_from_variant(i32*, i32*, i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local i32 @php_com_saproxy_create(i32*, i32*, i32*) #1

declare dso_local i32 @php_com_throw_exception(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
