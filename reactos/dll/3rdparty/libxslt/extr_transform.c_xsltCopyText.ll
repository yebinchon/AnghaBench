; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, i64, i32, i32*, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_26__ = type { i64, i64, i32*, %struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_23__*, i32* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32* }

@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@XSLT_OUTPUT_XML = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@xmlStringTextNoenc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"xsltCopyText: text copy failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Internal error in xsltCopyText(): Failed to copy the string.\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@XSLT_TRACE_COPY_TEXT = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32)* @xsltCopyText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @xsltCopyText(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, %struct.TYPE_26__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XML_TEXT_NODE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %5, align 8
  br label %346

25:                                               ; preds = %18, %4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %5, align 8
  br label %346

31:                                               ; preds = %25
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %33 = icmp eq %struct.TYPE_26__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %31
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %156

49:                                               ; preds = %42
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XSLT_OUTPUT_XML, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %156

55:                                               ; preds = %49
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %57 = icmp ne %struct.TYPE_26__* %56, null
  br i1 %57, label %58, label %156

58:                                               ; preds = %55
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %58
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = icmp eq %struct.TYPE_23__* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32* @xmlHashLookup2(i32* %74, i64 %77, i32* null)
  %79 = icmp ne i32* %78, null
  br i1 %79, label %101, label %80

80:                                               ; preds = %69, %64
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = icmp ne %struct.TYPE_23__* %83, null
  br i1 %84, label %85, label %156

85:                                               ; preds = %80
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32* @xmlHashLookup2(i32* %90, i64 %93, i32* %98)
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %156

101:                                              ; preds = %85, %69
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = icmp ne %struct.TYPE_21__* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @xmlStrlen(i32* %124)
  %126 = call %struct.TYPE_26__* @xsltAddTextString(%struct.TYPE_25__* %115, %struct.TYPE_21__* %118, i32* %121, i32 %125)
  store %struct.TYPE_26__* %126, %struct.TYPE_26__** %10, align 8
  br label %329

127:                                              ; preds = %106, %101
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @xmlStrlen(i32* %130)
  store i32 %131, i32* %11, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call %struct.TYPE_26__* @xmlNewCDataBlock(i32 %134, i32* %137, i32 %138)
  store %struct.TYPE_26__* %139, %struct.TYPE_26__** %10, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %141 = icmp eq %struct.TYPE_26__* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %329

143:                                              ; preds = %127
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 5
  store i32* %146, i32** %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %143
  br label %308

156:                                              ; preds = %85, %80, %58, %55, %49, %42
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = icmp ne %struct.TYPE_26__* %157, null
  br i1 %158, label %159, label %209

159:                                              ; preds = %156
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = icmp ne %struct.TYPE_21__* %162, null
  br i1 %163, label %164, label %209

164:                                              ; preds = %159
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @XML_TEXT_NODE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %164
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %177, %180
  br i1 %181, label %196, label %182

182:                                              ; preds = %172, %164
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %182
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @xmlStringTextNoenc, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %190, %172
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @xmlStrlen(i32* %206)
  %208 = call %struct.TYPE_26__* @xsltAddTextString(%struct.TYPE_25__* %197, %struct.TYPE_21__* %200, i32* %203, i32 %207)
  store %struct.TYPE_26__* %208, %struct.TYPE_26__** %10, align 8
  br label %329

209:                                              ; preds = %190, %182, %159, %156
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %271

212:                                              ; preds = %209
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %214 = icmp ne %struct.TYPE_26__* %213, null
  br i1 %214, label %215, label %271

215:                                              ; preds = %212
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %217, align 8
  %219 = icmp ne %struct.TYPE_24__* %218, null
  br i1 %219, label %220, label %271

220:                                              ; preds = %215
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %271

230:                                              ; preds = %220
  %231 = call %struct.TYPE_26__* @xmlNewTextLen(i32* null, i32 0)
  store %struct.TYPE_26__* %231, %struct.TYPE_26__** %10, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %233 = icmp eq %struct.TYPE_26__* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %329

235:                                              ; preds = %230
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @xmlStringTextNoenc, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i64, i64* @xmlStringTextNoenc, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %241, %235
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = call i64 @xmlDictOwns(i64 %248, i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %245
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 2
  store i32* %257, i32** %259, align 8
  br label %270

260:                                              ; preds = %245
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = call i32* @xmlStrdup(i32* %263)
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 2
  store i32* %264, i32** %266, align 8
  %267 = icmp eq i32* %264, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %5, align 8
  br label %346

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269, %254
  br label %306

271:                                              ; preds = %220, %215, %212, %209
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @xmlStrlen(i32* %274)
  store i32 %275, i32* %12, align 4
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = call %struct.TYPE_26__* @xmlNewTextLen(i32* %278, i32 %279)
  store %struct.TYPE_26__* %280, %struct.TYPE_26__** %10, align 8
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %282 = icmp eq %struct.TYPE_26__* %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %271
  br label %329

284:                                              ; preds = %271
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @xmlStringTextNoenc, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load i64, i64* @xmlStringTextNoenc, align 8
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 1
  store i64 %291, i64* %293, align 8
  br label %294

294:                                              ; preds = %290, %284
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 5
  store i32* %297, i32** %299, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %12, align 4
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 2
  store i32 %303, i32* %305, align 4
  br label %306

306:                                              ; preds = %294, %270
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307, %155
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %310 = icmp ne %struct.TYPE_26__* %309, null
  br i1 %310, label %311, label %324

311:                                              ; preds = %308
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %313 = icmp ne %struct.TYPE_26__* %312, null
  br i1 %313, label %314, label %323

314:                                              ; preds = %311
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %316, align 8
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 3
  store %struct.TYPE_24__* %317, %struct.TYPE_24__** %319, align 8
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %322 = call %struct.TYPE_26__* @xsltAddChild(%struct.TYPE_26__* %320, %struct.TYPE_26__* %321)
  store %struct.TYPE_26__* %322, %struct.TYPE_26__** %10, align 8
  br label %323

323:                                              ; preds = %314, %311
  br label %328

324:                                              ; preds = %308
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %327 = call i32 @xsltTransformError(%struct.TYPE_25__* %325, i32* null, %struct.TYPE_26__* %326, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %328

328:                                              ; preds = %324, %323
  br label %329

329:                                              ; preds = %328, %283, %234, %196, %142, %114
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %331 = icmp eq %struct.TYPE_26__* %330, null
  br i1 %331, label %337, label %332

332:                                              ; preds = %329
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = icmp eq i32* %335, null
  br i1 %336, label %337, label %344

337:                                              ; preds = %332, %329
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %340 = call i32 @xsltTransformError(%struct.TYPE_25__* %338, i32* null, %struct.TYPE_26__* %339, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %341 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 4
  store i32 %341, i32* %343, align 8
  br label %344

344:                                              ; preds = %337, %332
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %345, %struct.TYPE_26__** %5, align 8
  br label %346

346:                                              ; preds = %344, %268, %30, %24
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  ret %struct.TYPE_26__* %347
}

declare dso_local i32* @xmlHashLookup2(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_26__* @xsltAddTextString(%struct.TYPE_25__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @xmlStrlen(i32*) #1

declare dso_local %struct.TYPE_26__* @xmlNewCDataBlock(i32, i32*, i32) #1

declare dso_local %struct.TYPE_26__* @xmlNewTextLen(i32*, i32) #1

declare dso_local i64 @xmlDictOwns(i64, i32*) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local %struct.TYPE_26__* @xsltAddChild(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_25__*, i32*, %struct.TYPE_26__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
