; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_do_bind_traits.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_do_bind_traits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@ZEND_FETCH_CLASS_TRAIT = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s cannot use %s - it is not a trait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @zend_do_bind_traits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_do_bind_traits(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__**, align 8
  %4 = alloca %struct.TYPE_21__**, align 8
  %5 = alloca %struct.TYPE_21__**, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ZEND_ASSERT(i32 %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_21__** @emalloc(i32 %19)
  store %struct.TYPE_21__** %20, %struct.TYPE_21__*** %5, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %94, %1
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %21
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ZEND_FETCH_CLASS_TRAIT, align 4
  %43 = call %struct.TYPE_21__* @zend_fetch_class_by_name(i32 %34, i32 %41, i32 %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %6, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = icmp eq %struct.TYPE_21__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @UNEXPECTED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  br label %126

50:                                               ; preds = %27
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @UNEXPECTED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %50
  %62 = load i32, i32* @E_ERROR, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ZSTR_VAL(i32 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ZSTR_VAL(i32 %69)
  %71 = call i32 @zend_error_noreturn(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70)
  br label %126

72:                                               ; preds = %50
  store i64 0, i64* %8, align 8
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %78, i64 %79
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = icmp eq %struct.TYPE_21__* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %89

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %73

89:                                               ; preds = %84, %73
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %91, i64 %92
  store %struct.TYPE_21__* %90, %struct.TYPE_21__** %93, align 8
  br label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %21

97:                                               ; preds = %21
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %99 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %100 = call i32 @zend_traits_init_trait_structures(%struct.TYPE_21__* %98, %struct.TYPE_21__** %99, %struct.TYPE_21__*** %3, %struct.TYPE_21__*** %4)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %102 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %103 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %3, align 8
  %104 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %105 = call i32 @zend_do_traits_method_binding(%struct.TYPE_21__* %101, %struct.TYPE_21__** %102, %struct.TYPE_21__** %103, %struct.TYPE_21__** %104)
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %107 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %108 = call i32 @zend_do_check_for_inconsistent_traits_aliasing(%struct.TYPE_21__* %106, %struct.TYPE_21__** %107)
  %109 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %110 = icmp ne %struct.TYPE_21__** %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %113 = call i32 @efree(%struct.TYPE_21__** %112)
  br label %114

114:                                              ; preds = %111, %97
  %115 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %3, align 8
  %116 = icmp ne %struct.TYPE_21__** %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %3, align 8
  %119 = call i32 @efree(%struct.TYPE_21__** %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %123 = call i32 @zend_do_traits_property_binding(%struct.TYPE_21__* %121, %struct.TYPE_21__** %122)
  %124 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %125 = call i32 @efree(%struct.TYPE_21__** %124)
  br label %126

126:                                              ; preds = %120, %61, %49
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local %struct.TYPE_21__** @emalloc(i32) #1

declare dso_local %struct.TYPE_21__* @zend_fetch_class_by_name(i32, i32, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @zend_traits_init_trait_structures(%struct.TYPE_21__*, %struct.TYPE_21__**, %struct.TYPE_21__***, %struct.TYPE_21__***) #1

declare dso_local i32 @zend_do_traits_method_binding(%struct.TYPE_21__*, %struct.TYPE_21__**, %struct.TYPE_21__**, %struct.TYPE_21__**) #1

declare dso_local i32 @zend_do_check_for_inconsistent_traits_aliasing(%struct.TYPE_21__*, %struct.TYPE_21__**) #1

declare dso_local i32 @efree(%struct.TYPE_21__**) #1

declare dso_local i32 @zend_do_traits_property_binding(%struct.TYPE_21__*, %struct.TYPE_21__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
