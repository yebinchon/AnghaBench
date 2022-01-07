; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetQNameURI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xsltutils.c_xsltGetQNameURI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64* }

@xsltGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"QName: no element for namespace lookup %s\0A\00", align 1
@XML_XML_NAMESPACE = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s:%s : no namespace bound to prefix %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xsltGetQNameURI(%struct.TYPE_7__* %0, i64** %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64** %1, i64*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64**, i64*** %5, align 8
  %10 = icmp eq i64** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %139

12:                                               ; preds = %2
  %13 = load i64**, i64*** %5, align 8
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %7, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %12
  store i64* null, i64** %3, align 8
  br label %139

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @xsltGenericErrorContext, align 4
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 (i32, i8*, i64*, ...) @xsltGenericError(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64* %27)
  %29 = load i64*, i64** %7, align 8
  %30 = call i32 @xmlFree(i64* %29)
  %31 = load i64**, i64*** %5, align 8
  store i64* null, i64** %31, align 8
  store i64* null, i64** %3, align 8
  br label %139

32:                                               ; preds = %22
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 58
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i64* null, i64** %3, align 8
  br label %139

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i64*, i64** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 58
  br label %53

53:                                               ; preds = %46, %39
  %54 = phi i1 [ false, %39 ], [ %52, %46 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %39

58:                                               ; preds = %53
  %59 = load i64*, i64** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i64* null, i64** %3, align 8
  br label %139

66:                                               ; preds = %58
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 120
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = load i64*, i64** %7, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 109
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 108
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load i64*, i64** %7, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 58
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i64*, i64** %7, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i64* null, i64** %3, align 8
  br label %139

92:                                               ; preds = %86
  %93 = load i64*, i64** %7, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 4
  %95 = call i64* @xmlStrdup(i64* %94)
  %96 = load i64**, i64*** %5, align 8
  store i64* %95, i64** %96, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = call i32 @xmlFree(i64* %97)
  %99 = load i64*, i64** @XML_XML_NAMESPACE, align 8
  store i64* %99, i64** %3, align 8
  br label %139

100:                                              ; preds = %81, %76, %71, %66
  %101 = load i64*, i64** %7, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = load i64*, i64** %7, align 8
  %110 = call %struct.TYPE_6__* @xmlSearchNs(i32 %107, %struct.TYPE_7__* %108, i64* %109)
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %8, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = icmp eq %struct.TYPE_6__* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %100
  %114 = load i32, i32* @xsltGenericErrorContext, align 4
  %115 = load i64*, i64** %7, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  %121 = load i64*, i64** %7, align 8
  %122 = call i32 (i32, i8*, i64*, ...) @xsltGenericError(i32 %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64* %115, i64* %120, i64* %121)
  %123 = load i64**, i64*** %5, align 8
  store i64* null, i64** %123, align 8
  %124 = load i64*, i64** %7, align 8
  %125 = call i32 @xmlFree(i64* %124)
  store i64* null, i64** %3, align 8
  br label %139

126:                                              ; preds = %100
  %127 = load i64*, i64** %7, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  %132 = call i64* @xmlStrdup(i64* %131)
  %133 = load i64**, i64*** %5, align 8
  store i64* %132, i64** %133, align 8
  %134 = load i64*, i64** %7, align 8
  %135 = call i32 @xmlFree(i64* %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  store i64* %138, i64** %3, align 8
  br label %139

139:                                              ; preds = %126, %113, %92, %91, %65, %37, %25, %21, %11
  %140 = load i64*, i64** %3, align 8
  ret i64* %140
}

declare dso_local i32 @xsltGenericError(i32, i8*, i64*, ...) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i64* @xmlStrdup(i64*) #1

declare dso_local %struct.TYPE_6__* @xmlSearchNs(i32, %struct.TYPE_7__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
