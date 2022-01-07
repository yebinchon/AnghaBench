; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltPreprocessStylesheet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltPreprocessStylesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i32*, i32*, i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_22__*, i32*, %struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, i32, i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_25__* }

@.str = private unnamed_addr constant [11 x i8] c"stylesheet\00", align 1
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@XML_ENTITY_DECL = common dso_local global i64 0, align 8
@XML_ENTITY_REF_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_NODE = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_25__*)* @xsltPreprocessStylesheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltPreprocessStylesheet(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = icmp eq %struct.TYPE_23__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = icmp eq %struct.TYPE_25__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  br label %475

25:                                               ; preds = %21
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = icmp ne %struct.TYPE_21__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %49

46:                                               ; preds = %35, %30, %25
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = icmp ne %struct.TYPE_25__* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = call i64 @IS_XSLT_ELEM(%struct.TYPE_25__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = call i64 @IS_XSLT_NAME(%struct.TYPE_25__* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %6, align 8
  br label %63

62:                                               ; preds = %56, %52, %49
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  br label %63

63:                                               ; preds = %62, %60
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  br label %64

64:                                               ; preds = %466, %433, %421, %63
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = icmp ne %struct.TYPE_25__* %65, null
  br i1 %66, label %67, label %467

67:                                               ; preds = %64
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = icmp ne %struct.TYPE_25__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = call i32 @xmlUnlinkNode(%struct.TYPE_25__* %71)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = call i32 @xmlFreeNode(%struct.TYPE_25__* %73)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  br label %75

75:                                               ; preds = %70, %67
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %285

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %148

84:                                               ; preds = %81
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = icmp ne %struct.TYPE_26__* %87, null
  br i1 %88, label %89, label %148

89:                                               ; preds = %84
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %91, align 8
  store %struct.TYPE_26__* %92, %struct.TYPE_26__** %9, align 8
  br label %93

93:                                               ; preds = %143, %89
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %95 = icmp ne %struct.TYPE_26__* %94, null
  br i1 %95, label %96, label %147

96:                                               ; preds = %93
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  store %struct.TYPE_25__* %99, %struct.TYPE_25__** %10, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %101 = icmp ne %struct.TYPE_25__* %100, null
  br i1 %101, label %102, label %143

102:                                              ; preds = %96
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XML_TEXT_NODE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %102
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %143

113:                                              ; preds = %108
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @xmlDictOwns(i32* %116, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %113
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = call i64 @xmlDictLookup(i32* %125, i32* %128, i32 -1)
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %11, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %131, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %138 = call i32 @xmlNodeSetContent(%struct.TYPE_25__* %137, i32* null)
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 5
  store i32* %139, i32** %141, align 8
  br label %142

142:                                              ; preds = %136, %122
  br label %143

143:                                              ; preds = %142, %113, %108, %102, %96
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  store %struct.TYPE_26__* %146, %struct.TYPE_26__** %9, align 8
  br label %93

147:                                              ; preds = %93
  br label %148

148:                                              ; preds = %147, %84, %81
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = call i64 @IS_XSLT_ELEM(%struct.TYPE_25__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %154 = call i64 @IS_XSLT_NAME(%struct.TYPE_25__* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %163, %156
  %158 = load i32, i32* %8, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %162 = call i32 @exclPrefixPop(%struct.TYPE_23__* %161)
  br label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %8, align 4
  br label %157

166:                                              ; preds = %157
  br label %428

167:                                              ; preds = %152
  br label %172

168:                                              ; preds = %148
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %171 = call i32 @xsltParseStylesheetExcludePrefix(%struct.TYPE_23__* %169, %struct.TYPE_25__* %170, i32 0)
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %168, %167
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = icmp ne %struct.TYPE_24__* %175, null
  br i1 %176, label %177, label %266

177:                                              ; preds = %172
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %266

182:                                              ; preds = %177
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %184, align 8
  store %struct.TYPE_24__* %185, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %15, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 7
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = call %struct.TYPE_25__* @xmlDocGetRootElement(%struct.TYPE_21__* %188)
  store %struct.TYPE_25__* %189, %struct.TYPE_25__** %15, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %191 = icmp ne %struct.TYPE_25__* %190, null
  br i1 %191, label %192, label %265

192:                                              ; preds = %182
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = icmp ne %struct.TYPE_25__* %193, %194
  br i1 %195, label %196, label %265

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %262, %196
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %199 = icmp ne %struct.TYPE_24__* %198, null
  br i1 %199, label %200, label %264

200:                                              ; preds = %197
  store i32 0, i32* %17, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  store %struct.TYPE_24__* %203, %struct.TYPE_24__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %204

204:                                              ; preds = %254, %200
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %206, %209
  br i1 %210, label %211, label %257

211:                                              ; preds = %204
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %253

216:                                              ; preds = %211
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @xmlStrEqual(i32 %219, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %253

229:                                              ; preds = %216
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %231 = icmp eq %struct.TYPE_24__* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 6
  store %struct.TYPE_24__* %235, %struct.TYPE_24__** %237, align 8
  br label %244

238:                                              ; preds = %229
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %240, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  store %struct.TYPE_24__* %241, %struct.TYPE_24__** %243, align 8
  br label %244

244:                                              ; preds = %238, %232
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 6
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 0
  store %struct.TYPE_24__* %247, %struct.TYPE_24__** %249, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 6
  store %struct.TYPE_24__* %250, %struct.TYPE_24__** %252, align 8
  store i32 1, i32* %17, align 4
  br label %257

253:                                              ; preds = %216, %211
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %16, align 4
  br label %204

257:                                              ; preds = %244, %204
  %258 = load i32, i32* %17, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %261, %struct.TYPE_24__** %13, align 8
  br label %262

262:                                              ; preds = %260, %257
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %263, %struct.TYPE_24__** %12, align 8
  br label %197

264:                                              ; preds = %197
  br label %265

265:                                              ; preds = %264, %192, %182
  br label %266

266:                                              ; preds = %265, %177, %172
  %267 = load i32, i32* %8, align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %266
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %272, align 8
  call void @xsltPreprocessStylesheet(%struct.TYPE_23__* %270, %struct.TYPE_25__* %273)
  br label %274

274:                                              ; preds = %280, %269
  %275 = load i32, i32* %8, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %279 = call i32 @exclPrefixPop(%struct.TYPE_23__* %278)
  br label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %8, align 4
  br label %274

283:                                              ; preds = %274
  br label %428

284:                                              ; preds = %266
  br label %353

285:                                              ; preds = %75
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @XML_TEXT_NODE, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %337

291:                                              ; preds = %285
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %293 = call i64 @IS_BLANK_NODE(%struct.TYPE_25__* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %291
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %297, align 8
  %299 = call i32 @xmlNodeGetSpacePreserve(%struct.TYPE_25__* %298)
  %300 = icmp ne i32 %299, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %302, %struct.TYPE_25__** %5, align 8
  br label %303

303:                                              ; preds = %301, %295
  br label %336

304:                                              ; preds = %291
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 5
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %335

309:                                              ; preds = %304
  %310 = load i32, i32* %7, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %335

312:                                              ; preds = %309
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 5
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @xmlDictOwns(i32* %315, i32* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %335, label %321

321:                                              ; preds = %312
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 5
  %327 = load i32*, i32** %326, align 8
  %328 = call i64 @xmlDictLookup(i32* %324, i32* %327, i32 -1)
  %329 = inttoptr i64 %328 to i32*
  store i32* %329, i32** %18, align 8
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %331 = call i32 @xmlNodeSetContent(%struct.TYPE_25__* %330, i32* null)
  %332 = load i32*, i32** %18, align 8
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 5
  store i32* %332, i32** %334, align 8
  br label %335

335:                                              ; preds = %321, %312, %309, %304
  br label %336

336:                                              ; preds = %335, %303
  br label %352

337:                                              ; preds = %285
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %342 = icmp ne i64 %340, %341
  br i1 %342, label %343, label %351

343:                                              ; preds = %337
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %348 = icmp ne i64 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %343
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %350, %struct.TYPE_25__** %5, align 8
  br label %428

351:                                              ; preds = %343, %337
  br label %352

352:                                              ; preds = %351, %336
  br label %353

353:                                              ; preds = %352, %284
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %392

359:                                              ; preds = %353
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %360, i32 0, i32 4
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %361, align 8
  %363 = icmp ne %struct.TYPE_22__* %362, null
  br i1 %363, label %364, label %392

364:                                              ; preds = %359
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %366 = icmp ne %struct.TYPE_25__* %365, null
  br i1 %366, label %367, label %392

367:                                              ; preds = %364
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %369, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %372 = icmp eq %struct.TYPE_25__* %370, %371
  br i1 %372, label %373, label %392

373:                                              ; preds = %367
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i32 0, i32 4
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @XSLT_NAMESPACE, align 4
  %380 = call i64 @xmlStrEqual(i32 %378, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %392, label %382

382:                                              ; preds = %373
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @xsltCheckExtURI(%struct.TYPE_23__* %383, i32 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %382
  br label %428

392:                                              ; preds = %382, %373, %367, %364, %359, %353
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 3
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %394, align 8
  %396 = icmp ne %struct.TYPE_25__* %395, null
  br i1 %396, label %397, label %426

397:                                              ; preds = %392
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 3
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @XML_ENTITY_DECL, align 8
  %404 = icmp ne i64 %402, %403
  br i1 %404, label %405, label %425

405:                                              ; preds = %397
  %406 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %406, i32 0, i32 3
  %408 = load %struct.TYPE_25__*, %struct.TYPE_25__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @XML_ENTITY_REF_NODE, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %425

413:                                              ; preds = %405
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %414, i32 0, i32 3
  %416 = load %struct.TYPE_25__*, %struct.TYPE_25__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @XML_ENTITY_NODE, align 8
  %420 = icmp ne i64 %418, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %413
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 3
  %424 = load %struct.TYPE_25__*, %struct.TYPE_25__** %423, align 8
  store %struct.TYPE_25__* %424, %struct.TYPE_25__** %4, align 8
  br label %64

425:                                              ; preds = %413, %405, %397
  br label %426

426:                                              ; preds = %425, %392
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427, %391, %349, %283, %166
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %430, align 8
  %432 = icmp ne %struct.TYPE_25__* %431, null
  br i1 %432, label %433, label %437

433:                                              ; preds = %428
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %435, align 8
  store %struct.TYPE_25__* %436, %struct.TYPE_25__** %4, align 8
  br label %64

437:                                              ; preds = %428
  br label %438

438:                                              ; preds = %463, %437
  %439 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %439, i32 0, i32 2
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %440, align 8
  store %struct.TYPE_25__* %441, %struct.TYPE_25__** %4, align 8
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %443 = icmp eq %struct.TYPE_25__* %442, null
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  br label %466

445:                                              ; preds = %438
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = inttoptr i64 %449 to %struct.TYPE_25__*
  %451 = icmp eq %struct.TYPE_25__* %446, %450
  br i1 %451, label %452, label %453

452:                                              ; preds = %445
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %4, align 8
  br label %466

453:                                              ; preds = %445
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_25__*, %struct.TYPE_25__** %455, align 8
  %457 = icmp ne %struct.TYPE_25__* %456, null
  br i1 %457, label %458, label %462

458:                                              ; preds = %453
  %459 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %459, i32 0, i32 1
  %461 = load %struct.TYPE_25__*, %struct.TYPE_25__** %460, align 8
  store %struct.TYPE_25__* %461, %struct.TYPE_25__** %4, align 8
  br label %466

462:                                              ; preds = %453
  br label %463

463:                                              ; preds = %462
  %464 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %465 = icmp ne %struct.TYPE_25__* %464, null
  br i1 %465, label %438, label %466

466:                                              ; preds = %463, %458, %452, %444
  br label %64

467:                                              ; preds = %64
  %468 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %469 = icmp ne %struct.TYPE_25__* %468, null
  br i1 %469, label %470, label %475

470:                                              ; preds = %467
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %472 = call i32 @xmlUnlinkNode(%struct.TYPE_25__* %471)
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %474 = call i32 @xmlFreeNode(%struct.TYPE_25__* %473)
  br label %475

475:                                              ; preds = %24, %470, %467
  ret void
}

declare dso_local i64 @IS_XSLT_ELEM(%struct.TYPE_25__*) #1

declare dso_local i64 @IS_XSLT_NAME(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @xmlUnlinkNode(%struct.TYPE_25__*) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_25__*) #1

declare dso_local i32 @xmlDictOwns(i32*, i32*) #1

declare dso_local i64 @xmlDictLookup(i32*, i32*, i32) #1

declare dso_local i32 @xmlNodeSetContent(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @exclPrefixPop(%struct.TYPE_23__*) #1

declare dso_local i32 @xsltParseStylesheetExcludePrefix(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @xmlDocGetRootElement(%struct.TYPE_21__*) #1

declare dso_local i64 @xmlStrEqual(i32, i32) #1

declare dso_local i64 @IS_BLANK_NODE(%struct.TYPE_25__*) #1

declare dso_local i32 @xmlNodeGetSpacePreserve(%struct.TYPE_25__*) #1

declare dso_local i32 @xsltCheckExtURI(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
