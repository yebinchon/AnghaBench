; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetQNameURI2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetQNameURI2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64* }

@xsltGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"QName: no element for namespace lookup %s\0A\00", align 1
@XML_XML_NAMESPACE = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"No namespace bound to prefix '%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s : no namespace bound to prefix %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xsltGetQNameURI2(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, i64** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64**, i64*** %7, align 8
  %12 = icmp eq i64** %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %147

14:                                               ; preds = %3
  %15 = load i64**, i64*** %7, align 8
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %9, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14
  store i64* null, i64** %4, align 8
  br label %147

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @xsltGenericErrorContext, align 4
  %29 = load i64*, i64** %9, align 8
  %30 = call i32 (i32, i8*, i64*, ...) @xsltGenericError(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64* %29)
  %31 = load i64**, i64*** %7, align 8
  store i64* null, i64** %31, align 8
  store i64* null, i64** %4, align 8
  br label %147

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64*, i64** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i64*, i64** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 58
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i1 [ false, %33 ], [ %46, %40 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %33

52:                                               ; preds = %47
  %53 = load i64*, i64** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64* null, i64** %4, align 8
  br label %147

60:                                               ; preds = %52
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 120
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 109
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 108
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load i64*, i64** %9, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 58
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i64*, i64** %9, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i64* null, i64** %4, align 8
  br label %147

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %9, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 4
  %92 = call i64* @xmlDictLookup(i32 %89, i64* %91, i32 -1)
  %93 = load i64**, i64*** %7, align 8
  store i64* %92, i64** %93, align 8
  %94 = load i64*, i64** @XML_XML_NAMESPACE, align 8
  store i64* %94, i64** %4, align 8
  br label %147

95:                                               ; preds = %75, %70, %65, %60
  %96 = load i64**, i64*** %7, align 8
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64* @xmlStrndup(i64* %97, i32 %98)
  store i64* %99, i64** %9, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = call %struct.TYPE_11__* @xmlSearchNs(i32 %102, %struct.TYPE_12__* %103, i64* %104)
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %10, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %107 = icmp eq %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %130

108:                                              ; preds = %95
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = call i32 @xsltTransformError(i32* null, %struct.TYPE_10__* %112, %struct.TYPE_12__* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64* %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %126

120:                                              ; preds = %108
  %121 = load i32, i32* @xsltGenericErrorContext, align 4
  %122 = load i64**, i64*** %7, align 8
  %123 = load i64*, i64** %122, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = call i32 (i32, i8*, i64*, ...) @xsltGenericError(i32 %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64* %123, i64* %124)
  br label %126

126:                                              ; preds = %120, %111
  %127 = load i64**, i64*** %7, align 8
  store i64* null, i64** %127, align 8
  %128 = load i64*, i64** %9, align 8
  %129 = call i32 @xmlFree(i64* %128)
  store i64* null, i64** %4, align 8
  br label %147

130:                                              ; preds = %95
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64**, i64*** %7, align 8
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = call i64* @xmlDictLookup(i32 %133, i64* %139, i32 -1)
  %141 = load i64**, i64*** %7, align 8
  store i64* %140, i64** %141, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = call i32 @xmlFree(i64* %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  store i64* %146, i64** %4, align 8
  br label %147

147:                                              ; preds = %130, %126, %86, %85, %59, %27, %23, %13
  %148 = load i64*, i64** %4, align 8
  ret i64* %148
}

declare dso_local i32 @xsltGenericError(i32, i8*, i64*, ...) #1

declare dso_local i64* @xmlDictLookup(i32, i64*, i32) #1

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local %struct.TYPE_11__* @xmlSearchNs(i32, %struct.TYPE_12__*, i64*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_10__*, %struct.TYPE_12__*, i8*, i64*) #1

declare dso_local i32 @xmlFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
