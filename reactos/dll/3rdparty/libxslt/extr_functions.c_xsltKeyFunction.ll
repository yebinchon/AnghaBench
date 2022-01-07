; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltKeyFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltKeyFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i8*, %struct.TYPE_38__*, %struct.TYPE_43__* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_43__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i64, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i8*, i32* }
%struct.TYPE_42__ = type { i64, i32*, %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i32, i32** }
%struct.TYPE_40__ = type { %struct.TYPE_37__*, i8*, i32* }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }
%struct.TYPE_44__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"key() : expects two arguments\0A\00", align 1
@XPATH_INVALID_ARITY = common dso_local global i8* null, align 8
@XPATH_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"key() : invalid arg expecting a string\0A\00", align 1
@XPATH_INVALID_TYPE = common dso_local global i8* null, align 8
@XPATH_NODESET = common dso_local global i64 0, align 8
@XPATH_XSLT_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [88 x i8] c"Internal error in xsltKeyFunction(): The context node is not set on the XPath context.\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"key() : prefix %s is not bound\0A\00", align 1
@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [86 x i8] c"Internal error in xsltKeyFunction(): Couldn't get the doc of the XPath context node.\0A\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"Internal error in xsltKeyFunction(): Could not get the document info of a context doc.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltKeyFunction(%struct.TYPE_41__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_41__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca %struct.TYPE_45__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_43__*, align 8
  %18 = alloca %struct.TYPE_46__*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %24 = call %struct.TYPE_40__* @xsltXPathGetTransformContext(%struct.TYPE_41__* %23)
  %25 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %24, i32* null, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** @XPATH_INVALID_ARITY, align 8
  %27 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %401

29:                                               ; preds = %2
  %30 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %31 = call %struct.TYPE_42__* @valuePop(%struct.TYPE_41__* %30)
  store %struct.TYPE_42__* %31, %struct.TYPE_42__** %6, align 8
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %33 = call i32 @xmlXPathStringFunction(%struct.TYPE_41__* %32, i32 1)
  %34 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %35 = icmp eq %struct.TYPE_42__* %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %38, align 8
  %40 = icmp eq %struct.TYPE_38__* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XPATH_STRING, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41, %36, %29
  %50 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %51 = call %struct.TYPE_40__* @xsltXPathGetTransformContext(%struct.TYPE_41__* %50)
  %52 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %51, i32* null, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** @XPATH_INVALID_TYPE, align 8
  %54 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %57 = call i32 @xmlXPathFreeObject(%struct.TYPE_42__* %56)
  br label %401

58:                                               ; preds = %41
  %59 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %60 = call %struct.TYPE_42__* @valuePop(%struct.TYPE_41__* %59)
  store %struct.TYPE_42__* %60, %struct.TYPE_42__** %5, align 8
  %61 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @XPATH_NODESET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XPATH_XSLT_TREE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %128

72:                                               ; preds = %66, %58
  %73 = call %struct.TYPE_42__* @xmlXPathNewNodeSet(i32* null)
  store %struct.TYPE_42__* %73, %struct.TYPE_42__** %9, align 8
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %75, align 8
  %77 = icmp ne %struct.TYPE_45__* %76, null
  br i1 %77, label %78, label %124

78:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %120, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_45__*, %struct.TYPE_45__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %79
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %89 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %90 = call %struct.TYPE_42__* @xmlXPathObjectCopy(%struct.TYPE_42__* %89)
  %91 = call i32 @valuePush(%struct.TYPE_41__* %88, %struct.TYPE_42__* %90)
  %92 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %93 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_45__*, %struct.TYPE_45__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call %struct.TYPE_42__* @xmlXPathNewNodeSet(i32* %101)
  %103 = call i32 @valuePush(%struct.TYPE_41__* %92, %struct.TYPE_42__* %102)
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %105 = call i32 @xmlXPathStringFunction(%struct.TYPE_41__* %104, i32 1)
  %106 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  call void @xsltKeyFunction(%struct.TYPE_41__* %106, i32 2)
  %107 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %108 = call %struct.TYPE_42__* @valuePop(%struct.TYPE_41__* %107)
  store %struct.TYPE_42__* %108, %struct.TYPE_42__** %8, align 8
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %110, align 8
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_45__*, %struct.TYPE_45__** %113, align 8
  %115 = call %struct.TYPE_45__* @xmlXPathNodeSetMerge(%struct.TYPE_45__* %111, %struct.TYPE_45__* %114)
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %116, i32 0, i32 2
  store %struct.TYPE_45__* %115, %struct.TYPE_45__** %117, align 8
  %118 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %119 = call i32 @xmlXPathFreeObject(%struct.TYPE_42__* %118)
  br label %120

120:                                              ; preds = %87
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %79

123:                                              ; preds = %79
  br label %124

124:                                              ; preds = %123, %72
  %125 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %127 = call i32 @valuePush(%struct.TYPE_41__* %125, %struct.TYPE_42__* %126)
  br label %389

128:                                              ; preds = %66
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %10, align 8
  store i32* null, i32** %11, align 8
  %129 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_43__*, %struct.TYPE_43__** %130, align 8
  store %struct.TYPE_43__* %131, %struct.TYPE_43__** %17, align 8
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %18, align 8
  %132 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %133 = call %struct.TYPE_40__* @xsltXPathGetTransformContext(%struct.TYPE_41__* %132)
  store %struct.TYPE_40__* %133, %struct.TYPE_40__** %14, align 8
  %134 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %135, align 8
  %137 = bitcast %struct.TYPE_37__* %136 to i8*
  store i8* %137, i8** %19, align 8
  %138 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_46__*, %struct.TYPE_46__** %139, align 8
  %141 = icmp eq %struct.TYPE_46__* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %128
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %144 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %143, i32* null, i32* %146, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %373

151:                                              ; preds = %128
  %152 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %15, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = call i32* @xmlSplitQName2(i32* %155, i32** %16)
  store i32* %156, i32** %11, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %151
  %160 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32* @xmlStrdup(i32* %162)
  store i32* %163, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %164 = load i32*, i32** %16, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i32*, i32** %16, align 8
  %168 = call i32 @xmlFree(i32* %167)
  br label %169

169:                                              ; preds = %166, %159
  br label %191

170:                                              ; preds = %151
  %171 = load i32*, i32** %16, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %189

173:                                              ; preds = %170
  %174 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = call i32* @xmlXPathNsLookup(%struct.TYPE_43__* %174, i32* %175)
  store i32* %176, i32** %13, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %181 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32*, i32** %16, align 8
  %185 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %180, i32* null, i32* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %184)
  br label %186

