; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltInitDocKeyTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltInitDocKeyTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_14__*, i32*, i32* }

@.str = private unnamed_addr constant [38 x i8] c"Failed to find key definition for %s\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@XSLT_TRACE_KEYS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i8*)* @xsltInitDocKeyTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltInitDocKeyTable(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  br label %14

14:                                               ; preds = %71, %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %9, align 8
  br label %22

22:                                               ; preds = %67, %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %25
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @xmlStrEqual(i32* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @xmlStrEqual(i32* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = call i32 @xsltInitCtxtKey(%struct.TYPE_12__* %50, %struct.TYPE_15__* %53, %struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %94

66:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %42, %35, %25
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %9, align 8
  br label %22

71:                                               ; preds = %22
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = call %struct.TYPE_13__* @xsltNextImport(%struct.TYPE_13__* %72)
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %8, align 8
  br label %14

74:                                               ; preds = %14
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = icmp ne %struct.TYPE_14__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32* [ %84, %81 ], [ null, %85 ]
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @xsltTransformError(%struct.TYPE_12__* %78, i32* null, i32* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  store i32 -1, i32* %4, align 4
  br label %94

93:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %86, %65
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @xmlStrEqual(i32*, i8*) #1

declare dso_local i32 @xsltInitCtxtKey(%struct.TYPE_12__*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @xsltNextImport(%struct.TYPE_13__*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_12__*, i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
