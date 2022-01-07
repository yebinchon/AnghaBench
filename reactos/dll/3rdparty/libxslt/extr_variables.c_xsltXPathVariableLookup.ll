; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltXPathVariableLookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltXPathVariableLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [42 x i8] c"Variable '{%s}%s' has not been declared.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Variable '%s' has not been declared.\0A\00", align 1
@XSLT_TRACE_VARIABLES = common dso_local global i32 0, align 4
@stack_addr = common dso_local global i32 0, align 4
@stack_cmp = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltXPathVariableLookup(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i32* null, i32** %4, align 8
  br label %195

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %160

28:                                               ; preds = %21
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %65, %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %12, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %39
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp eq i32* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %11, align 8
  br label %131

61:                                               ; preds = %53, %39
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %12, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %7, align 8
  store i32* %70, i32** %14, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32* @xmlDictLookup(i32 %73, i32* %74, i32 -1)
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @xmlDictLookup(i32 %81, i32* %82, i32 -1)
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %78, %68
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = icmp ne i32* %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %89, %90
  br i1 %91, label %92, label %130

92:                                               ; preds = %88, %84
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %126, %92
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %106, i64 %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %12, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = icmp eq i32* %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %103
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = icmp eq i32* %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %11, align 8
  br label %131

125:                                              ; preds = %117, %103
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  br label %97

129:                                              ; preds = %97
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %123, %59
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = icmp ne %struct.TYPE_9__* %132, null
  br i1 %133, label %134, label %159

134:                                              ; preds = %131
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %142 = call i32* @xsltEvalVariable(%struct.TYPE_8__* %140, %struct.TYPE_9__* %141, i32* null)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32* %142, i32** %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %139, %134
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32* @xmlXPathObjectCopy(i32* %155)
  store i32* %156, i32** %9, align 8
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32*, i32** %9, align 8
  store i32* %158, i32** %4, align 8
  br label %195

159:                                              ; preds = %131
  br label %160

160:                                              ; preds = %159, %21
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = call i32* @xsltGlobalVariableLookup(%struct.TYPE_8__* %166, i32* %167, i32* %168)
  store i32* %169, i32** %9, align 8
  br label %170

170:                                              ; preds = %165, %160
  %171 = load i32*, i32** %9, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %192

173:                                              ; preds = %170
  %174 = load i32*, i32** %7, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 (%struct.TYPE_8__*, i32*, i32, i8*, i32*, ...) @xsltTransformError(%struct.TYPE_8__* %177, i32* null, i32 %180, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %181, i32* %182)
  br label %191

184:                                              ; preds = %173
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 (%struct.TYPE_8__*, i32*, i32, i8*, i32*, ...) @xsltTransformError(%struct.TYPE_8__* %185, i32* null, i32 %188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %189)
  br label %191

191:                                              ; preds = %184, %176
  br label %193

192:                                              ; preds = %170
  br label %193

193:                                              ; preds = %192, %191
  %194 = load i32*, i32** %9, align 8
  store i32* %194, i32** %4, align 8
  br label %195

195:                                              ; preds = %193, %157, %20
  %196 = load i32*, i32** %4, align 8
  ret i32* %196
}

declare dso_local i32* @xmlDictLookup(i32, i32*, i32) #1

declare dso_local i32* @xsltEvalVariable(%struct.TYPE_8__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32* @xmlXPathObjectCopy(i32*) #1

declare dso_local i32* @xsltGlobalVariableLookup(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_8__*, i32*, i32, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
