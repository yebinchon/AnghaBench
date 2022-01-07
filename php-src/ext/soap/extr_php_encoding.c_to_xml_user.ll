; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_user.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@IS_UNDEF = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Encoding: Error calling to_xml callback\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@SOAP_ENCODED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @to_xml_user(%struct.TYPE_19__* %0, i32* %1, i32 %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = icmp ne %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %72

19:                                               ; preds = %14
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @Z_TYPE(i32 %24)
  %26 = load i64, i64* @IS_UNDEF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %19
  %29 = call i32 @ZVAL_NULL(i32* %10)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @call_user_function(i32* null, i32* null, i32* %33, i32* %10, i32 1, i32* %34)
  %36 = load i64, i64* @FAILURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @E_ERROR, align 4
  %40 = call i32 @soap_error0(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @Z_TYPE(i32 %42)
  %44 = load i64, i64* @IS_STRING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @Z_STRVAL(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @Z_STRLEN(i32 %49)
  %51 = call %struct.TYPE_18__* @soap_xmlParseMemory(i32 %48, i32 %50)
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %11, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_17__* @xmlDocCopyNode(i64 %62, i32 %65, i32 1)
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %9, align 8
  br label %67

67:                                               ; preds = %59, %54, %46
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = call i32 @xmlFreeDoc(%struct.TYPE_18__* %68)
  br label %70

70:                                               ; preds = %67, %41
  %71 = call i32 @zval_ptr_dtor(i32* %10)
  br label %72

72:                                               ; preds = %70, %19, %14, %4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = icmp ne %struct.TYPE_17__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %77 = call %struct.TYPE_17__* @xmlNewNode(i32* null, i32 %76)
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %9, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = call i32 @xmlAddChild(%struct.TYPE_17__* %79, %struct.TYPE_17__* %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SOAP_ENCODED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = call i32 @set_ns_and_type(%struct.TYPE_17__* %86, %struct.TYPE_19__* %87)
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  ret %struct.TYPE_17__* %90
}

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local %struct.TYPE_18__* @soap_xmlParseMemory(i32, i32) #1

declare dso_local i32 @Z_STRVAL(i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

declare dso_local %struct.TYPE_17__* @xmlDocCopyNode(i64, i32, i32) #1

declare dso_local i32 @xmlFreeDoc(%struct.TYPE_18__*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local %struct.TYPE_17__* @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @set_ns_and_type(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
