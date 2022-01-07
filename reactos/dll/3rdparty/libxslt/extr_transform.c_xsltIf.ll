; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltIf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltIf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32*, i32* }
%struct.TYPE_26__ = type { i64, i32 }

@.str = private unnamed_addr constant [73 x i8] c"Internal error in xsltIf(): The XSLT 'if' instruction was not compiled.\0A\00", align 1
@XPATH_BOOLEAN = common dso_local global i64 0, align 8
@XSLT_STATE_STOPPED = common dso_local global i8* null, align 8
@XSLT_TRACE_IF = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltIf(%struct.TYPE_24__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %10, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = icmp eq %struct.TYPE_24__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %19 = icmp eq %struct.TYPE_27__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %22 = icmp eq %struct.TYPE_27__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %4
  br label %90

24:                                               ; preds = %20
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %26 = icmp eq %struct.TYPE_25__* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %27, %24
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %40 = call i32 @xsltTransformError(%struct.TYPE_24__* %38, i32* null, %struct.TYPE_27__* %39, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %90

41:                                               ; preds = %32
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = call %struct.TYPE_26__* @xsltPreCompEval(%struct.TYPE_24__* %42, %struct.TYPE_27__* %43, %struct.TYPE_25__* %44)
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %11, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %47 = icmp ne %struct.TYPE_26__* %46, null
  br i1 %47, label %48, label %84

48:                                               ; preds = %41
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XPATH_BOOLEAN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %56 = call %struct.TYPE_26__* @xmlXPathConvertBoolean(%struct.TYPE_26__* %55)
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %11, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @XPATH_BOOLEAN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @xsltApplySequenceConstructor(%struct.TYPE_24__* %70, %struct.TYPE_27__* %71, i32 %74, i32* null)
  br label %76

76:                                               ; preds = %69, %63
  br label %81

77:                                               ; preds = %57
  %78 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %76
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %83 = call i32 @xmlXPathFreeObject(%struct.TYPE_26__* %82)
  br label %88

84:                                               ; preds = %41
  %85 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %37, %23
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_24__*, i32*, %struct.TYPE_27__*, i8*) #1

declare dso_local %struct.TYPE_26__* @xsltPreCompEval(%struct.TYPE_24__*, %struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @xmlXPathConvertBoolean(%struct.TYPE_26__*) #1

declare dso_local i32 @xsltApplySequenceConstructor(%struct.TYPE_24__*, %struct.TYPE_27__*, i32, i32*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
