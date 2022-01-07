; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltDocumentFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltDocumentFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i8*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_35__ = type { i32*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_36__** }
%struct.TYPE_36__ = type { i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_36__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }

@.str = private unnamed_addr constant [40 x i8] c"document() : invalid number of args %d\0A\00", align 1
@XPATH_INVALID_ARITY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"document() : invalid arg value\0A\00", align 1
@XPATH_INVALID_TYPE = common dso_local global i8* null, align 8
@XPATH_NODESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"document() : invalid arg expecting a nodeset\0A\00", align 1
@XPATH_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"document() : invalid arg expecting a string\0A\00", align 1
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_PI_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltDocumentFunction(%struct.TYPE_34__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %6, align 8
  store i32* null, i32** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %27

19:                                               ; preds = %16, %2
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %21 = call %struct.TYPE_33__* @xsltXPathGetTransformContext(%struct.TYPE_34__* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (%struct.TYPE_33__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_33__* %21, i32* null, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** @XPATH_INVALID_ARITY, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %367

27:                                               ; preds = %16
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %31 = icmp eq %struct.TYPE_30__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %34 = call %struct.TYPE_33__* @xsltXPathGetTransformContext(%struct.TYPE_34__* %33)
  %35 = call i32 (%struct.TYPE_33__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_33__* %34, i32* null, i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** @XPATH_INVALID_TYPE, align 8
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %367

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XPATH_NODESET, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %52 = call %struct.TYPE_33__* @xsltXPathGetTransformContext(%struct.TYPE_34__* %51)
  %53 = call i32 (%struct.TYPE_33__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_33__* %52, i32* null, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** @XPATH_INVALID_TYPE, align 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %367

57:                                               ; preds = %42
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %59 = call %struct.TYPE_35__* @valuePop(%struct.TYPE_34__* %58)
  store %struct.TYPE_35__* %59, %struct.TYPE_35__** %6, align 8
  br label %60

60:                                               ; preds = %57, %39
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @XPATH_NODESET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %158

68:                                               ; preds = %60
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %70 = call %struct.TYPE_35__* @valuePop(%struct.TYPE_34__* %69)
  store %struct.TYPE_35__* %70, %struct.TYPE_35__** %5, align 8
  %71 = call %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__* null)
  store %struct.TYPE_35__* %71, %struct.TYPE_35__** %11, align 8
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %73 = icmp ne %struct.TYPE_35__* %72, null
  br i1 %73, label %74, label %142

74:                                               ; preds = %68
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  %78 = icmp ne %struct.TYPE_29__* %77, null
  br i1 %78, label %79, label %142

79:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %138, %79
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %141

88:                                               ; preds = %80
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %94, i64 %96
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %97, align 8
  %99 = call %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__* %98)
  %100 = call i32 @valuePush(%struct.TYPE_34__* %89, %struct.TYPE_35__* %99)
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %102 = call i32 @xmlXPathStringFunction(%struct.TYPE_34__* %101, i32 1)
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %110

105:                                              ; preds = %88
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %108 = call %struct.TYPE_35__* @xmlXPathObjectCopy(%struct.TYPE_35__* %107)
  %109 = call i32 @valuePush(%struct.TYPE_34__* %106, %struct.TYPE_35__* %108)
  br label %123

110:                                              ; preds = %88
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %116, i64 %118
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %119, align 8
  %121 = call %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__* %120)
  %122 = call i32 @valuePush(%struct.TYPE_34__* %111, %struct.TYPE_35__* %121)
  br label %123

123:                                              ; preds = %110, %105
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  call void @xsltDocumentFunction(%struct.TYPE_34__* %124, i32 2)
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %126 = call %struct.TYPE_35__* @valuePop(%struct.TYPE_34__* %125)
  store %struct.TYPE_35__* %126, %struct.TYPE_35__** %10, align 8
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %131, align 8
  %133 = call %struct.TYPE_29__* @xmlXPathNodeSetMerge(%struct.TYPE_29__* %129, %struct.TYPE_29__* %132)
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %134, i32 0, i32 1
  store %struct.TYPE_29__* %133, %struct.TYPE_29__** %135, align 8
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %137 = call i32 @xmlXPathFreeObject(%struct.TYPE_35__* %136)
  br label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %80

141:                                              ; preds = %80
  br label %142

142:                                              ; preds = %141, %74, %68
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %144 = icmp ne %struct.TYPE_35__* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %147 = call i32 @xmlXPathFreeObject(%struct.TYPE_35__* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %150 = icmp ne %struct.TYPE_35__* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %153 = call i32 @xmlXPathFreeObject(%struct.TYPE_35__* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %157 = call i32 @valuePush(%struct.TYPE_34__* %155, %struct.TYPE_35__* %156)
  br label %367

158:                                              ; preds = %60
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %160 = call i32 @xmlXPathStringFunction(%struct.TYPE_34__* %159, i32 1)
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @XPATH_STRING, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %158
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %170 = call %struct.TYPE_33__* @xsltXPathGetTransformContext(%struct.TYPE_34__* %169)
  %171 = call i32 (%struct.TYPE_33__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_33__* %170, i32* null, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i8*, i8** @XPATH_INVALID_TYPE, align 8
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %176 = icmp ne %struct.TYPE_35__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %179 = call i32 @xmlXPathFreeObject(%struct.TYPE_35__* %178)
  br label %180

180:                                              ; preds = %177, %168
  br label %367

181:                                              ; preds = %158
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %183 = call %struct.TYPE_35__* @valuePop(%struct.TYPE_34__* %182)
  store %struct.TYPE_35__* %183, %struct.TYPE_35__** %5, align 8
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %190 = call %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__* null)
  %191 = call i32 @valuePush(%struct.TYPE_34__* %189, %struct.TYPE_35__* %190)
  br label %359

192:                                              ; preds = %181
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %194 = call %struct.TYPE_33__* @xsltXPathGetTransformContext(%struct.TYPE_34__* %193)
  store %struct.TYPE_33__* %194, %struct.TYPE_33__** %12, align 8
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %196 = icmp ne %struct.TYPE_35__* %195, null
  br i1 %196, label %197, label %249

197:                                              ; preds = %192
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %199, align 8
  %201 = icmp ne %struct.TYPE_29__* %200, null
  br i1 %201, label %202, label %249

202:                                              ; preds = %197
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %249

209:                                              ; preds = %202
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %214, i64 0
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %215, align 8
  %217 = call i64 @IS_XSLT_REAL_NODE(%struct.TYPE_36__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %209
  %220 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %224, i64 0
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %225, align 8
  store %struct.TYPE_36__* %226, %struct.TYPE_36__** %13, align 8
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %238, label %232

232:                                              ; preds = %219
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @XML_PI_NODE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %232, %219
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %240 = bitcast %struct.TYPE_36__* %239 to %struct.TYPE_37__*
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %241, align 8
  store %struct.TYPE_36__* %242, %struct.TYPE_36__** %13, align 8
  br label %243

243:                                              ; preds = %238, %232
  %244 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %245, align 8
  %247 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %248 = call i32* @xmlNodeGetBase(%struct.TYPE_31__* %246, %struct.TYPE_36__* %247)
  store i32* %248, i32** %7, align 8
  br label %297

249:                                              ; preds = %209, %202, %197, %192
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %251 = icmp ne %struct.TYPE_33__* %250, null
  br i1 %251, label %252, label %267

252:                                              ; preds = %249
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %254, align 8
  %256 = icmp ne %struct.TYPE_36__* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %261, align 8
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %264, align 8
  %266 = call i32* @xmlNodeGetBase(%struct.TYPE_31__* %262, %struct.TYPE_36__* %265)
  store i32* %266, i32** %7, align 8
  br label %296

267:                                              ; preds = %252, %249
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %269 = icmp ne %struct.TYPE_33__* %268, null
  br i1 %269, label %270, label %295

270:                                              ; preds = %267
  %271 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %272, align 8
  %274 = icmp ne %struct.TYPE_32__* %273, null
  br i1 %274, label %275, label %295

275:                                              ; preds = %270
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_32__*, %struct.TYPE_32__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %279, align 8
  %281 = icmp ne %struct.TYPE_31__* %280, null
  br i1 %281, label %282, label %295

282:                                              ; preds = %275
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %286, align 8
  %288 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %291, align 8
  %293 = bitcast %struct.TYPE_31__* %292 to %struct.TYPE_36__*
  %294 = call i32* @xmlNodeGetBase(%struct.TYPE_31__* %287, %struct.TYPE_36__* %293)
  store i32* %294, i32** %7, align 8
  br label %295

295:                                              ; preds = %282, %275, %270, %267
  br label %296

296:                                              ; preds = %295, %257
  br label %297

297:                                              ; preds = %296, %243
  %298 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32*, i32** %7, align 8
  %302 = call i32* @xmlBuildURI(i32* %300, i32* %301)
  store i32* %302, i32** %8, align 8
  %303 = load i32*, i32** %7, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %297
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @xmlFree(i32* %306)
  br label %308

308:                                              ; preds = %305, %297
  %309 = load i32*, i32** %8, align 8
  %310 = icmp eq i32* %309, null
  br i1 %310, label %311, label %352

311:                                              ; preds = %308
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %313 = icmp ne %struct.TYPE_33__* %312, null
  br i1 %313, label %314, label %347

314:                                              ; preds = %311
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %316, align 8
  %318 = icmp ne %struct.TYPE_32__* %317, null
  br i1 %318, label %319, label %347

319:                                              ; preds = %314
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %323, align 8
  %325 = icmp ne %struct.TYPE_31__* %324, null
  br i1 %325, label %326, label %347

326:                                              ; preds = %319
  %327 = load i32*, i32** %8, align 8
  %328 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_32__*, %struct.TYPE_32__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_31__*, %struct.TYPE_31__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @xmlStrEqual(i32* %327, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %326
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %339 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_32__*, %struct.TYPE_32__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %342, align 8
  %344 = bitcast %struct.TYPE_31__* %343 to %struct.TYPE_36__*
  %345 = call %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__* %344)
  %346 = call i32 @valuePush(%struct.TYPE_34__* %338, %struct.TYPE_35__* %345)
  br label %351

347:                                              ; preds = %326, %319, %314, %311
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %349 = call %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__* null)
  %350 = call i32 @valuePush(%struct.TYPE_34__* %348, %struct.TYPE_35__* %349)
  br label %351

351:                                              ; preds = %347, %337
  br label %358

352:                                              ; preds = %308
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %354 = load i32*, i32** %8, align 8
  %355 = call i32 @xsltDocumentFunctionLoadDocument(%struct.TYPE_34__* %353, i32* %354)
  %356 = load i32*, i32** %8, align 8
  %357 = call i32 @xmlFree(i32* %356)
  br label %358

358:                                              ; preds = %352, %351
  br label %359

359:                                              ; preds = %358, %188
  %360 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %361 = call i32 @xmlXPathFreeObject(%struct.TYPE_35__* %360)
  %362 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %363 = icmp ne %struct.TYPE_35__* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %366 = call i32 @xmlXPathFreeObject(%struct.TYPE_35__* %365)
  br label %367

367:                                              ; preds = %19, %32, %50, %154, %180, %364, %359
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_33__*, i32*, i32*, i8*, ...) #1

declare dso_local %struct.TYPE_33__* @xsltXPathGetTransformContext(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_35__* @valuePop(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_35__* @xmlXPathNewNodeSet(%struct.TYPE_36__*) #1

declare dso_local i32 @valuePush(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @xmlXPathStringFunction(%struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_35__* @xmlXPathObjectCopy(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_29__* @xmlXPathNodeSetMerge(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_35__*) #1

declare dso_local i64 @IS_XSLT_REAL_NODE(%struct.TYPE_36__*) #1

declare dso_local i32* @xmlNodeGetBase(%struct.TYPE_31__*, %struct.TYPE_36__*) #1

declare dso_local i32* @xmlBuildURI(i32*, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32) #1

declare dso_local i32 @xsltDocumentFunctionLoadDocument(%struct.TYPE_34__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
