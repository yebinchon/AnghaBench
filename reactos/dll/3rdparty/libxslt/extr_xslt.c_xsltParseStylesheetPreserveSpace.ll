; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetPreserveSpace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetPreserveSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct.TYPE_11__ = type { i64, i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"xsltParseStylesheetPreserveSpace: missing elements attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @xsltParseStylesheetPreserveSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltParseStylesheetPreserveSpace(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %11, %2
  br label %136

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i64* @xmlGetNsProp(%struct.TYPE_11__* %22, i64* bitcast ([9 x i8]* @.str to i64*), i32* null)
  store i64* %23, i64** %5, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i32 @xsltTransformError(i32* null, %struct.TYPE_10__* %27, %struct.TYPE_11__* %28, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %32, %26
  br label %136

38:                                               ; preds = %21
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32* @xmlHashCreate(i32 10)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %136

53:                                               ; preds = %47
  %54 = load i64*, i64** %5, align 8
  store i64* %54, i64** %6, align 8
  br label %55

55:                                               ; preds = %121, %53
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %123

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %65, %59
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @IS_BLANK(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64*, i64** %6, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %6, align 8
  br label %60

68:                                               ; preds = %60
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %123

73:                                               ; preds = %68
  %74 = load i64*, i64** %6, align 8
  store i64* %74, i64** %7, align 8
  br label %75

75:                                               ; preds = %87, %73
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @IS_BLANK(i64 %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i1 [ false, %75 ], [ %84, %79 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i64*, i64** %7, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %7, align 8
  br label %75

90:                                               ; preds = %85
  %91 = load i64*, i64** %6, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = load i64*, i64** %6, align 8
  %94 = ptrtoint i64* %92 to i64
  %95 = ptrtoint i64* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i64* @xmlStrndup(i64* %91, i32 %98)
  store i64* %99, i64** %6, align 8
  %100 = load i64*, i64** %6, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %121

102:                                              ; preds = %90
  %103 = load i64*, i64** %6, align 8
  %104 = call i64 @xmlStrEqual(i64* %103, i64* bitcast ([2 x i8]* @.str.2 to i64*))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 -1, i32* %108, align 8
  br label %118

109:                                              ; preds = %102
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = call i64* @xsltGetQNameURI(%struct.TYPE_11__* %110, i64** %6)
  store i64* %111, i64** %8, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = call i32 @xmlHashAddEntry2(i32* %114, i64* %115, i64* %116, i64* bitcast ([9 x i8]* @.str.3 to i64*))
  br label %118

118:                                              ; preds = %109, %106
  %119 = load i64*, i64** %6, align 8
  %120 = call i32 @xmlFree(i64* %119)
  br label %121

121:                                              ; preds = %118, %90
  %122 = load i64*, i64** %7, align 8
  store i64* %122, i64** %6, align 8
  br label %55

123:                                              ; preds = %72, %55
  %124 = load i64*, i64** %5, align 8
  %125 = call i32 @xmlFree(i64* %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @xsltParseContentError(%struct.TYPE_10__* %131, i32* %134)
  br label %136

136:                                              ; preds = %20, %37, %52, %130, %123
  ret void
}

declare dso_local i64* @xmlGetNsProp(%struct.TYPE_11__*, i64*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32* @xmlHashCreate(i32) #1

declare dso_local i64 @IS_BLANK(i64) #1

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local i64 @xmlStrEqual(i64*, i64*) #1

declare dso_local i64* @xsltGetQNameURI(%struct.TYPE_11__*, i64**) #1

declare dso_local i32 @xmlHashAddEntry2(i32*, i64*, i64*, i64*) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32 @xsltParseContentError(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
