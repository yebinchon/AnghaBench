; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8*, i32 }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32*, i32* }
%struct.TYPE_29__ = type { i64, i32*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_31__** }

@.str = private unnamed_addr constant [34 x i8] c"xsl:copy-of : compilation failed\0A\00", align 1
@XPATH_NODESET = common dso_local global i64 0, align 8
@XML_DOCUMENT_NODE = common dso_local global i64 0, align 8
@XML_HTML_DOCUMENT_NODE = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XPATH_XSLT_TREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"Internal error in xsltCopyOf(): failed to cast an XPath object to string.\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i8* null, align 8
@XSLT_TRACE_COPY_OF = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltCopyOf(%struct.TYPE_27__* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %11, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = icmp eq %struct.TYPE_27__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %22 = icmp eq %struct.TYPE_31__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %25 = icmp eq %struct.TYPE_31__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %4
  br label %220

27:                                               ; preds = %23
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %29 = icmp eq %struct.TYPE_28__* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %30, %27
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %43 = call i32 @xsltTransformError(%struct.TYPE_27__* %41, i32* null, %struct.TYPE_31__* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %220

44:                                               ; preds = %35
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %48 = call %struct.TYPE_29__* @xsltPreCompEval(%struct.TYPE_27__* %45, %struct.TYPE_31__* %46, %struct.TYPE_28__* %47)
  store %struct.TYPE_29__* %48, %struct.TYPE_29__** %10, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %50 = icmp ne %struct.TYPE_29__* %49, null
  br i1 %50, label %51, label %210

51:                                               ; preds = %44
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XPATH_NODESET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %133

57:                                               ; preds = %51
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %59, align 8
  store %struct.TYPE_30__* %60, %struct.TYPE_30__** %11, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %62 = icmp ne %struct.TYPE_30__* %61, null
  br i1 %62, label %63, label %132

63:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %128, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %131

70:                                               ; preds = %64
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %73, i64 %75
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %76, align 8
  store %struct.TYPE_31__* %77, %struct.TYPE_31__** %13, align 8
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %79 = icmp eq %struct.TYPE_31__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %128

81:                                               ; preds = %70
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XML_DOCUMENT_NODE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @XML_HTML_DOCUMENT_NODE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87, %81
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @xsltCopyTreeList(%struct.TYPE_27__* %94, %struct.TYPE_31__* %95, i32 %98, i32 %101, i32 0, i32 0)
  br label %127

103:                                              ; preds = %87
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %116 = ptrtoint %struct.TYPE_31__* %115 to i32
  %117 = call i32 @xsltShallowCopyAttr(%struct.TYPE_27__* %110, %struct.TYPE_31__* %111, i32 %114, i32 %116)
  br label %126

118:                                              ; preds = %103
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @xsltCopyTree(%struct.TYPE_27__* %119, %struct.TYPE_31__* %120, %struct.TYPE_31__* %121, i32 %124, i32 0, i32 0)
  br label %126

126:                                              ; preds = %118, %109
  br label %127

127:                                              ; preds = %126, %93
  br label %128

128:                                              ; preds = %127, %80
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %64

131:                                              ; preds = %64
  br label %132

132:                                              ; preds = %131, %57
  br label %209

133:                                              ; preds = %51
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @XPATH_XSLT_TREE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %133
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %141, align 8
  store %struct.TYPE_30__* %142, %struct.TYPE_30__** %11, align 8
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %144 = icmp ne %struct.TYPE_30__* %143, null
  br i1 %144, label %145, label %179

145:                                              ; preds = %139
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %147, align 8
  %149 = icmp ne %struct.TYPE_31__** %148, null
  br i1 %149, label %150, label %179

150:                                              ; preds = %145
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %153, i64 0
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %154, align 8
  %156 = icmp ne %struct.TYPE_31__* %155, null
  br i1 %156, label %157, label %179

157:                                              ; preds = %150
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %160, i64 0
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %161, align 8
  %163 = call i64 @IS_XSLT_REAL_NODE(%struct.TYPE_31__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %157
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %170, i64 0
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @xsltCopyTreeList(%struct.TYPE_27__* %166, %struct.TYPE_31__* %167, i32 %174, i32 %177, i32 0, i32 0)
  br label %179

179:                                              ; preds = %165, %157, %150, %145, %139
  br label %208

180:                                              ; preds = %133
  store i64* null, i64** %14, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %182 = call i64* @xmlXPathCastToString(%struct.TYPE_29__* %181)
  store i64* %182, i64** %14, align 8
  %183 = load i64*, i64** %14, align 8
  %184 = icmp eq i64* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %188 = call i32 @xsltTransformError(%struct.TYPE_27__* %186, i32* null, %struct.TYPE_31__* %187, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %189 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  br label %207

192:                                              ; preds = %180
  %193 = load i64*, i64** %14, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i64*, i64** %14, align 8
  %203 = call i32 @xsltCopyTextString(%struct.TYPE_27__* %198, i32 %201, i64* %202, i32 0)
  br label %204

204:                                              ; preds = %197, %192
  %205 = load i64*, i64** %14, align 8
  %206 = call i32 @xmlFree(i64* %205)
  br label %207

207:                                              ; preds = %204, %185
  br label %208

208:                                              ; preds = %207, %179
  br label %209

209:                                              ; preds = %208, %132
  br label %214

210:                                              ; preds = %44
  %211 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %210, %209
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %216 = icmp ne %struct.TYPE_29__* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %219 = call i32 @xmlXPathFreeObject(%struct.TYPE_29__* %218)
  br label %220

220:                                              ; preds = %26, %40, %217, %214
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_27__*, i32*, %struct.TYPE_31__*, i8*) #1

declare dso_local %struct.TYPE_29__* @xsltPreCompEval(%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xsltCopyTreeList(%struct.TYPE_27__*, %struct.TYPE_31__*, i32, i32, i32, i32) #1

declare dso_local i32 @xsltShallowCopyAttr(%struct.TYPE_27__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @xsltCopyTree(%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i64 @IS_XSLT_REAL_NODE(%struct.TYPE_31__*) #1

declare dso_local i64* @xmlXPathCastToString(%struct.TYPE_29__*) #1

declare dso_local i32 @xsltCopyTextString(%struct.TYPE_27__*, i32, i64*, i32) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
