; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_com.c_php_com_get_id_of_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_com.c_php_com_get_id_of_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32 }

@S_OK = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_com_get_id_of_name(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32* @zend_hash_str_find(i64 %27, i8* %28, i64 %29)
  store i32* %30, i32** %12, align 8
  %31 = icmp ne i32* null, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32*, i32** %12, align 8
  %34 = call i64 @Z_LVAL_P(i32* %33)
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* @S_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %115

37:                                               ; preds = %24, %19
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @php_com_string_to_olestring(i8* %38, i64 %39, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %37
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 @ITypeInfo_GetIDsOfNames(i32* %51, i32** %10, i32 1, i64* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %48
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @V_DISPATCH(i32* %59)
  %61 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %62 = load i64*, i64** %9, align 8
  %63 = call i32 @IDispatch_GetIDsOfNames(i32 %60, i32* @IID_NULL, i32** %10, i32 1, i32 %61, i64* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @SUCCEEDED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ITypeInfo_Release(i32* %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %57
  br label %75

75:                                               ; preds = %74, %48
  br label %83

76:                                               ; preds = %37
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = call i32 @V_DISPATCH(i32* %78)
  %80 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %81 = load i64*, i64** %9, align 8
  %82 = call i32 @IDispatch_GetIDsOfNames(i32 %79, i32* @IID_NULL, i32** %10, i32 1, i32 %80, i64* %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @efree(i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i64 @SUCCEEDED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ALLOC_HASHTABLE(i64 %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @zend_hash_init(i64 %101, i32 2, i32* null, i32* null, i32 0)
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @ZVAL_LONG(i32* %13, i64 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @zend_hash_str_update(i64 %109, i8* %110, i64 %111, i32* %13)
  br label %113

113:                                              ; preds = %103, %83
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %32
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @zend_hash_str_find(i64, i8*, i64) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32* @php_com_string_to_olestring(i8*, i64, i32) #1

declare dso_local i32 @ITypeInfo_GetIDsOfNames(i32*, i32**, i32, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDispatch_GetIDsOfNames(i32, i32*, i32**, i32, i32, i64*) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @ALLOC_HASHTABLE(i64) #1

declare dso_local i32 @zend_hash_init(i64, i32, i32*, i32*, i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

declare dso_local i32 @zend_hash_str_update(i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
