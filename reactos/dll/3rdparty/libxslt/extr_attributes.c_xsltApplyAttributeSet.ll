; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attributes.c_xsltApplyAttributeSet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attributes.c_xsltApplyAttributeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_27__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64* }
%struct.TYPE_30__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64* }

@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"The name '%s' in use-attribute-sets is not a valid QName.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"use-attribute-set : No namespace found for QName '%s:%s'\0A\00", align 1
@XSLT_DEBUG_NONE = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltApplyAttributeSet(%struct.TYPE_24__* %0, %struct.TYPE_29__* %1, %struct.TYPE_29__* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64* null, i64** %9, align 8
  store i64* null, i64** %10, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %4
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %22 = icmp eq %struct.TYPE_29__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %182

24:                                               ; preds = %20
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %32 = bitcast %struct.TYPE_29__* %31 to %struct.TYPE_30__*
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = icmp ne %struct.TYPE_23__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %38 = bitcast %struct.TYPE_29__* %37 to %struct.TYPE_30__*
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %8, align 8
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i64*, i64** %8, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %182

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i64*, i64** %8, align 8
  store i64* %51, i64** %11, align 8
  br label %52

52:                                               ; preds = %180, %50
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %182

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %62, %56
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @IS_BLANK(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %11, align 8
  br label %57

65:                                               ; preds = %57
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %182

70:                                               ; preds = %65
  %71 = load i64*, i64** %11, align 8
  store i64* %71, i64** %12, align 8
  br label %72

72:                                               ; preds = %84, %70
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i64*, i64** %12, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @IS_BLANK(i64 %78)
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %76, %72
  %83 = phi i1 [ false, %72 ], [ %81, %76 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i64*, i64** %12, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %12, align 8
  br label %72

87:                                               ; preds = %82
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = load i64*, i64** %12, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = ptrtoint i64* %92 to i64
  %95 = ptrtoint i64* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i64* @xmlDictLookup(i32 %90, i64* %91, i32 %98)
  store i64* %99, i64** %11, align 8
  %100 = load i64*, i64** %11, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %180

102:                                              ; preds = %87
  store i64* null, i64** %16, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = call i64 @xmlValidateQName(i64* %103, i32 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = call i32 (%struct.TYPE_24__*, i32*, %struct.TYPE_29__*, i8*, i64*, ...) @xsltTransformError(%struct.TYPE_24__* %107, i32* null, %struct.TYPE_29__* %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64* %109)
  br label %182

111:                                              ; preds = %102
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = call i64* @xsltSplitQName(i32 %114, i64* %115, i64** %10)
  store i64* %116, i64** %9, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = icmp ne i64* %117, null
  br i1 %118, label %119, label %138

119:                                              ; preds = %111
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = call %struct.TYPE_28__* @xmlSearchNs(i32 %122, %struct.TYPE_29__* %123, i64* %124)
  store %struct.TYPE_28__* %125, %struct.TYPE_28__** %15, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %127 = icmp eq %struct.TYPE_28__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %131 = load i64*, i64** %10, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = call i32 (%struct.TYPE_24__*, i32*, %struct.TYPE_29__*, i8*, i64*, ...) @xsltTransformError(%struct.TYPE_24__* %129, i32* null, %struct.TYPE_29__* %130, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64* %131, i64* %132)
  br label %182

134:                                              ; preds = %119
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  store i64* %137, i64** %16, align 8
  br label %138

138:                                              ; preds = %134, %111
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  store %struct.TYPE_25__* %141, %struct.TYPE_25__** %14, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64*, i64** %9, align 8
  %146 = load i64*, i64** %16, align 8
  %147 = call %struct.TYPE_26__* @xmlHashLookup2(i32* %144, i64* %145, i64* %146)
  store %struct.TYPE_26__* %147, %struct.TYPE_26__** %13, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %149 = icmp ne %struct.TYPE_26__* %148, null
  br i1 %149, label %150, label %179

150:                                              ; preds = %138
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %152, align 8
  store %struct.TYPE_27__* %153, %struct.TYPE_27__** %17, align 8
  br label %154

154:                                              ; preds = %174, %150
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %156 = icmp ne %struct.TYPE_27__* %155, null
  br i1 %156, label %157, label %178

157:                                              ; preds = %154
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = icmp ne %struct.TYPE_22__* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @xsltAttribute(%struct.TYPE_24__* %163, %struct.TYPE_29__* %164, %struct.TYPE_22__* %167, i32 %172)
  br label %174

174:                                              ; preds = %162, %157
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  store %struct.TYPE_27__* %177, %struct.TYPE_27__** %17, align 8
  br label %154

178:                                              ; preds = %154
  br label %179

179:                                              ; preds = %178, %138
  br label %180

180:                                              ; preds = %179, %87
  %181 = load i64*, i64** %12, align 8
  store i64* %181, i64** %11, align 8
  br label %52

182:                                              ; preds = %23, %47, %106, %128, %69, %52
  ret void
}

declare dso_local i64 @IS_BLANK(i64) #1

declare dso_local i64* @xmlDictLookup(i32, i64*, i32) #1

declare dso_local i64 @xmlValidateQName(i64*, i32) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_24__*, i32*, %struct.TYPE_29__*, i8*, i64*, ...) #1

declare dso_local i64* @xsltSplitQName(i32, i64*, i64**) #1

declare dso_local %struct.TYPE_28__* @xmlSearchNs(i32, %struct.TYPE_29__*, i64*) #1

declare dso_local %struct.TYPE_26__* @xmlHashLookup2(i32*, i64*, i64*) #1

declare dso_local i32 @xsltAttribute(%struct.TYPE_24__*, %struct.TYPE_29__*, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
