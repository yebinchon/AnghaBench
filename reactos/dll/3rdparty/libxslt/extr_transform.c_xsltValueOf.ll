; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltValueOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltValueOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i64*, i32, i32* }

@.str = private unnamed_addr constant [84 x i8] c"Internal error in xsltValueOf(): The XSLT 'value-of' instruction was not compiled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Internal error in xsltValueOf(): failed to cast an XPath object to string.\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"XPath evaluation returned no result.\0A\00", align 1
@XSLT_TRACE_VALUE_OF = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltValueOf(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  store i32* null, i32** %10, align 8
  store i64* null, i64** %11, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %4
  br label %96

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %27, %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @xsltTransformError(%struct.TYPE_9__* %38, i32* null, i32* %39, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %96

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = call i32* @xsltPreCompEval(%struct.TYPE_9__* %42, i32* %43, %struct.TYPE_10__* %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %41
  %49 = load i32*, i32** %10, align 8
  %50 = call i64* @xmlXPathCastToString(i32* %49)
  store i64* %50, i64** %11, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @xsltTransformError(%struct.TYPE_9__* %54, i32* null, i32* %55, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %84

60:                                               ; preds = %48
  %61 = load i64*, i64** %11, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @xsltCopyTextString(%struct.TYPE_9__* %66, i32 %69, i64* %70, i32 %73)
  br label %75

75:                                               ; preds = %65, %60
  br label %83

76:                                               ; preds = %41
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @xsltTransformError(%struct.TYPE_9__* %77, i32* null, i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %84

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %76, %53
  %85 = load i64*, i64** %11, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64*, i64** %11, align 8
  %89 = call i32 @xmlFree(i64* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @xmlXPathFreeObject(i32* %94)
  br label %96

96:                                               ; preds = %23, %37, %93, %90
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_9__*, i32*, i32*, i8*) #1

declare dso_local i32* @xsltPreCompEval(%struct.TYPE_9__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i64* @xmlXPathCastToString(i32*) #1

declare dso_local i32 @xsltCopyTextString(%struct.TYPE_9__*, i32, i64*, i32) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32 @xmlXPathFreeObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
