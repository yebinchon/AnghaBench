; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_imports.c_xsltParseStylesheetInclude.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_imports.c_xsltParseStylesheetInclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"xsl:include : missing href attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"xsl:include : invalid URI reference %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"xsl:include : recursion detected on included URL %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"xsl:include : unable to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltParseStylesheetInclude(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = icmp eq %struct.TYPE_22__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = icmp eq %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %150

22:                                               ; preds = %17
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = call i32* @xmlGetNsProp(%struct.TYPE_22__* %23, i32* bitcast ([5 x i8]* @.str to i32*), i32* null)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = call i32 (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_19__* %28, %struct.TYPE_22__* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %130

31:                                               ; preds = %22
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = call i32* @xmlNodeGetBase(%struct.TYPE_23__* %34, %struct.TYPE_22__* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @xmlBuildURI(i32* %37, i32* %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_19__* %43, %struct.TYPE_22__* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  br label %130

47:                                               ; preds = %31
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %13, align 8
  br label %51

51:                                               ; preds = %68, %47
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %53 = icmp ne %struct.TYPE_21__* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @xmlStrEqual(i32 %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_19__* %64, %struct.TYPE_22__* %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32* %66)
  br label %130

68:                                               ; preds = %54
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %13, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call %struct.TYPE_21__* @xsltLoadStyleDocument(%struct.TYPE_19__* %73, i32* %74)
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %12, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %77 = icmp eq %struct.TYPE_21__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 (i32*, %struct.TYPE_19__*, %struct.TYPE_22__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_19__* %79, %struct.TYPE_22__* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32* %81)
  br label %130

83:                                               ; preds = %72
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  store %struct.TYPE_23__* %86, %struct.TYPE_23__** %7, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %91, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  store %struct.TYPE_21__* %94, %struct.TYPE_21__** %96, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %14, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = call %struct.TYPE_19__* @xsltParseStylesheetProcess(%struct.TYPE_19__* %108, %struct.TYPE_23__* %111)
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %11, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  store %struct.TYPE_23__* %123, %struct.TYPE_23__** %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %127 = icmp eq %struct.TYPE_19__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %83
  store i32 -1, i32* %6, align 4
  br label %130

129:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %128, %78, %63, %42, %27
  %131 = load i32*, i32** %9, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @xmlFree(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @xmlFree(i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32*, i32** %10, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @xmlFree(i32* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %20
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32* @xmlGetNsProp(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_19__*, %struct.TYPE_22__*, i8*, ...) #1

declare dso_local i32* @xmlNodeGetBase(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32* @xmlBuildURI(i32*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32, i32*) #1

declare dso_local %struct.TYPE_21__* @xsltLoadStyleDocument(%struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_19__* @xsltParseStylesheetProcess(%struct.TYPE_19__*, %struct.TYPE_23__*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
