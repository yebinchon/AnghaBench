; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltRegisterGlobalVariable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltRegisterGlobalVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i8* }
%struct.TYPE_9__ = type { i64, i32 }

@XSLT_FUNC_VARIABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"redefinition of global variable %s\0A\00", align 1
@XSLT_FUNC_PARAM = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32*, i32, %struct.TYPE_9__*, i32*)* @xsltRegisterGlobalVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltRegisterGlobalVariable(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_9__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %165

21:                                               ; preds = %7
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %8, align 4
  br label %165

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  br label %165

29:                                               ; preds = %25
  %30 = call %struct.TYPE_10__* @xsltNewStackElem(i32* null)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %16, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %32 = icmp eq %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %165

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i8* @xmlDictLookup(i32 %40, i32* %41, i32 -1)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @xmlDictLookup(i32 %48, i32* %49, i32 -1)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %34
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i8* @xmlDictLookup(i32 %58, i32* %59, i32 -1)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %34
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %17, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %72 = icmp eq %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %78, align 8
  br label %154

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %144, %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %148

83:                                               ; preds = %80
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @XSLT_FUNC_VARIABLE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %138

91:                                               ; preds = %83
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @XSLT_FUNC_VARIABLE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %138

99:                                               ; preds = %91
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @xmlStrEqual(i64 %102, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %99
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %125, label %116

116:                                              ; preds = %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @xmlStrEqual(i64 %119, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %116, %108
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @xsltTransformError(i32* null, %struct.TYPE_8__* %126, i32 %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %125, %116, %99, %91, %83
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = icmp eq %struct.TYPE_10__* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %148

144:                                              ; preds = %138
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %17, align 8
  br label %80

148:                                              ; preds = %143, %80
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %153, align 8
  br label %154

154:                                              ; preds = %148, %73
  %155 = load i32*, i32** %15, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load i32*, i32** %15, align 8
  %161 = call i32 @xmlXPathNewString(i32* %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %157, %154
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %164, %33, %28, %24, %20
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_10__* @xsltNewStackElem(i32*) #1

declare dso_local i8* @xmlDictLookup(i32, i32*, i32) #1

declare dso_local i64 @xmlStrEqual(i64, i64) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_8__*, i32, i8*, i64) #1

declare dso_local i32 @xmlXPathNewString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
