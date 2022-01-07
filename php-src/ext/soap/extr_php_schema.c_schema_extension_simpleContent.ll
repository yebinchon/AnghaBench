; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_extension_simpleContent.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_extension_simpleContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Parsing Schema: extension has no 'base' attribute\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"attributeGroup\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"anyAttribute\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Parsing Schema: unexpected <%s> in extension\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_24__*)* @schema_extension_simpleContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_extension_simpleContent(i32 %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %8, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_23__* @get_attribute(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %10, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %19 = icmp ne %struct.TYPE_23__* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @parse_namespace(i32 %25, i8** %11, i8** %12)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @BAD_CAST(i8* %31)
  %33 = call %struct.TYPE_21__* @xmlSearchNs(i32 %29, %struct.TYPE_22__* %30, i32 %32)
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %13, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %35 = icmp ne %struct.TYPE_21__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @BAD_CAST(i8* %42)
  %44 = call i32 @get_create_encoder(i32 %37, %struct.TYPE_24__* %38, i32 %41, i32 %43)
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %36, %20
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @efree(i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @efree(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %63

60:                                               ; preds = %4
  %61 = load i32, i32* @E_ERROR, align 4
  %62 = call i32 @soap_error0(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %59
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %9, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = icmp ne %struct.TYPE_22__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = call i64 @node_is_equal(%struct.TYPE_22__* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %9, align 8
  br label %77

77:                                               ; preds = %73, %69, %63
  br label %78

78:                                               ; preds = %117, %77
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = icmp ne %struct.TYPE_22__* %79, null
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %83 = call i64 @node_is_equal(%struct.TYPE_22__* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %90 = call i32 @schema_attribute(i32 %86, %struct.TYPE_23__* %87, %struct.TYPE_22__* %88, %struct.TYPE_24__* %89, i32* null)
  br label %117

91:                                               ; preds = %81
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = call i64 @node_is_equal(%struct.TYPE_22__* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %100 = call i32 @schema_attributeGroup(i32 %96, %struct.TYPE_23__* %97, %struct.TYPE_22__* %98, %struct.TYPE_24__* %99, i32* null)
  br label %116

101:                                              ; preds = %91
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = call i64 @node_is_equal(%struct.TYPE_22__* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %9, align 8
  br label %121

109:                                              ; preds = %101
  %110 = load i32, i32* @E_ERROR, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @soap_error1(i32 %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %85
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %9, align 8
  br label %78

121:                                              ; preds = %105, %78
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %123 = icmp ne %struct.TYPE_22__* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32, i32* @E_ERROR, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @soap_error1(i32 %125, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i32, i32* @TRUE, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_23__* @get_attribute(i32, i8*) #1

declare dso_local i32 @parse_namespace(i32, i8**, i8**) #1

declare dso_local %struct.TYPE_21__* @xmlSearchNs(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @get_create_encoder(i32, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @schema_attribute(i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @schema_attributeGroup(i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