186:                                              ; preds = %179, %173
  %187 = load i32*, i32** %16, align 8
  %188 = call i32 @xmlFree(i32* %187)
  br label %190

189:                                              ; preds = %170
  store i32* null, i32** %13, align 8
  br label %190

190:                                              ; preds = %189, %186
  br label %191

191:                                              ; preds = %190, %169
  %192 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %194 = call i32 @valuePush(%struct.TYPE_41__* %192, %struct.TYPE_42__* %193)
  %195 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %196 = call i32 @xmlXPathStringFunction(%struct.TYPE_41__* %195, i32 1)
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_38__*, %struct.TYPE_38__** %198, align 8
  %200 = icmp eq %struct.TYPE_38__* %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %191
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_38__*, %struct.TYPE_38__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @XPATH_STRING, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %201, %191
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %211 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %210, i32* null, i32* %213, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i8*, i8** @XPATH_INVALID_TYPE, align 8
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  br label %373

218:                                              ; preds = %201
  %219 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %220 = call %struct.TYPE_42__* @valuePop(%struct.TYPE_41__* %219)
  store %struct.TYPE_42__* %220, %struct.TYPE_42__** %6, align 8
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  store i32* %223, i32** %12, align 8
  %224 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_46__*, %struct.TYPE_46__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %259

231:                                              ; preds = %218
  %232 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_46__*, %struct.TYPE_46__** %233, align 8
  %235 = bitcast %struct.TYPE_46__* %234 to %struct.TYPE_44__*
  %236 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_39__*, %struct.TYPE_39__** %236, align 8
  %238 = icmp ne %struct.TYPE_39__* %237, null
  br i1 %238, label %239, label %258

239:                                              ; preds = %231
  %240 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_46__*, %struct.TYPE_46__** %241, align 8
  %243 = bitcast %struct.TYPE_46__* %242 to %struct.TYPE_44__*
  %244 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_39__*, %struct.TYPE_39__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %239
  %251 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_46__*, %struct.TYPE_46__** %252, align 8
  %254 = bitcast %struct.TYPE_46__* %253 to %struct.TYPE_44__*
  %255 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_39__*, %struct.TYPE_39__** %255, align 8
  %257 = bitcast %struct.TYPE_39__* %256 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %257, %struct.TYPE_46__** %18, align 8
  br label %258

258:                                              ; preds = %250, %239, %231
  br label %263

259:                                              ; preds = %218
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_46__*, %struct.TYPE_46__** %261, align 8
  store %struct.TYPE_46__* %262, %struct.TYPE_46__** %18, align 8
  br label %263

263:                                              ; preds = %259, %258
  %264 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %265 = icmp eq %struct.TYPE_46__* %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %263
  %267 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_36__*, %struct.TYPE_36__** %268, align 8
  %270 = icmp eq %struct.TYPE_36__* %269, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %266, %263
  %272 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %273 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %272, i32* null, i32* %275, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  br label %373

277:                                              ; preds = %266
  %278 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %279, align 8
  %281 = icmp eq %struct.TYPE_37__* %280, null
  br i1 %281, label %292, label %282

282:                                              ; preds = %277
  %283 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_37__*, %struct.TYPE_37__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_36__*, %struct.TYPE_36__** %286, align 8
  %288 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_36__*, %struct.TYPE_36__** %289, align 8
  %291 = icmp ne %struct.TYPE_36__* %287, %290
  br i1 %291, label %292, label %367

