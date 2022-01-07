; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltDefaultProcessOneNode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltDefaultProcessOneNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_28__*, i32, i32*, %struct.TYPE_28__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32 }

@CHECK_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"xsltDefaultProcessOneNode: cdata copy failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"xsltDefaultProcessOneNode: text copy failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"xsltDefaultProcessOneNode: no text for attribute\0A\00", align 1
@XSLT_TRACE_PROCESS_NODE = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_28__*, i32)* @xsltDefaultProcessOneNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltDefaultProcessOneNode(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @CHECK_STOPPED, align 4
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %88 [
    i32 133, label %19
    i32 130, label %19
    i32 131, label %19
    i32 135, label %20
    i32 128, label %34
    i32 136, label %48
  ]

19:                                               ; preds = %3, %3, %3
  br label %89

20:                                               ; preds = %3
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %26 = call %struct.TYPE_28__* @xsltCopyText(%struct.TYPE_26__* %21, i32 %24, %struct.TYPE_28__* %25, i32 0)
  store %struct.TYPE_28__* %26, %struct.TYPE_28__** %7, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %28 = icmp eq %struct.TYPE_28__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = call i32 @xsltTransformError(%struct.TYPE_26__* %30, i32* null, %struct.TYPE_28__* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %20
  br label %302

34:                                               ; preds = %3
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = call %struct.TYPE_28__* @xsltCopyText(%struct.TYPE_26__* %35, i32 %38, %struct.TYPE_28__* %39, i32 0)
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %7, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = icmp eq %struct.TYPE_28__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = call i32 @xsltTransformError(%struct.TYPE_26__* %44, i32* null, %struct.TYPE_28__* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %34
  br label %302

48:                                               ; preds = %3
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %9, align 8
  br label %52

52:                                               ; preds = %62, %48
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %54 = icmp ne %struct.TYPE_28__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 128
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %64, align 8
  store %struct.TYPE_28__* %65, %struct.TYPE_28__** %9, align 8
  br label %52

66:                                               ; preds = %60
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %68 = icmp eq %struct.TYPE_28__* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = call i32 @xsltTransformError(%struct.TYPE_26__* %70, i32* null, %struct.TYPE_28__* %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %87

73:                                               ; preds = %66
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %79 = call %struct.TYPE_28__* @xsltCopyText(%struct.TYPE_26__* %74, i32 %77, %struct.TYPE_28__* %78, i32 0)
  store %struct.TYPE_28__* %79, %struct.TYPE_28__** %7, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %81 = icmp eq %struct.TYPE_28__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %85 = call i32 @xsltTransformError(%struct.TYPE_26__* %83, i32* null, %struct.TYPE_28__* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %69
  br label %302

88:                                               ; preds = %3
  br label %302

89:                                               ; preds = %19
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  store %struct.TYPE_28__* %92, %struct.TYPE_28__** %9, align 8
  br label %93

93:                                               ; preds = %143, %89
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %95 = icmp ne %struct.TYPE_28__* %94, null
  br i1 %95, label %96, label %144

96:                                               ; preds = %93
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %130 [
    i32 128, label %100
    i32 135, label %100
    i32 133, label %100
    i32 130, label %100
    i32 131, label %100
    i32 129, label %100
    i32 134, label %100
    i32 132, label %103
  ]

100:                                              ; preds = %96, %96, %96, %96, %96, %96, %96
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %132

103:                                              ; preds = %96
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = icmp ne %struct.TYPE_28__* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 5
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %115, align 8
  br label %116

116:                                              ; preds = %108, %103
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %118, align 8
  %120 = icmp ne %struct.TYPE_24__* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  store %struct.TYPE_28__* %124, %struct.TYPE_28__** %128, align 8
  br label %129

129:                                              ; preds = %121, %116
  br label %132

130:                                              ; preds = %96
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_28__* %131, %struct.TYPE_28__** %8, align 8
  br label %132

132:                                              ; preds = %130, %129, %100
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %134, align 8
  store %struct.TYPE_28__* %135, %struct.TYPE_28__** %9, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %137 = icmp ne %struct.TYPE_28__* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %140 = call i32 @xmlUnlinkNode(%struct.TYPE_28__* %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %142 = call i32 @xmlFreeNode(%struct.TYPE_28__* %141)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  br label %143

143:                                              ; preds = %138, %132
  br label %93

144:                                              ; preds = %93
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %146 = icmp ne %struct.TYPE_28__* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %149 = call i32 @xmlUnlinkNode(%struct.TYPE_28__* %148)
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %151 = call i32 @xmlFreeNode(%struct.TYPE_28__* %150)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  br label %152

152:                                              ; preds = %147, %144
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %13, align 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  store %struct.TYPE_28__* %165, %struct.TYPE_28__** %9, align 8
  br label %166

166:                                              ; preds = %287, %152
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %168 = icmp ne %struct.TYPE_28__* %167, null
  br i1 %168, label %169, label %291

169:                                              ; preds = %166
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %286 [
    i32 133, label %175
    i32 130, label %175
    i32 131, label %175
    i32 135, label %190
    i32 128, label %220
    i32 129, label %260
    i32 134, label %260
  ]

175:                                              ; preds = %169, %169, %169
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 1
  store i32 %181, i32* %185, align 4
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @xsltProcessOneNode(%struct.TYPE_26__* %186, %struct.TYPE_28__* %187, i32 %188)
  br label %287

190:                                              ; preds = %169
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %193 = call %struct.TYPE_27__* @xsltGetTemplate(%struct.TYPE_26__* %191, %struct.TYPE_28__* %192, i32* null)
  store %struct.TYPE_27__* %193, %struct.TYPE_27__** %14, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %195 = icmp ne %struct.TYPE_27__* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %190
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @xsltApplyXSLTTemplate(%struct.TYPE_26__* %197, %struct.TYPE_28__* %198, i32 %201, %struct.TYPE_27__* %202, i32 %203)
  br label %219

205:                                              ; preds = %190
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %211 = call %struct.TYPE_28__* @xsltCopyText(%struct.TYPE_26__* %206, i32 %209, %struct.TYPE_28__* %210, i32 0)
  store %struct.TYPE_28__* %211, %struct.TYPE_28__** %7, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %213 = icmp eq %struct.TYPE_28__* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %205
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %217 = call i32 @xsltTransformError(%struct.TYPE_26__* %215, i32* null, %struct.TYPE_28__* %216, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %218

218:                                              ; preds = %214, %205
  br label %219

219:                                              ; preds = %218, %196
  br label %287

220:                                              ; preds = %169
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %223 = call %struct.TYPE_27__* @xsltGetTemplate(%struct.TYPE_26__* %221, %struct.TYPE_28__* %222, i32* null)
  store %struct.TYPE_27__* %223, %struct.TYPE_27__** %14, align 8
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %225 = icmp ne %struct.TYPE_27__* %224, null
  br i1 %225, label %226, label %245

226:                                              ; preds = %220
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 1
  store i32 %232, i32* %236, align 4
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @xsltApplyXSLTTemplate(%struct.TYPE_26__* %237, %struct.TYPE_28__* %238, i32 %241, %struct.TYPE_27__* %242, i32 %243)
  br label %259

245:                                              ; preds = %220
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %251 = call %struct.TYPE_28__* @xsltCopyText(%struct.TYPE_26__* %246, i32 %249, %struct.TYPE_28__* %250, i32 0)
  store %struct.TYPE_28__* %251, %struct.TYPE_28__** %7, align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %253 = icmp eq %struct.TYPE_28__* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %245
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %257 = call i32 @xsltTransformError(%struct.TYPE_26__* %255, i32* null, %struct.TYPE_28__* %256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %258

258:                                              ; preds = %254, %245
  br label %259

259:                                              ; preds = %258, %226
  br label %287

260:                                              ; preds = %169, %169
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %263 = call %struct.TYPE_27__* @xsltGetTemplate(%struct.TYPE_26__* %261, %struct.TYPE_28__* %262, i32* null)
  store %struct.TYPE_27__* %263, %struct.TYPE_27__** %14, align 8
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %265 = icmp ne %struct.TYPE_27__* %264, null
  br i1 %265, label %266, label %285

266:                                              ; preds = %260
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  store i32 %267, i32* %271, align 4
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 1
  store i32 %272, i32* %276, align 4
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @xsltApplyXSLTTemplate(%struct.TYPE_26__* %277, %struct.TYPE_28__* %278, i32 %281, %struct.TYPE_27__* %282, i32 %283)
  br label %285

285:                                              ; preds = %266, %260
  br label %287

286:                                              ; preds = %169
  br label %287

287:                                              ; preds = %286, %285, %259, %219, %175
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %289, align 8
  store %struct.TYPE_28__* %290, %struct.TYPE_28__** %9, align 8
  br label %166

291:                                              ; preds = %166
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  store i32 %292, i32* %296, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 1
  store i32 %297, i32* %301, align 4
  br label %302

302:                                              ; preds = %291, %88, %87, %47, %33
  ret void
}

declare dso_local %struct.TYPE_28__* @xsltCopyText(%struct.TYPE_26__*, i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_26__*, i32*, %struct.TYPE_28__*, i8*) #1

declare dso_local i32 @xmlUnlinkNode(%struct.TYPE_28__*) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_28__*) #1

declare dso_local i32 @xsltProcessOneNode(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @xsltGetTemplate(%struct.TYPE_26__*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @xsltApplyXSLTTemplate(%struct.TYPE_26__*, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
