; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_sdl_guess_convert_xml.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_sdl_guess_convert_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }

@SOAP_ENCODED = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i32 0, align 4
@SOAP_ENC_ARRAY = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Encoding: Internal Error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdl_guess_convert_xml(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @guess_xml_convert(%struct.TYPE_12__* %18, i32* %19, i32 %20, i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SOAP_ENCODED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = call i32 @set_ns_and_type(i32* %27, %struct.TYPE_12__* %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32*, i32** %11, align 8
  store i32* %31, i32** %5, align 8
  br label %123

32:                                               ; preds = %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %110 [
    i32 129, label %36
    i32 131, label %63
    i32 128, label %69
    i32 133, label %75
    i32 130, label %75
    i32 132, label %75
  ]

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = icmp ne %struct.TYPE_12__* %42, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @master_to_xml(%struct.TYPE_13__* %51, i32* %52, i32 %53, i32* %54)
  store i32* %55, i32** %11, align 8
  br label %62

56:                                               ; preds = %41, %36
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @guess_xml_convert(%struct.TYPE_12__* %57, i32* %58, i32 %59, i32* %60)
  store i32* %61, i32** %11, align 8
  br label %62

62:                                               ; preds = %56, %48
  br label %113

63:                                               ; preds = %32
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @to_xml_list(%struct.TYPE_12__* %64, i32* %65, i32 %66, i32* %67)
  store i32* %68, i32** %11, align 8
  br label %113

69:                                               ; preds = %32
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* @to_xml_union(%struct.TYPE_12__* %70, i32* %71, i32 %72, i32* %73)
  store i32* %74, i32** %11, align 8
  br label %113

75:                                               ; preds = %32, %32, %32
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IS_ARRAY, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %80
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SOAP_ENC_ARRAY, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %89, %80
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @to_xml_array(%struct.TYPE_12__* %99, i32* %100, i32 %101, i32* %102)
  store i32* %103, i32** %5, align 8
  br label %123

104:                                              ; preds = %89, %75
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = call i32* @to_xml_object(%struct.TYPE_12__* %105, i32* %106, i32 %107, i32* %108)
  store i32* %109, i32** %5, align 8
  br label %123

110:                                              ; preds = %32
  %111 = load i32, i32* @E_ERROR, align 4
  %112 = call i32 @soap_error0(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %69, %63, %62
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SOAP_ENCODED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = call i32 @set_ns_and_type(i32* %118, %struct.TYPE_12__* %119)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32*, i32** %11, align 8
  store i32* %122, i32** %5, align 8
  br label %123

123:                                              ; preds = %121, %104, %98, %30
  %124 = load i32*, i32** %5, align 8
  ret i32* %124
}

declare dso_local i32* @guess_xml_convert(%struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32 @set_ns_and_type(i32*, %struct.TYPE_12__*) #1

declare dso_local i32* @master_to_xml(%struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32* @to_xml_list(%struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32* @to_xml_union(%struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32* @to_xml_array(%struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32* @to_xml_object(%struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
