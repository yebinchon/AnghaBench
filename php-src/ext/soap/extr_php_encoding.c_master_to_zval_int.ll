; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_master_to_zval_int.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_master_to_zval_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_19__, i32* (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*)* }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@typemap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@XSI_NAMESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_25__*, %struct.TYPE_22__*)* @master_to_zval_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @master_to_zval_int(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_24__, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_24__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %15 = load i32, i32* @typemap, align 4
  %16 = call i64 @SOAP_GLOBAL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %111

18:                                               ; preds = %3
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %18
  %25 = bitcast %struct.TYPE_24__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @smart_str_appends(%struct.TYPE_24__* %7, i8* %35)
  %37 = call i32 @smart_str_appendc(%struct.TYPE_24__* %7, i8 signext 58)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @smart_str_appends(%struct.TYPE_24__* %7, i8* %42)
  %44 = call i32 @smart_str_0(%struct.TYPE_24__* %7)
  %45 = load i32, i32* @typemap, align 4
  %46 = call i64 @SOAP_GLOBAL(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_25__* @zend_hash_find_ptr(i64 %46, i32 %48)
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %8, align 8
  %50 = icmp ne %struct.TYPE_25__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %5, align 8
  br label %53

53:                                               ; preds = %51, %38
  %54 = call i32 @smart_str_free(%struct.TYPE_24__* %7)
  br label %110

55:                                               ; preds = %18
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @XSI_NAMESPACE, align 4
  %60 = call %struct.TYPE_23__* @get_attribute_ex(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %59)
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %9, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %62 = icmp ne %struct.TYPE_23__* %61, null
  br i1 %62, label %63, label %109

63:                                               ; preds = %55
  %64 = bitcast %struct.TYPE_24__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %64, i8 0, i64 8, i1 false)
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @parse_namespace(i32 %69, i8** %13, i8** %12)
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @BAD_CAST(i8* %75)
  %77 = call %struct.TYPE_21__* @xmlSearchNs(i32 %73, %struct.TYPE_22__* %74, i32 %76)
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %11, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %79 = icmp ne %struct.TYPE_21__* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %63
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @smart_str_appends(%struct.TYPE_24__* %14, i8* %84)
  %86 = call i32 @smart_str_appendc(%struct.TYPE_24__* %14, i8 signext 58)
  br label %87

87:                                               ; preds = %80, %63
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @smart_str_appends(%struct.TYPE_24__* %14, i8* %88)
  %90 = call i32 @smart_str_0(%struct.TYPE_24__* %14)
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @efree(i8* %91)
  %93 = load i8*, i8** %12, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @efree(i8* %96)
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* @typemap, align 4
  %100 = call i64 @SOAP_GLOBAL(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_25__* @zend_hash_find_ptr(i64 %100, i32 %102)
  store %struct.TYPE_25__* %103, %struct.TYPE_25__** %10, align 8
  %104 = icmp ne %struct.TYPE_25__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* %106, %struct.TYPE_25__** %5, align 8
  br label %107

107:                                              ; preds = %105, %98
  %108 = call i32 @smart_str_free(%struct.TYPE_24__* %14)
  br label %109

109:                                              ; preds = %107, %55
  br label %110

110:                                              ; preds = %109, %53
  br label %111

111:                                              ; preds = %110, %3
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load i32* (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*)*, i32* (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*)** %113, align 8
  %115 = icmp ne i32* (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*)* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load i32* (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*)*, i32* (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*)** %118, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %124 = call i32* %119(i32* %120, %struct.TYPE_19__* %122, %struct.TYPE_22__* %123)
  store i32* %124, i32** %4, align 8
  br label %125

125:                                              ; preds = %116, %111
  %126 = load i32*, i32** %4, align 8
  ret i32* %126
}

declare dso_local i64 @SOAP_GLOBAL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @zend_hash_find_ptr(i64, i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @get_attribute_ex(i32, i8*, i32) #1

declare dso_local i32 @parse_namespace(i32, i8**, i8**) #1

declare dso_local %struct.TYPE_21__* @xmlSearchNs(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
