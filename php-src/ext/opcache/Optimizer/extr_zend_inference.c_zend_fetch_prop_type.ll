; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_fetch_prop_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_fetch_prop_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32**)* @zend_fetch_prop_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_fetch_prop_type(i32* %0, %struct.TYPE_3__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32**, i32*** %7, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32**, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %92

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ZEND_TYPE_IS_SET(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ZEND_TYPE_PURE_MASK(i32 %26)
  %28 = call i32 @zend_convert_type_declaration_mask(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MAY_BE_STRING, align 4
  %31 = load i32, i32* @MAY_BE_ARRAY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MAY_BE_OBJECT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %29, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load i32, i32* @MAY_BE_RC1, align 4
  %41 = load i32, i32* @MAY_BE_RCN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %23
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ZEND_TYPE_HAS_CLASS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %45
  %52 = load i32, i32* @MAY_BE_OBJECT, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32**, i32*** %7, align 8
  %56 = icmp ne i32** %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ZEND_TYPE_HAS_CE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @ZEND_TYPE_CE(i32 %66)
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  br label %88

69:                                               ; preds = %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ZEND_TYPE_HAS_NAME(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ZEND_TYPE_NAME(i32 %78)
  %80 = call i32* @zend_string_tolower(i32 %79)
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32* @get_class_entry(i32* %81, i32* %82)
  %84 = load i32**, i32*** %7, align 8
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @zend_string_release(i32* %85)
  br label %87

87:                                               ; preds = %75, %69
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88, %51
  br label %90

90:                                               ; preds = %89, %45
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %104

92:                                               ; preds = %17, %14
  %93 = load i32, i32* @MAY_BE_ANY, align 4
  %94 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MAY_BE_RC1, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MAY_BE_RCN, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %92, %90
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @ZEND_TYPE_IS_SET(i32) #1

declare dso_local i32 @zend_convert_type_declaration_mask(i32) #1

declare dso_local i32 @ZEND_TYPE_PURE_MASK(i32) #1

declare dso_local i64 @ZEND_TYPE_HAS_CLASS(i32) #1

declare dso_local i64 @ZEND_TYPE_HAS_CE(i32) #1

declare dso_local i32* @ZEND_TYPE_CE(i32) #1

declare dso_local i64 @ZEND_TYPE_HAS_NAME(i32) #1

declare dso_local i32* @zend_string_tolower(i32) #1

declare dso_local i32 @ZEND_TYPE_NAME(i32) #1

declare dso_local i32* @get_class_entry(i32*, i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
