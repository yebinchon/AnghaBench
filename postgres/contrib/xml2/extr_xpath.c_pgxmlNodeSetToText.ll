; ModuleID = '/home/carl/AnghaBench/postgres/contrib/xml2/extr_xpath.c_pgxmlNodeSetToText.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/xml2/extr_xpath.c_pgxmlNodeSetToText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"</\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32*, i32*)* @pgxmlNodeSetToText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pgxmlNodeSetToText(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = call %struct.TYPE_12__* (...) @xmlBufferCreate()
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @xmlStrlen(i32* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @xmlBufferWriteCHAR(%struct.TYPE_12__* %22, i32* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %19, %15, %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %117

30:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %113, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %116

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %44, i64 %46
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = call i32* @xmlXPathCastNodeToString(%struct.TYPE_13__* %48)
  %50 = call i32 @xmlBufferWriteCHAR(%struct.TYPE_12__* %41, i32* %49)
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %58, i8* %60)
  br label %62

62:                                               ; preds = %57, %40
  br label %112

63:                                               ; preds = %37
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @xmlStrlen(i32* %67)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @xmlBufferWriteCHAR(%struct.TYPE_12__* %73, i32* %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %70, %66, %63
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %91, i64 %93
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = call i32 @xmlNodeDump(%struct.TYPE_12__* %79, i32 %88, %struct.TYPE_13__* %95, i32 1, i32 0)
  %97 = load i32*, i32** %7, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %78
  %100 = load i32*, i32** %7, align 8
  %101 = call i64 @xmlStrlen(i32* %100)
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @xmlBufferWriteCHAR(%struct.TYPE_12__* %106, i32* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %103, %99, %78
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %31

116:                                              ; preds = %31
  br label %117

117:                                              ; preds = %116, %27
  %118 = load i32*, i32** %6, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @xmlStrlen(i32* %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %126 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @xmlBufferWriteCHAR(%struct.TYPE_12__* %127, i32* %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %131 = call i32 @xmlBufferWriteChar(%struct.TYPE_12__* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %124, %120, %117
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32* @xmlStrdup(i32 %135)
  store i32* %136, i32** %10, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = call i32 @xmlBufferFree(%struct.TYPE_12__* %137)
  %139 = load i32*, i32** %10, align 8
  ret i32* %139
}

declare dso_local %struct.TYPE_12__* @xmlBufferCreate(...) #1

declare dso_local i64 @xmlStrlen(i32*) #1

declare dso_local i32 @xmlBufferWriteChar(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @xmlBufferWriteCHAR(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @xmlXPathCastNodeToString(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlNodeDump(%struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32* @xmlStrdup(i32) #1

declare dso_local i32 @xmlBufferFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
