; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_object_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_object_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VT_EMPTY = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@VT_DISPATCH = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@DISPID_VALUE = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@VT_INT = common dso_local global i64 0, align 8
@VT_R8 = common dso_local global i64 0, align 8
@VT_BOOL = common dso_local global i64 0, align 8
@VT_BSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @com_object_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com_object_cast(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @VT_EMPTY, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* @S_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @ZVAL_NULL(i32* %16)
  %18 = call i32 @VariantInit(i32* %9)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i64 @V_VT(i32* %20)
  %22 = load i64, i64* @VT_DISPATCH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load i64, i64* @SUCCESS, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = load i32, i32* @DISPID_VALUE, align 4
  %28 = load i32, i32* @DISPATCH_METHOD, align 4
  %29 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @php_com_do_invoke_by_id(%struct.TYPE_3__* %26, i32 %27, i32 %30, i32* %9, i32 0, i32* null, i32 1, i32 0)
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @VariantCopy(i32* %9, i32* %35)
  br label %37

37:                                               ; preds = %33, %24
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = call i32 @VariantCopy(i32* %9, i32* %40)
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %52 [
    i32 132, label %44
    i32 128, label %44
    i32 134, label %46
    i32 133, label %48
    i32 130, label %48
    i32 129, label %48
    i32 131, label %50
  ]

44:                                               ; preds = %42, %42
  %45 = load i64, i64* @VT_INT, align 8
  store i64 %45, i64* %10, align 8
  br label %53

46:                                               ; preds = %42
  %47 = load i64, i64* @VT_R8, align 8
  store i64 %47, i64* %10, align 8
  br label %53

48:                                               ; preds = %42, %42, %42
  %49 = load i64, i64* @VT_BOOL, align 8
  store i64 %49, i64* %10, align 8
  br label %53

50:                                               ; preds = %42
  %51 = load i64, i64* @VT_BSTR, align 8
  store i64 %51, i64* %10, align 8
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %50, %48, %46, %44
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @VT_EMPTY, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @V_VT(i32* %9)
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @VariantChangeType(i32* %9, i32* %9, i32 0, i64 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %57, %53
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @SUCCEEDED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @php_com_zval_from_variant(i32* %69, i32* %9, i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = call i32 @VariantClear(i32* %9)
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @SUCCEEDED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* @SUCCESS, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %87

82:                                               ; preds = %74
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @zend_std_cast_object_tostring(i32* %83, i32* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64 @php_com_do_invoke_by_id(%struct.TYPE_3__*, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @VariantCopy(i32*, i32*) #1

declare dso_local i32 @VariantChangeType(i32*, i32*, i32, i64) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @php_com_zval_from_variant(i32*, i32*, i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @zend_std_cast_object_tostring(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
