; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_read_dimension.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_read_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VT_DISPATCH = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@DISPID_VALUE = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"this variant is not an array type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32*)* @com_read_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @com_read_dimension(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @ZVAL_NULL(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i64 @V_VT(i32* %16)
  %18 = load i64, i64* @VT_DISPATCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = call i32 @VariantInit(i32* %10)
  %22 = load i64, i64* @SUCCESS, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = load i32, i32* @DISPID_VALUE, align 4
  %25 = load i32, i32* @DISPATCH_METHOD, align 4
  %26 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @php_com_do_invoke_by_id(%struct.TYPE_3__* %23, i32 %24, i32 %27, i32* %10, i32 1, i32* %28, i32 0, i32 0)
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @php_com_zval_from_variant(i32* %32, i32* %10, i32 %35)
  %37 = call i32 @VariantClear(i32* %10)
  br label %38

38:                                               ; preds = %31, %20
  br label %78

39:                                               ; preds = %4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i64 @V_ISARRAY(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @convert_to_long(i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @V_ARRAY(i32* %48)
  %50 = call i32 @SafeArrayGetDim(i32 %49)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @Z_LVAL_P(i32* %55)
  %57 = trunc i64 %56 to i32
  %58 = call i64 @php_com_safearray_get_elem(i32* %54, i32* %10, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @php_com_wrap_variant(i32* %61, i32* %10, i32 %64)
  %66 = call i32 @VariantClear(i32* %10)
  br label %67

67:                                               ; preds = %60, %52
  br label %73

68:                                               ; preds = %44
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @php_com_saproxy_create(i32* %69, i32* %70, i32* %71)
  br label %73

73:                                               ; preds = %68, %67
  br label %77

74:                                               ; preds = %39
  %75 = load i32, i32* @E_INVALIDARG, align 4
  %76 = call i32 @php_com_throw_exception(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32*, i32** %8, align 8
  ret i32* %79
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @php_com_do_invoke_by_id(%struct.TYPE_3__*, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @php_com_zval_from_variant(i32*, i32*, i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @V_ISARRAY(i32*) #1

declare dso_local i32 @convert_to_long(i32*) #1

declare dso_local i32 @SafeArrayGetDim(i32) #1

declare dso_local i32 @V_ARRAY(i32*) #1

declare dso_local i64 @php_com_safearray_get_elem(i32*, i32*, i32) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32 @php_com_wrap_variant(i32*, i32*, i32) #1

declare dso_local i32 @php_com_saproxy_create(i32*, i32*, i32*) #1

declare dso_local i32 @php_com_throw_exception(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
