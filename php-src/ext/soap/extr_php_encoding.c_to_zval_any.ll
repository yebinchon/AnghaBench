; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_any.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@sdl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_16__*)* @to_zval_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @to_zval_any(i32* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %11 = load i32, i32* @sdl, align 4
  %12 = call %struct.TYPE_14__* @SOAP_GLOBAL(i32 %11)
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %77

14:                                               ; preds = %3
  %15 = load i32, i32* @sdl, align 4
  %16 = call %struct.TYPE_14__* @SOAP_GLOBAL(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %20
  %26 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 8, i1 false)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @smart_str_appends(%struct.TYPE_17__* %9, i8* %44)
  %46 = call i32 @smart_str_appendc(%struct.TYPE_17__* %9, i8 signext 58)
  br label %47

47:                                               ; preds = %38, %31, %25
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @smart_str_appends(%struct.TYPE_17__* %9, i8* %51)
  %53 = call i32 @smart_str_0(%struct.TYPE_17__* %9)
  %54 = load i32, i32* @sdl, align 4
  %55 = call %struct.TYPE_14__* @SOAP_GLOBAL(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_18__* @zend_hash_find_ptr(i64 %57, i32 %59)
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %10, align 8
  %61 = icmp ne %struct.TYPE_18__* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %47
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = call i32 @smart_str_free(%struct.TYPE_17__* %9)
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = call i32* @master_to_zval_int(i32* %69, i64 %72, %struct.TYPE_16__* %73)
  store i32* %74, i32** %4, align 8
  br label %90

75:                                               ; preds = %62, %47
  %76 = call i32 @smart_str_free(%struct.TYPE_17__* %9)
  br label %77

77:                                               ; preds = %75, %20, %14, %3
  %78 = call i32 (...) @xmlBufferCreate()
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = call i32 @xmlNodeDump(i32 %79, i32* null, %struct.TYPE_16__* %80, i32 0, i32 0)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @xmlBufferContent(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @ZVAL_STRING(i32* %82, i8* %85)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @xmlBufferFree(i32 %87)
  %89 = load i32*, i32** %5, align 8
  store i32* %89, i32** %4, align 8
  br label %90

90:                                               ; preds = %77, %67
  %91 = load i32*, i32** %4, align 8
  ret i32* %91
}

declare dso_local %struct.TYPE_14__* @SOAP_GLOBAL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_17__*, i8 signext) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @zend_hash_find_ptr(i64, i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_17__*) #1

declare dso_local i32* @master_to_zval_int(i32*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @xmlBufferCreate(...) #1

declare dso_local i32 @xmlNodeDump(i32, i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i64 @xmlBufferContent(i32) #1

declare dso_local i32 @xmlBufferFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
