; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i64, i64, i32, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, i32*, i32* }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"any\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltNumberFormat(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x double], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @xsltNumberFormatTokenize(i32* %22, %struct.TYPE_17__* %11)
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %207

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XSLT_NAMESPACE, align 4
  %36 = call i32* @xsltEvalAttrValueTemplate(%struct.TYPE_15__* %31, i32 %34, i32* bitcast ([7 x i8]* @.str to i32*), i32 %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %207

40:                                               ; preds = %30
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @xsltNumberFormatTokenize(i32* %41, %struct.TYPE_17__* %11)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @xmlFree(i32* %43)
  br label %45

45:                                               ; preds = %40, %19
  %46 = call i32* (...) @xmlBufferCreate()
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %163

50:                                               ; preds = %45
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @xsltNumberFormatGetValue(i32 %58, i32 %59, i64 %62, double* %10)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @xsltNumberFormatInsertNumbers(%struct.TYPE_16__* %67, double* %10, i32 1, %struct.TYPE_17__* %11, i32* %68)
  br label %70

70:                                               ; preds = %66, %55
  br label %153

71:                                               ; preds = %50
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %71
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @xmlStrEqual(i64 %79, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @xsltNumberFormatGetMultipleLevel(%struct.TYPE_15__* %83, i32 %84, i32 %87, i32 %90, double* %10, i32 1)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %82
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @xsltNumberFormatInsertNumbers(%struct.TYPE_16__* %95, double* %10, i32 1, %struct.TYPE_17__* %11, i32* %96)
  br label %98

98:                                               ; preds = %94, %82
  br label %151

99:                                               ; preds = %76
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @xmlStrEqual(i64 %102, i32* bitcast ([9 x i8]* @.str.2 to i32*))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %99
  store i32 1024, i32* %14, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds [1024 x double], [1024 x double]* %13, i64 0, i64 0
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @xsltNumberFormatGetMultipleLevel(%struct.TYPE_15__* %106, i32 %107, i32 %110, i32 %113, double* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %105
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = getelementptr inbounds [1024 x double], [1024 x double]* %13, i64 0, i64 0
  %122 = load i32, i32* %8, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @xsltNumberFormatInsertNumbers(%struct.TYPE_16__* %120, double* %121, i32 %122, %struct.TYPE_17__* %11, i32* %123)
  br label %125

125:                                              ; preds = %119, %105
  br label %150

126:                                              ; preds = %99
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @xmlStrEqual(i64 %129, i32* bitcast ([4 x i8]* @.str.3 to i32*))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @xsltNumberFormatGetAnyLevel(%struct.TYPE_15__* %133, i32 %134, i32 %137, i32 %140, double* %10)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @xsltNumberFormatInsertNumbers(%struct.TYPE_16__* %145, double* %10, i32 1, %struct.TYPE_17__* %11, i32* %146)
  br label %148

148:                                              ; preds = %144, %132
  br label %149

149:                                              ; preds = %148, %126
  br label %150

150:                                              ; preds = %149, %125
  br label %151

151:                                              ; preds = %150, %98
  br label %152

152:                                              ; preds = %151, %71
  br label %153

153:                                              ; preds = %152, %70
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @xmlBufferContent(i32* %158)
  %160 = call i32 @xsltCopyTextString(%struct.TYPE_15__* %154, i32 %157, i32 %159, i32 0)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @xmlBufferFree(i32* %161)
  br label %163

163:                                              ; preds = %153, %49
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @xmlFree(i32* %169)
  br label %171

171:                                              ; preds = %167, %163
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @xmlFree(i32* %177)
  br label %179

179:                                              ; preds = %175, %171
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %204, %179
  %181 = load i32, i32* %9, align 4
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %207

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %203

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @xmlFree(i32* %201)
  br label %203

203:                                              ; preds = %194, %185
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %180

207:                                              ; preds = %29, %39, %180
  ret void
}

declare dso_local i32 @xsltNumberFormatTokenize(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @xsltEvalAttrValueTemplate(%struct.TYPE_15__*, i32, i32*, i32) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32* @xmlBufferCreate(...) #1

declare dso_local i32 @xsltNumberFormatGetValue(i32, i32, i64, double*) #1

declare dso_local i32 @xsltNumberFormatInsertNumbers(%struct.TYPE_16__*, double*, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @xmlStrEqual(i64, i32*) #1

declare dso_local i32 @xsltNumberFormatGetMultipleLevel(%struct.TYPE_15__*, i32, i32, i32, double*, i32) #1

declare dso_local i32 @xsltNumberFormatGetAnyLevel(%struct.TYPE_15__*, i32, i32, i32, double*) #1

declare dso_local i32 @xsltCopyTextString(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @xmlBufferContent(i32*) #1

declare dso_local i32 @xmlBufferFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
