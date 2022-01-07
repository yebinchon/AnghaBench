; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_namespaces.c_xsltCopyNamespaceList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_namespaces.c_xsltCopyNamespaceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__*, i32*, i32* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_NAMESPACE = common dso_local global i32* null, align 8
@UNDEFINED_DEFAULT_NS = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @xsltCopyNamespaceList(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %164

16:                                               ; preds = %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %164

23:                                               ; preds = %16
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = icmp ne %struct.TYPE_18__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %33

33:                                               ; preds = %32, %26, %23
  br label %34

34:                                               ; preds = %158, %124, %98, %74, %33
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %162

37:                                               ; preds = %34
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %162

44:                                               ; preds = %37
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = icmp ne %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %103

47:                                               ; preds = %44
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @xmlStrEqual(i32* %57, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @xmlStrEqual(i32* %68, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %7, align 8
  br label %34

78:                                               ; preds = %63, %52, %47
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call %struct.TYPE_17__* @xmlSearchNs(i32 %81, %struct.TYPE_18__* %82, i32* %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %9, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %78
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @xmlStrEqual(i32* %92, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %7, align 8
  br label %34

102:                                              ; preds = %89, %78
  br label %103

103:                                              ; preds = %102, %44
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** @XSLT_NAMESPACE, align 8
  %108 = call i64 @xmlStrEqual(i32* %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %158, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @xmlHashLookup(i32 %115, i32* %118)
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %12, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** @UNDEFINED_DEFAULT_NS, align 8
  %123 = icmp eq i32* %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %7, align 8
  br label %34

128:                                              ; preds = %110
  %129 = load i32*, i32** %12, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call %struct.TYPE_17__* @xmlNewNs(%struct.TYPE_18__* %132, i32* %133, i32* %136)
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %11, align 8
  br label %147

138:                                              ; preds = %128
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = call %struct.TYPE_17__* @xmlNewNs(%struct.TYPE_18__* %139, i32* %142, i32* %145)
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %11, align 8
  br label %147

147:                                              ; preds = %138, %131
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %149 = icmp eq %struct.TYPE_17__* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %8, align 8
  br label %157

152:                                              ; preds = %147
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %155, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %156, %struct.TYPE_17__** %10, align 8
  br label %157

157:                                              ; preds = %152, %150
  br label %158

158:                                              ; preds = %157, %103
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  store %struct.TYPE_17__* %161, %struct.TYPE_17__** %7, align 8
  br label %34

162:                                              ; preds = %43, %34
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %4, align 8
  br label %164

164:                                              ; preds = %162, %22, %15
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %165
}

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @xmlSearchNs(i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i64 @xmlHashLookup(i32, i32*) #1

declare dso_local %struct.TYPE_17__* @xmlNewNs(%struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
