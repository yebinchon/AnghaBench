; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetNsProp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetNsProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32*, i32* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltGetNsProp(%struct.TYPE_18__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %172

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @xmlGetProp(%struct.TYPE_18__* %20, i32* %21)
  store i32* %22, i32** %4, align 8
  br label %172

23:                                               ; preds = %16
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %172

30:                                               ; preds = %23
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %8, align 8
  br label %41

40:                                               ; preds = %30
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %99, %41
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = icmp ne %struct.TYPE_21__* %43, null
  br i1 %44, label %45, label %103

45:                                               ; preds = %42
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @xmlStrEqual(i32 %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %45
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = icmp eq %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @xmlStrEqual(i32 %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %62, %57, %52
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = icmp ne %struct.TYPE_16__* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @xmlStrEqual(i32 %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %76, %62
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @xmlNodeListGetString(%struct.TYPE_19__* %88, i32 %91, i32 1)
  store i32* %92, i32** %11, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = call i32* @xmlStrdup(i32* bitcast ([1 x i8]* @.str to i32*))
  store i32* %96, i32** %4, align 8
  br label %172

97:                                               ; preds = %85
  %98 = load i32*, i32** %11, align 8
  store i32* %98, i32** %4, align 8
  br label %172

99:                                               ; preds = %76, %71, %45
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %8, align 8
  br label %42

103:                                              ; preds = %42
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %9, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %108 = icmp ne %struct.TYPE_19__* %107, null
  br i1 %108, label %109, label %171

109:                                              ; preds = %103
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %170

114:                                              ; preds = %109
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call %struct.TYPE_20__* @xmlGetDtdAttrDesc(i32* %117, i32 %120, i32* %121)
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %12, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %124 = icmp eq %struct.TYPE_20__* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %114
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call %struct.TYPE_20__* @xmlGetDtdAttrDesc(i32* %133, i32 %136, i32* %137)
  store %struct.TYPE_20__* %138, %struct.TYPE_20__** %12, align 8
  br label %139

139:                                              ; preds = %130, %125, %114
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %141 = icmp ne %struct.TYPE_20__* %140, null
  br i1 %141, label %142, label %169

142:                                              ; preds = %139
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call %struct.TYPE_17__* @xmlSearchNs(%struct.TYPE_19__* %148, %struct.TYPE_18__* %149, i32* %152)
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %10, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = icmp ne %struct.TYPE_17__* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %147
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = call i64 @xmlStrEqual(i32 %159, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32* @xmlStrdup(i32* %166)
  store i32* %167, i32** %4, align 8
  br label %172

168:                                              ; preds = %156, %147
  br label %169

169:                                              ; preds = %168, %142, %139
  br label %170

170:                                              ; preds = %169, %109
  br label %171

171:                                              ; preds = %170, %103
  store i32* null, i32** %4, align 8
  br label %172

172:                                              ; preds = %171, %163, %97, %95, %29, %19, %15
  %173 = load i32*, i32** %4, align 8
  ret i32* %173
}

declare dso_local i32* @xmlGetProp(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32, i32*) #1

declare dso_local i32* @xmlNodeListGetString(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local %struct.TYPE_20__* @xmlGetDtdAttrDesc(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @xmlSearchNs(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
