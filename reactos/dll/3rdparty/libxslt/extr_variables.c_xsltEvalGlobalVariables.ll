; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltEvalGlobalVariables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltEvalGlobalVariables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@XSLT_FUNC_VARIABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Global variable %s already defined\0A\00", align 1
@xsltEvalGlobalVariableWrapper = common dso_local global i32 0, align 4
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltEvalGlobalVariables(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = icmp eq %struct.TYPE_19__* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %141

15:                                               ; preds = %9
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %5, align 8
  br label %19

19:                                               ; preds = %131, %15
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %134

22:                                               ; preds = %19
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %4, align 8
  br label %26

26:                                               ; preds = %127, %22
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = icmp ne %struct.TYPE_21__* %27, null
  br i1 %28, label %29, label %131

29:                                               ; preds = %26
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @xmlHashLookup2(i32 %32, i32 %35, i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %6, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = icmp eq %struct.TYPE_21__* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %29
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = call %struct.TYPE_21__* @xsltCopyStackElem(%struct.TYPE_21__* %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %6, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = call i32 @xmlHashAddEntry2(i32 %48, i32 %51, i32 %54, %struct.TYPE_21__* %55)
  br label %127

57:                                               ; preds = %29
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = icmp ne %struct.TYPE_18__* %60, null
  br i1 %61, label %62, label %126

62:                                               ; preds = %57
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XSLT_FUNC_VARIABLE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %126

70:                                               ; preds = %62
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = icmp ne %struct.TYPE_22__* %75, null
  br i1 %76, label %77, label %125

77:                                               ; preds = %70
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = icmp ne %struct.TYPE_18__* %80, null
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = icmp ne %struct.TYPE_22__* %87, null
  br i1 %88, label %89, label %125

89:                                               ; preds = %82
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %96, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %89
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @xsltTransformError(%struct.TYPE_19__* %106, %struct.TYPE_20__* %107, %struct.TYPE_22__* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = icmp ne %struct.TYPE_20__* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %105
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %105
  br label %125

125:                                              ; preds = %124, %89, %82, %77, %70
  br label %126

126:                                              ; preds = %125, %62, %57
  br label %127

127:                                              ; preds = %126, %43
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  store %struct.TYPE_21__* %130, %struct.TYPE_21__** %4, align 8
  br label %26

131:                                              ; preds = %26
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = call %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__* %132)
  store %struct.TYPE_20__* %133, %struct.TYPE_20__** %5, align 8
  br label %19

134:                                              ; preds = %19
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @xsltEvalGlobalVariableWrapper, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %140 = call i32 @xmlHashScan(i32 %137, i32 %138, %struct.TYPE_19__* %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %134, %14
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @xmlHashLookup2(i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @xsltCopyStackElem(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlHashAddEntry2(i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_22__*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__*) #1

declare dso_local i32 @xmlHashScan(i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