292:                                              ; preds = %282, %277
  %293 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_36__*, %struct.TYPE_36__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %344

299:                                              ; preds = %292
  %300 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %301 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 0
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 32
  br i1 %308, label %309, label %344

309:                                              ; preds = %299
  %310 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %311 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_36__*, %struct.TYPE_36__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = icmp eq i32* %314, null
  br i1 %315, label %316, label %334

316:                                              ; preds = %309
  %317 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %318 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %319 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %319, align 8
  %321 = call i32* @xsltNewDocument(%struct.TYPE_40__* %317, %struct.TYPE_36__* %320)
  %322 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 1
  store i32* %321, i32** %325, align 8
  %326 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %327 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_36__*, %struct.TYPE_36__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = icmp eq i32* %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %316
  br label %373

333:                                              ; preds = %316
  br label %334

334:                                              ; preds = %333, %309
  %335 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %336 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = bitcast i32* %339 to i8*
  %341 = bitcast i8* %340 to %struct.TYPE_37__*
  %342 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %342, i32 0, i32 0
  store %struct.TYPE_37__* %341, %struct.TYPE_37__** %343, align 8
  br label %352

344:                                              ; preds = %299, %292
  %345 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %346 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %347 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %347, align 8
  %349 = call %struct.TYPE_37__* @xsltFindDocument(%struct.TYPE_40__* %345, %struct.TYPE_36__* %348)
  %350 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %350, i32 0, i32 0
  store %struct.TYPE_37__* %349, %struct.TYPE_37__** %351, align 8
  br label %352

352:                                              ; preds = %344, %334
  %353 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_37__*, %struct.TYPE_37__** %354, align 8
  %356 = icmp eq %struct.TYPE_37__* %355, null
  br i1 %356, label %357, label %366

357:                                              ; preds = %352
  %358 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %359 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 (%struct.TYPE_40__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_40__* %358, i32* null, i32* %361, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0))
  %363 = load i8*, i8** @XSLT_STATE_STOPPED, align 8
  %364 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %364, i32 0, i32 1
  store i8* %363, i8** %365, align 8
  br label %373

366:                                              ; preds = %352
  br label %367

367:                                              ; preds = %366, %282
  %368 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %369 = load i32*, i32** %11, align 8
  %370 = load i32*, i32** %13, align 8
  %371 = load i32*, i32** %12, align 8
  %372 = call %struct.TYPE_45__* @xsltGetKey(%struct.TYPE_40__* %368, i32* %369, i32* %370, i32* %371)
  store %struct.TYPE_45__* %372, %struct.TYPE_45__** %10, align 8
  br label %373

373:                                              ; preds = %367, %357, %332, %271, %209, %142
  %374 = load i8*, i8** %19, align 8
  %375 = bitcast i8* %374 to %struct.TYPE_37__*
  %376 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %377 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %376, i32 0, i32 0
  store %struct.TYPE_37__* %375, %struct.TYPE_37__** %377, align 8
  %378 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %379 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %380 = call %struct.TYPE_45__* @xmlXPathNodeSetMerge(%struct.TYPE_45__* null, %struct.TYPE_45__* %379)
  %381 = call %struct.TYPE_42__* @xmlXPathWrapNodeSet(%struct.TYPE_45__* %380)
  %382 = call i32 @valuePush(%struct.TYPE_41__* %378, %struct.TYPE_42__* %381)
  %383 = load i32*, i32** %11, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %373
  %386 = load i32*, i32** %11, align 8
  %387 = call i32 @xmlFree(i32* %386)
  br label %388

388:                                              ; preds = %385, %373
  br label %389

389:                                              ; preds = %388, %124
  %390 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %391 = icmp ne %struct.TYPE_42__* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %394 = call i32 @xmlXPathFreeObject(%struct.TYPE_42__* %393)
  br label %395

395:                                              ; preds = %392, %389
  %396 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %397 = icmp ne %struct.TYPE_42__* %396, null
  br i1 %397, label %398, label %401

398:                                              ; preds = %395
  %399 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %400 = call i32 @xmlXPathFreeObject(%struct.TYPE_42__* %399)
  br label %401

401:                                              ; preds = %22, %49, %398, %395
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_40__*, i32*, i32*, i8*, ...) #1

declare dso_local %struct.TYPE_40__* @xsltXPathGetTransformContext(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_42__* @valuePop(%struct.TYPE_41__*) #1

declare dso_local i32 @xmlXPathStringFunction(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @xmlXPathNewNodeSet(i32*) #1

declare dso_local i32 @valuePush(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @xmlXPathObjectCopy(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_45__* @xmlXPathNodeSetMerge(%struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i32* @xmlSplitQName2(i32*, i32**) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32* @xmlXPathNsLookup(%struct.TYPE_43__*, i32*) #1

declare dso_local i32* @xsltNewDocument(%struct.TYPE_40__*, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_37__* @xsltFindDocument(%struct.TYPE_40__*, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_45__* @xsltGetKey(%struct.TYPE_40__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @xmlXPathWrapNodeSet(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
