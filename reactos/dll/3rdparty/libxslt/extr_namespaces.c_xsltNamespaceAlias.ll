; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_namespaces.c_xsltNamespaceAlias.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_namespaces.c_xsltNamespaceAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"stylesheet-prefix\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"namespace-alias: stylesheet-prefix attribute missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"result-prefix\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"namespace-alias: result-prefix attribute missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"#default\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"namespace-alias: prefix %s not bound to any namespace\0A\00", align 1
@UNDEFINED_DEFAULT_NS = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"namespace-alias: cannot create hash table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltNamespaceAlias(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = icmp eq %struct.TYPE_16__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = icmp eq %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %173

17:                                               ; preds = %13
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = call i32* @xmlGetNsProp(%struct.TYPE_19__* %18, i32* bitcast ([18 x i8]* @.str to i32*), i32* null)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %23, %struct.TYPE_19__* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %173

26:                                               ; preds = %17
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = call i32* @xmlGetNsProp(%struct.TYPE_19__* %27, i32* bitcast ([14 x i8]* @.str.2 to i32*), i32* null)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %32, %struct.TYPE_19__* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %161

35:                                               ; preds = %26
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @xmlStrEqual(i32* %36, i32* bitcast ([9 x i8]* @.str.4 to i32*))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = call %struct.TYPE_18__* @xmlSearchNs(i32 %42, %struct.TYPE_19__* %43, i32* null)
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %7, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = icmp eq %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32* null, i32** %9, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  br label %52

52:                                               ; preds = %48, %47
  br label %77

53:                                               ; preds = %35
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.TYPE_18__* @xmlSearchNs(i32 %56, %struct.TYPE_19__* %57, i32* %58)
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %7, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = icmp eq %struct.TYPE_18__* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %53
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %68, %struct.TYPE_19__* %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32* %70)
  br label %161

72:                                               ; preds = %62
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %9, align 8
  br label %76

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @xmlStrEqual(i32* %78, i32* bitcast ([9 x i8]* @.str.4 to i32*))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = call %struct.TYPE_18__* @xmlSearchNs(i32 %84, %struct.TYPE_19__* %85, i32* null)
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %8, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = icmp eq %struct.TYPE_18__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32*, i32** @UNDEFINED_DEFAULT_NS, align 8
  store i32* %90, i32** %10, align 8
  br label %95

91:                                               ; preds = %81
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %91, %89
  br label %120

96:                                               ; preds = %77
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call %struct.TYPE_18__* @xmlSearchNs(i32 %99, %struct.TYPE_19__* %100, i32* %101)
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %8, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = icmp eq %struct.TYPE_18__* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %96
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105, %96
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %111, %struct.TYPE_19__* %112, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32* %113)
  br label %161

115:                                              ; preds = %105
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %10, align 8
  br label %119

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %95
  %121 = load i32*, i32** %9, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %125 = icmp ne %struct.TYPE_18__* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  br label %132

132:                                              ; preds = %126, %123
  br label %160

133:                                              ; preds = %120
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = call i32* @xmlHashCreate(i32 10)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  br label %142

142:                                              ; preds = %138, %133
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %148, %struct.TYPE_19__* %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %161

151:                                              ; preds = %142
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = ptrtoint i32* %154 to i32
  %156 = load i32*, i32** %9, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = call i32 @xmlHashAddEntry(i32 %155, i32* %156, i8* %158)
  br label %160

160:                                              ; preds = %151, %132
  br label %161

161:                                              ; preds = %160, %147, %110, %67, %31
  %162 = load i32*, i32** %6, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @xmlFree(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %5, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @xmlFree(i32* %171)
  br label %173

173:                                              ; preds = %16, %22, %170, %167
  ret void
}

declare dso_local i32* @xmlGetNsProp(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @xmlSearchNs(i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32* @xmlHashCreate(i32) #1

declare dso_local i32 @xmlHashAddEntry(i32, i32*, i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
