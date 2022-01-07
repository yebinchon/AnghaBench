; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_simpleContent.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_simpleContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"restriction\00", align 1
@XSD_TYPEKIND_RESTRICTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@XSD_TYPEKIND_EXTENSION = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Parsing Schema: unexpected <%s> in simpleContent\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Parsing Schema: expected <restriction> or <extension> in simpleContent\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*)* @schema_simpleContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_simpleContent(i32 %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = call i64 @node_is_equal(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %9, align 8
  br label %23

23:                                               ; preds = %19, %15, %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = call i64 @node_is_equal(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* @XSD_TYPEKIND_RESTRICTION, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = call i32 @schema_restriction_simpleContent(i32 %34, i32 %35, %struct.TYPE_10__* %36, %struct.TYPE_11__* %37, i32 0)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %9, align 8
  br label %65

42:                                               ; preds = %26
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = call i64 @node_is_equal(%struct.TYPE_10__* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* @XSD_TYPEKIND_EXTENSION, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = call i32 @schema_extension_simpleContent(i32 %50, i32 %51, %struct.TYPE_10__* %52, %struct.TYPE_11__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %9, align 8
  br label %64

58:                                               ; preds = %42
  %59 = load i32, i32* @E_ERROR, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @soap_error1(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %46
  br label %65

65:                                               ; preds = %64, %30
  br label %69

66:                                               ; preds = %23
  %67 = load i32, i32* @E_ERROR, align 4
  %68 = call i32 @soap_error0(i32 %67, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @E_ERROR, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @soap_error1(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* @TRUE, align 4
  ret i32 %79
}

declare dso_local i64 @node_is_equal(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @schema_restriction_simpleContent(i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @schema_extension_simpleContent(i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
