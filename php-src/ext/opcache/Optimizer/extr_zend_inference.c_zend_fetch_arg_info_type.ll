; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_fetch_arg_info_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_fetch_arg_info_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_fetch_arg_info_type(i32* %0, %struct.TYPE_3__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ZEND_TYPE_IS_SET(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @MAY_BE_ANY, align 4
  %17 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAY_BE_RC1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAY_BE_RCN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ZEND_TYPE_PURE_MASK(i32 %30)
  %32 = call i32 @zend_convert_type_declaration_mask(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32**, i32*** %7, align 8
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ZEND_TYPE_HAS_CLASS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %27
  %40 = load i32, i32* @MAY_BE_OBJECT, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ZEND_TYPE_HAS_NAME(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ZEND_TYPE_NAME(i32 %51)
  %53 = call i32* @zend_string_tolower(i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32* @get_class_entry(i32* %54, i32* %55)
  %57 = load i32**, i32*** %7, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @zend_string_release_ex(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %48, %39
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MAY_BE_STRING, align 4
  %64 = load i32, i32* @MAY_BE_ARRAY, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MAY_BE_OBJECT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %62, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @MAY_BE_RC1, align 4
  %74 = load i32, i32* @MAY_BE_RCN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @ZEND_TYPE_IS_SET(i32) #1

declare dso_local i32 @zend_convert_type_declaration_mask(i32) #1

declare dso_local i32 @ZEND_TYPE_PURE_MASK(i32) #1

declare dso_local i64 @ZEND_TYPE_HAS_CLASS(i32) #1

declare dso_local i64 @ZEND_TYPE_HAS_NAME(i32) #1

declare dso_local i32* @zend_string_tolower(i32) #1

declare dso_local i32 @ZEND_TYPE_NAME(i32) #1

declare dso_local i32* @get_class_entry(i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
