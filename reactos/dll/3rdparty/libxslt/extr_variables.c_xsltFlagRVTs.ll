; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltFlagRVTs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltFlagRVTs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@XPATH_NODESET = common dso_local global i64 0, align 8
@XPATH_XSLT_TREE = common dso_local global i64 0, align 8
@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Internal error in xsltFlagRVTs(): Cannot retrieve the doc of a namespace node.\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Internal error in xsltFlagRVTs(): Cannot retrieve the doc of a node.\0A\00", align 1
@XSLT_RVT_GLOBAL = common dso_local global i8* null, align 8
@XSLT_RVT_LOCAL = common dso_local global i8* null, align 8
@XSLT_RVT_FUNC_RESULT = common dso_local global i8* null, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"xsltFlagRVTs: Invalid transition %p => GLOBAL\0A\00", align 1
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltFlagRVTs(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %184

17:                                               ; preds = %13
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XPATH_NODESET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XPATH_XSLT_TREE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %184

30:                                               ; preds = %23, %17
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = icmp eq %struct.TYPE_13__* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %30
  store i32 0, i32* %4, align 4
  br label %184

43:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %180, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %183

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %57, i64 %59
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %9, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %52
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = bitcast %struct.TYPE_18__* %68 to %struct.TYPE_17__*
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = icmp ne %struct.TYPE_14__* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = bitcast %struct.TYPE_18__* %74 to %struct.TYPE_17__*
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = bitcast %struct.TYPE_18__* %83 to %struct.TYPE_17__*
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = bitcast %struct.TYPE_14__* %86 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %9, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %10, align 8
  br label %97

91:                                               ; preds = %73, %67
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @xsltTransformError(%struct.TYPE_15__* %92, i32* null, i32 %95, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %184

97:                                               ; preds = %82
  br label %102

98:                                               ; preds = %52
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %10, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %104 = icmp eq %struct.TYPE_19__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @xsltTransformError(%struct.TYPE_15__* %106, i32* null, i32 %109, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %184

111:                                              ; preds = %102
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %179

116:                                              ; preds = %111
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %179

124:                                              ; preds = %116
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** @XSLT_RVT_GLOBAL, align 8
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %130, label %179

130:                                              ; preds = %124
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** @XSLT_RVT_LOCAL, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** @XSLT_RVT_FUNC_RESULT, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i8*, i8** @XSLT_RVT_LOCAL, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %134
  br label %178

145:                                              ; preds = %130
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** @XSLT_RVT_GLOBAL, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** @XSLT_RVT_LOCAL, align 8
  %154 = icmp ne i8* %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load i32, i32* @xmlGenericErrorContext, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @xmlGenericError(i32 %156, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** @XSLT_RVT_GLOBAL, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  store i32 -1, i32* %4, align 4
  br label %184

164:                                              ; preds = %149
  %165 = load i8*, i8** @XSLT_RVT_GLOBAL, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  br label %177

168:                                              ; preds = %145
  %169 = load i8*, i8** %7, align 8
  %170 = load i8*, i8** @XSLT_RVT_FUNC_RESULT, align 8
  %171 = icmp eq i8* %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i8*, i8** %7, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %164
  br label %178

178:                                              ; preds = %177, %144
  br label %179

179:                                              ; preds = %178, %124, %116, %111
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %44

183:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %155, %105, %91, %42, %29, %16
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_15__*, i32*, i32, i8*) #1

declare dso_local i32 @xmlGenericError(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
