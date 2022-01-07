; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseTemplateContent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseTemplateContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32*, i32*, i32, i64, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_28__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32 }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"disable-output-escaping\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"xsl:text: disable-output-escaping allows only yes or no\0A\00", align 1
@XML_COMMENT_NODE = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"xsltParseTemplateContent: xslt:text content problem\0A\00", align 1
@xmlStringTextNoenc = common dso_local global i32 0, align 4
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_DECL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"xsltParseTemplateContent: ignoring misplaced param element\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltParseTemplateContent(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = icmp eq %struct.TYPE_26__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = icmp eq %struct.TYPE_27__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16, %2
  br label %401

26:                                               ; preds = %19
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %30

30:                                               ; preds = %338, %308, %297, %26
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %32 = icmp ne %struct.TYPE_27__* %31, null
  br i1 %32, label %33, label %339

33:                                               ; preds = %30
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %35 = icmp ne %struct.TYPE_27__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %38 = call i32 @xmlUnlinkNode(%struct.TYPE_27__* %37)
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %40 = call i32 @xmlFreeNode(%struct.TYPE_27__* %39)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %43 = call i64 @IS_XSLT_ELEM(%struct.TYPE_27__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %211

45:                                               ; preds = %41
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %48 = call i32 @xsltStylePreCompute(%struct.TYPE_26__* %46, %struct.TYPE_27__* %47)
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = call i64 @IS_XSLT_NAME(%struct.TYPE_27__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %210

52:                                               ; preds = %45
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = icmp ne %struct.TYPE_27__* %55, null
  br i1 %56, label %57, label %208

57:                                               ; preds = %52
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  store %struct.TYPE_27__* %60, %struct.TYPE_27__** %8, align 8
  store i32 0, i32* %10, align 4
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %62 = call i32* @xmlGetNsProp(%struct.TYPE_27__* %61, i32* bitcast ([24 x i8]* @.str.1 to i32*), i32* null)
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %57
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @xmlStrEqual(i32* %66, i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %10, align 4
  br label %83

70:                                               ; preds = %65
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @xmlStrEqual(i32* %71, i32* bitcast ([3 x i8]* @.str.3 to i32*))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %77 = call i32 @xsltTransformError(i32* null, %struct.TYPE_26__* %75, %struct.TYPE_27__* %76, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %74, %70
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @xmlFree(i32* %84)
  br label %86

86:                                               ; preds = %83, %57
  br label %87

87:                                               ; preds = %133, %96, %86
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %89 = icmp ne %struct.TYPE_27__* %88, null
  br i1 %89, label %90, label %137

90:                                               ; preds = %87
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XML_COMMENT_NODE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %98, align 8
  store %struct.TYPE_27__* %99, %struct.TYPE_27__** %8, align 8
  br label %87

100:                                              ; preds = %90
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @XML_TEXT_NODE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %115 = call i32 @xsltTransformError(i32* null, %struct.TYPE_26__* %113, %struct.TYPE_27__* %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %137

120:                                              ; preds = %106, %100
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @xmlStringTextNoenc, align 4
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %123, %120
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %135, align 8
  store %struct.TYPE_27__* %136, %struct.TYPE_27__** %8, align 8
  br label %87

137:                                              ; preds = %112, %87
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %139 = icmp eq %struct.TYPE_27__* %138, null
  br i1 %139, label %140, label %207

140:                                              ; preds = %137
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %142, align 8
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %8, align 8
  br label %144

144:                                              ; preds = %196, %140
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %146 = icmp ne %struct.TYPE_27__* %145, null
  br i1 %146, label %147, label %206

147:                                              ; preds = %144
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %196

152:                                              ; preds = %147
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %196

157:                                              ; preds = %152
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 7
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @xmlDictOwns(i32 %160, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %196, label %166

166:                                              ; preds = %157
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %195

173:                                              ; preds = %166
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 7
  %181 = load i32*, i32** %180, align 8
  %182 = call i32* @xmlDictLookup(i32* %178, i32* %181, i32 -1)
  store i32* %182, i32** %11, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %183, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %173
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %190 = call i32 @xmlNodeSetContent(%struct.TYPE_27__* %189, i32* null)
  %191 = load i32*, i32** %11, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 7
  store i32* %191, i32** %193, align 8
  br label %194

194:                                              ; preds = %188, %173
  br label %195

195:                                              ; preds = %194, %166
  br label %196

196:                                              ; preds = %195, %157, %152, %147
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %198, align 8
  store %struct.TYPE_27__* %199, %struct.TYPE_27__** %9, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %201 = call i32 @xmlUnlinkNode(%struct.TYPE_27__* %200)
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %204 = call i32 @xmlAddPrevSibling(%struct.TYPE_27__* %202, %struct.TYPE_27__* %203)
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %205, %struct.TYPE_27__** %8, align 8
  br label %144

206:                                              ; preds = %144
  br label %207

207:                                              ; preds = %206, %137
  br label %208

208:                                              ; preds = %207, %52
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %209, %struct.TYPE_27__** %6, align 8
  br label %303

210:                                              ; preds = %45
  br label %284

211:                                              ; preds = %41
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %213, align 8
  %215 = icmp ne %struct.TYPE_24__* %214, null
  br i1 %215, label %216, label %234

216:                                              ; preds = %211
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 6
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @xsltCheckExtPrefix(%struct.TYPE_26__* %222, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %221
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %233 = call i32 @xsltStylePreCompute(%struct.TYPE_26__* %231, %struct.TYPE_27__* %232)
  br label %283

234:                                              ; preds = %221, %216, %211
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %282

240:                                              ; preds = %234
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %242, align 8
  %244 = icmp eq %struct.TYPE_24__* %243, null
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 5
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %252, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = call %struct.TYPE_24__* @xmlSearchNsByHref(%struct.TYPE_25__* %253, %struct.TYPE_27__* %254, i32* %257)
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 6
  store %struct.TYPE_24__* %258, %struct.TYPE_24__** %260, align 8
  br label %261

261:                                              ; preds = %250, %245, %240
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %263, align 8
  %265 = icmp ne %struct.TYPE_28__* %264, null
  br i1 %265, label %266, label %281

266:                                              ; preds = %261
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %268, align 8
  store %struct.TYPE_28__* %269, %struct.TYPE_28__** %12, align 8
  br label %270

270:                                              ; preds = %273, %266
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %272 = icmp ne %struct.TYPE_28__* %271, null
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %276 = call i32 @xsltCompileAttr(%struct.TYPE_26__* %274, %struct.TYPE_28__* %275)
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %278, align 8
  store %struct.TYPE_28__* %279, %struct.TYPE_28__** %12, align 8
  br label %270

280:                                              ; preds = %270
  br label %281

281:                                              ; preds = %280, %261
  br label %282

282:                                              ; preds = %281, %234
  br label %283

283:                                              ; preds = %282, %230
  br label %284

284:                                              ; preds = %283, %210
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %286, align 8
  %288 = icmp ne %struct.TYPE_27__* %287, null
  br i1 %288, label %289, label %302

289:                                              ; preds = %284
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @XML_ENTITY_DECL, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %289
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %299, align 8
  store %struct.TYPE_27__* %300, %struct.TYPE_27__** %5, align 8
  br label %30

301:                                              ; preds = %289
  br label %302

302:                                              ; preds = %301, %284
  br label %303

303:                                              ; preds = %302, %208
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %305, align 8
  %307 = icmp ne %struct.TYPE_27__* %306, null
  br i1 %307, label %308, label %312

308:                                              ; preds = %303
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %310, align 8
  store %struct.TYPE_27__* %311, %struct.TYPE_27__** %5, align 8
  br label %30

312:                                              ; preds = %303
  br label %313

313:                                              ; preds = %335, %312
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %315, align 8
  store %struct.TYPE_27__* %316, %struct.TYPE_27__** %5, align 8
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %318 = icmp eq %struct.TYPE_27__* %317, null
  br i1 %318, label %319, label %320

319:                                              ; preds = %313
  br label %338

320:                                              ; preds = %313
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %323 = icmp eq %struct.TYPE_27__* %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %5, align 8
  br label %338

325:                                              ; preds = %320
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %327, align 8
  %329 = icmp ne %struct.TYPE_27__* %328, null
  br i1 %329, label %330, label %334

330:                                              ; preds = %325
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %332, align 8
  store %struct.TYPE_27__* %333, %struct.TYPE_27__** %5, align 8
  br label %338

334:                                              ; preds = %325
  br label %335

335:                                              ; preds = %334
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %337 = icmp ne %struct.TYPE_27__* %336, null
  br i1 %337, label %313, label %338

338:                                              ; preds = %335, %330, %324, %319
  br label %30

339:                                              ; preds = %30
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %341 = icmp ne %struct.TYPE_27__* %340, null
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %344 = call i32 @xmlUnlinkNode(%struct.TYPE_27__* %343)
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %346 = call i32 @xmlFreeNode(%struct.TYPE_27__* %345)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %347

347:                                              ; preds = %342, %339
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %349, align 8
  store %struct.TYPE_27__* %350, %struct.TYPE_27__** %5, align 8
  br label %351

351:                                              ; preds = %363, %347
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %353 = icmp ne %struct.TYPE_27__* %352, null
  br i1 %353, label %354, label %367

354:                                              ; preds = %351
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %356 = call i64 @IS_XSLT_ELEM(%struct.TYPE_27__* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %354
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %360 = call i64 @IS_XSLT_NAME(%struct.TYPE_27__* %359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %358
  br label %367

363:                                              ; preds = %358, %354
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_27__*, %struct.TYPE_27__** %365, align 8
  store %struct.TYPE_27__* %366, %struct.TYPE_27__** %5, align 8
  br label %351

367:                                              ; preds = %362, %351
  br label %368

368:                                              ; preds = %400, %367
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %370 = icmp ne %struct.TYPE_27__* %369, null
  br i1 %370, label %371, label %401

371:                                              ; preds = %368
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %373 = call i64 @IS_XSLT_ELEM(%struct.TYPE_27__* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %399

375:                                              ; preds = %371
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %377 = call i64 @IS_XSLT_NAME(%struct.TYPE_27__* %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %375
  %380 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %380, %struct.TYPE_27__** %13, align 8
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %383 = call i32 @xsltTransformError(i32* null, %struct.TYPE_26__* %381, %struct.TYPE_27__* %382, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %385 = icmp ne %struct.TYPE_26__* %384, null
  br i1 %385, label %386, label %391

386:                                              ; preds = %379
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %386, %379
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** %393, align 8
  store %struct.TYPE_27__* %394, %struct.TYPE_27__** %5, align 8
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %396 = call i32 @xmlUnlinkNode(%struct.TYPE_27__* %395)
  %397 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %398 = call i32 @xmlFreeNode(%struct.TYPE_27__* %397)
  br label %400

399:                                              ; preds = %375, %371
  br label %401

400:                                              ; preds = %391
  br label %368

401:                                              ; preds = %25, %399, %368
  ret void
}

declare dso_local i32 @xmlUnlinkNode(%struct.TYPE_27__*) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_27__*) #1

declare dso_local i64 @IS_XSLT_ELEM(%struct.TYPE_27__*) #1

declare dso_local i32 @xsltStylePreCompute(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i64 @IS_XSLT_NAME(%struct.TYPE_27__*, i8*) #1

declare dso_local i32* @xmlGetNsProp(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_26__*, %struct.TYPE_27__*, i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlDictOwns(i32, i32*) #1

declare dso_local i32* @xmlDictLookup(i32*, i32*, i32) #1

declare dso_local i32 @xmlNodeSetContent(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @xmlAddPrevSibling(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i64 @xsltCheckExtPrefix(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_24__* @xmlSearchNsByHref(%struct.TYPE_25__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @xsltCompileAttr(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
