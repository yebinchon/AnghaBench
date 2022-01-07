; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attributes.c_xsltResolveAttrSet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attributes.c_xsltResolveAttrSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32*, i32 }

@ATTRSET_RESOLVED = common dso_local global i64 0, align 8
@ATTRSET_RESOLVING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"xsl:attribute-set : use-attribute-sets recursion detected on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"xsl:attribute-set : use-attribute-sets maximum recursion depth exceeded on %s\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i32*, i32)* @xsltResolveAttrSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltResolveAttrSet(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATTRSET_RESOLVED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %100

21:                                               ; preds = %6
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATTRSET_RESOLVING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @xsltTransformError(i32* null, %struct.TYPE_15__* %28, i32* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i64, i64* @ATTRSET_RESOLVED, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %100

38:                                               ; preds = %21
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 100
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @xsltTransformError(i32* null, %struct.TYPE_15__* %42, i32* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %100

49:                                               ; preds = %38
  %50 = load i64, i64* @ATTRSET_RESOLVING, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @xsltResolveUseAttrSets(%struct.TYPE_16__* %53, %struct.TYPE_15__* %54, i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = call %struct.TYPE_15__* @xsltNextImport(%struct.TYPE_15__* %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %13, align 8
  br label %59

59:                                               ; preds = %93, %49
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call %struct.TYPE_16__* @xmlHashLookup2(i32* %70, i32* %71, i32* %72)
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %14, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %75 = icmp ne %struct.TYPE_16__* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %67
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @xsltResolveUseAttrSets(%struct.TYPE_16__* %77, %struct.TYPE_15__* %78, i32 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %83 = call i32 @xsltMergeAttrSets(%struct.TYPE_16__* %81, %struct.TYPE_16__* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @xmlHashRemoveEntry2(i32* %86, i32* %87, i32* %88, i32* null)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %91 = call i32 @xsltFreeAttrSet(%struct.TYPE_16__* %90)
  br label %92

92:                                               ; preds = %76, %67
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %95 = call %struct.TYPE_15__* @xsltNextImport(%struct.TYPE_15__* %94)
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %13, align 8
  br label %59

96:                                               ; preds = %59
  %97 = load i64, i64* @ATTRSET_RESOLVED, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %41, %27, %20
  ret void
}

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_15__*, i32*, i8*, i32*) #1

declare dso_local i32 @xsltResolveUseAttrSets(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @xsltNextImport(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @xmlHashLookup2(i32*, i32*, i32*) #1

declare dso_local i32 @xsltMergeAttrSets(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @xmlHashRemoveEntry2(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xsltFreeAttrSet(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
