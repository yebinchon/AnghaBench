; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_xmlSearchNsPrefixByHref.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_xmlSearchNsPrefixByHref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@XML_ENTITY_REF_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, %struct.TYPE_8__*, i32*)* @xmlSearchNsPrefixByHref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @xmlSearchNsPrefixByHref(i32 %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %9, align 8
  br label %11

11:                                               ; preds = %121, %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %125

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_ENTITY_REF_NODE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XML_ENTITY_NODE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XML_ENTITY_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20, %14
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %126

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %8, align 8
  br label %43

43:                                               ; preds = %75, %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @xmlStrEqual(i64 %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.TYPE_7__* @xmlSearchNs(i32 %64, %struct.TYPE_8__* %65, i64 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = icmp eq %struct.TYPE_7__* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %4, align 8
  br label %126

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %56, %51, %46
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %8, align 8
  br label %43

79:                                               ; preds = %43
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = icmp ne %struct.TYPE_8__* %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %8, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %119

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i64 @xmlStrEqual(i64 %102, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call %struct.TYPE_7__* @xmlSearchNs(i32 %107, %struct.TYPE_8__* %108, i64 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = icmp eq %struct.TYPE_7__* %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %4, align 8
  br label %126

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %99, %94, %89
  br label %119

119:                                              ; preds = %118, %83
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %33
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %6, align 8
  br label %11

125:                                              ; preds = %11
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %126

126:                                              ; preds = %125, %115, %72, %32
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %127
}

declare dso_local i64 @xmlStrEqual(i64, i32*) #1

declare dso_local %struct.TYPE_7__* @xmlSearchNs(i32, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
