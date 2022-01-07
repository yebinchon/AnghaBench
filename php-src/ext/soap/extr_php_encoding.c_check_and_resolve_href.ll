; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_check_and_resolve_href.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_check_and_resolve_href.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Encoding: Unresolved reference '%s'\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Encoding: External reference '%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@SOAP_1_2_ENC_NAMESPACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Encoding: Violation of id and ref information items '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*)* @check_and_resolve_href to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @check_and_resolve_href(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = icmp ne %struct.TYPE_15__* %8, null
  br i1 %9, label %10, label %147

10:                                               ; preds = %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %147

15:                                               ; preds = %10
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %4, align 8
  br label %19

19:                                               ; preds = %15, %30
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call %struct.TYPE_16__* @get_attribute(%struct.TYPE_16__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %4, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = icmp eq %struct.TYPE_16__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  br label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %4, align 8
  br label %19

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = icmp ne %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %72

47:                                               ; preds = %37
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call %struct.TYPE_15__* @get_node_with_attribute_recursive(i32 %52, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %5, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* @E_ERROR, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @soap_error1(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %62, %47
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %2, align 8
  br label %149

72:                                               ; preds = %37
  %73 = load i32, i32* @E_ERROR, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @soap_error1(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %34
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i32, i32* @SOAP_1_2_ENC_NAMESPACE, align 4
  %86 = call %struct.TYPE_16__* @get_attribute_ex(%struct.TYPE_16__* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %4, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = icmp ne %struct.TYPE_16__* %87, null
  br i1 %88, label %89, label %146

89:                                               ; preds = %81
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 35
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %6, align 8
  br label %112

106:                                              ; preds = %89
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %6, align 8
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* @SOAP_1_2_ENC_NAMESPACE, align 4
  %120 = call %struct.TYPE_15__* @get_node_with_attribute_recursive_ex(i32 %117, i32* null, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %118, i32 %119)
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %7, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = icmp ne %struct.TYPE_15__* %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %112
  %124 = load i32, i32* @E_ERROR, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @soap_error1(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %129)
  br label %144

131:                                              ; preds = %112
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = icmp eq %struct.TYPE_15__* %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i32, i32* @E_ERROR, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @soap_error1(i32 %136, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %135, %131
  br label %144

144:                                              ; preds = %143, %123
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %2, align 8
  br label %149

146:                                              ; preds = %81
  br label %147

147:                                              ; preds = %146, %10, %1
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_15__* %148, %struct.TYPE_15__** %2, align 8
  br label %149

149:                                              ; preds = %147, %144, %70
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %150
}

declare dso_local %struct.TYPE_16__* @get_attribute(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_15__* @get_node_with_attribute_recursive(i32, i32*, i8*, i8*) #1

declare dso_local i32 @soap_error1(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @get_attribute_ex(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local %struct.TYPE_15__* @get_node_with_attribute_recursive_ex(i32, i32*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
