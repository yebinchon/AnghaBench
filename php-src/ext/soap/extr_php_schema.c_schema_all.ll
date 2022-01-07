; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_all.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8* }

@XSD_CONTENT_ALL = common dso_local global i32 0, align 4
@delete_model = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Parsing Schema: unexpected <%s> in all\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*)* @schema_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_all(i32 %0, i32 %1, %struct.TYPE_16__* %2, %struct.TYPE_17__* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %10, align 8
  %13 = call i8* @emalloc(i32 4)
  %14 = bitcast i8* %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %12, align 8
  %15 = load i32, i32* @XSD_CONTENT_ALL, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = call i8* @emalloc(i32 4)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @delete_model, align 4
  %27 = call i32 @zend_hash_init(i8* %25, i32 0, i32* null, i32 %26, i32 0)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %33, align 8
  br label %41

34:                                               ; preds = %5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %40 = call i32 @zend_hash_next_index_insert_ptr(i8* %38, %struct.TYPE_18__* %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = call i32 @schema_min_max(%struct.TYPE_16__* %42, %struct.TYPE_18__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %11, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %52 = call i64 @node_is_equal(%struct.TYPE_16__* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %11, align 8
  br label %58

58:                                               ; preds = %54, %50, %41
  br label %59

59:                                               ; preds = %79, %58
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %61 = icmp ne %struct.TYPE_16__* %60, null
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %64 = call i64 @node_is_equal(%struct.TYPE_16__* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %72 = call i32 @schema_element(i32 %67, i32 %68, %struct.TYPE_16__* %69, %struct.TYPE_17__* %70, %struct.TYPE_18__* %71)
  br label %79

73:                                               ; preds = %62
  %74 = load i32, i32* @E_ERROR, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @soap_error1(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %11, align 8
  br label %59

83:                                               ; preds = %59
  %84 = load i32, i32* @TRUE, align 4
  ret i32 %84
}

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @schema_min_max(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @schema_element(i32, i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
