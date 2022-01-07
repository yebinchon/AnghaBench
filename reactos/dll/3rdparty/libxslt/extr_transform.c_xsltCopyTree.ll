; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyTree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { i32 }
%struct.TYPE_54__ = type { i32, i32, i32*, i32*, %struct.TYPE_53__*, i32*, i32, %struct.TYPE_51__*, i32*, %struct.TYPE_54__*, i32 }
%struct.TYPE_53__ = type { i32*, i32* }
%struct.TYPE_51__ = type { i32 }

@xmlStringTextNoenc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xsltCopyTree: Copying of '%s' failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_54__* (%struct.TYPE_52__*, %struct.TYPE_54__*, %struct.TYPE_54__*, %struct.TYPE_54__*, i32, i32)* @xsltCopyTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_54__* @xsltCopyTree(%struct.TYPE_52__* %0, %struct.TYPE_54__* %1, %struct.TYPE_54__* %2, %struct.TYPE_54__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_54__*, align 8
  %8 = alloca %struct.TYPE_52__*, align 8
  %9 = alloca %struct.TYPE_54__*, align 8
  %10 = alloca %struct.TYPE_54__*, align 8
  %11 = alloca %struct.TYPE_54__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_54__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_53__**, align 8
  %17 = alloca %struct.TYPE_53__**, align 8
  %18 = alloca %struct.TYPE_53__*, align 8
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %8, align 8
  store %struct.TYPE_54__* %1, %struct.TYPE_54__** %9, align 8
  store %struct.TYPE_54__* %2, %struct.TYPE_54__** %10, align 8
  store %struct.TYPE_54__* %3, %struct.TYPE_54__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %20 = icmp eq %struct.TYPE_54__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store %struct.TYPE_54__* null, %struct.TYPE_54__** %7, align 8
  br label %338

22:                                               ; preds = %6
  %23 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %67 [
    i32 138, label %26
    i32 135, label %26
    i32 136, label %26
    i32 131, label %26
    i32 145, label %26
    i32 142, label %26
    i32 134, label %26
    i32 130, label %27
    i32 146, label %41
    i32 147, label %48
    i32 133, label %57
    i32 141, label %66
    i32 143, label %66
    i32 132, label %66
    i32 140, label %66
    i32 139, label %66
    i32 148, label %66
    i32 137, label %66
    i32 128, label %66
    i32 129, label %66
  ]

26:                                               ; preds = %22, %22, %22, %22, %22, %22, %22
  br label %67

27:                                               ; preds = %22
  %28 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @xmlStringTextNoenc, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %35 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %36 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call %struct.TYPE_54__* @xsltCopyTextString(%struct.TYPE_52__* %34, %struct.TYPE_54__* %35, i32 %38, i32 %39)
  store %struct.TYPE_54__* %40, %struct.TYPE_54__** %7, align 8
  br label %338

41:                                               ; preds = %22
  %42 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %43 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %44 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_54__* @xsltCopyTextString(%struct.TYPE_52__* %42, %struct.TYPE_54__* %43, i32 %46, i32 0)
  store %struct.TYPE_54__* %47, %struct.TYPE_54__** %7, align 8
  br label %338

48:                                               ; preds = %22
  %49 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %50 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %51 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %52 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %53 = ptrtoint %struct.TYPE_54__* %52 to i32
  %54 = call i32 @xsltShallowCopyAttr(%struct.TYPE_52__* %49, %struct.TYPE_54__* %50, %struct.TYPE_54__* %51, i32 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_54__*
  store %struct.TYPE_54__* %56, %struct.TYPE_54__** %7, align 8
  br label %338

57:                                               ; preds = %22
  %58 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %59 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %60 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %61 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %62 = bitcast %struct.TYPE_54__* %61 to %struct.TYPE_53__*
  %63 = call i32 @xsltShallowCopyNsNode(%struct.TYPE_52__* %58, %struct.TYPE_54__* %59, %struct.TYPE_54__* %60, %struct.TYPE_53__* %62)
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_54__*
  store %struct.TYPE_54__* %65, %struct.TYPE_54__** %7, align 8
  br label %338

66:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  store %struct.TYPE_54__* null, %struct.TYPE_54__** %7, align 8
  br label %338

67:                                               ; preds = %22, %26
  %68 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %69 = call i64 @XSLT_IS_RES_TREE_FRAG(%struct.TYPE_54__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %78 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %79 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %83 = call %struct.TYPE_54__* @xsltCopyTreeList(%struct.TYPE_52__* %77, %struct.TYPE_54__* %78, i32* %81, %struct.TYPE_54__* %82, i32 0, i32 0)
  store %struct.TYPE_54__* %83, %struct.TYPE_54__** %14, align 8
  br label %85

84:                                               ; preds = %71
  store %struct.TYPE_54__* null, %struct.TYPE_54__** %14, align 8
  br label %85

85:                                               ; preds = %84, %76
  %86 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  store %struct.TYPE_54__* %86, %struct.TYPE_54__** %7, align 8
  br label %338

87:                                               ; preds = %67
  %88 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %89 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_54__* @xmlDocCopyNode(%struct.TYPE_54__* %88, i32 %91, i32 0)
  store %struct.TYPE_54__* %92, %struct.TYPE_54__** %14, align 8
  %93 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %94 = icmp ne %struct.TYPE_54__* %93, null
  br i1 %94, label %95, label %329

95:                                               ; preds = %87
  %96 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %102 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %103 = call %struct.TYPE_54__* @xsltAddChild(%struct.TYPE_54__* %101, %struct.TYPE_54__* %102)
  store %struct.TYPE_54__* %103, %struct.TYPE_54__** %14, align 8
  %104 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %105 = icmp eq %struct.TYPE_54__* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %108 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %109 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @xsltTransformError(%struct.TYPE_52__* %107, i32* null, %struct.TYPE_54__* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  store %struct.TYPE_54__* %113, %struct.TYPE_54__** %7, align 8
  br label %338

114:                                              ; preds = %95
  %115 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %115, i32 0, i32 9
  %117 = load %struct.TYPE_54__*, %struct.TYPE_54__** %116, align 8
  %118 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %119 = icmp ne %struct.TYPE_54__* %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_54__*, %struct.TYPE_54__** %122, align 8
  store %struct.TYPE_54__* %123, %struct.TYPE_54__** %7, align 8
  br label %338

124:                                              ; preds = %114
  %125 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %125, i32 0, i32 8
  store i32* null, i32** %126, align 8
  %127 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 138
  br i1 %130, label %131, label %313

131:                                              ; preds = %124
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %222

134:                                              ; preds = %131
  %135 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_51__*, %struct.TYPE_51__** %136, align 8
  %138 = icmp ne %struct.TYPE_51__* %137, null
  br i1 %138, label %139, label %222

139:                                              ; preds = %134
  %140 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %140, i32 0, i32 7
  %142 = load %struct.TYPE_51__*, %struct.TYPE_51__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 142
  br i1 %145, label %146, label %222

146:                                              ; preds = %139
  %147 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_51__*, %struct.TYPE_51__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 134
  br i1 %152, label %153, label %222

153:                                              ; preds = %146
  %154 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %158 = call %struct.TYPE_53__** @xmlGetNsList(i32 %156, %struct.TYPE_54__* %157)
  store %struct.TYPE_53__** %158, %struct.TYPE_53__*** %16, align 8
  %159 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %16, align 8
  %160 = icmp ne %struct.TYPE_53__** %159, null
  br i1 %160, label %161, label %221

161:                                              ; preds = %153
  %162 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %16, align 8
  store %struct.TYPE_53__** %162, %struct.TYPE_53__*** %17, align 8
  br label %163

163:                                              ; preds = %214, %161
  %164 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %168 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %169 = load %struct.TYPE_53__*, %struct.TYPE_53__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call %struct.TYPE_53__* @xmlSearchNs(i32 %166, %struct.TYPE_54__* %167, i32* %171)
  store %struct.TYPE_53__* %172, %struct.TYPE_53__** %18, align 8
  %173 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %174 = icmp eq %struct.TYPE_53__* %173, null
  br i1 %174, label %185, label %175

175:                                              ; preds = %163
  %176 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %180 = load %struct.TYPE_53__*, %struct.TYPE_53__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @xmlStrEqual(i32* %178, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %175, %163
  store %struct.TYPE_53__* null, %struct.TYPE_53__** %18, align 8
  br label %186

186:                                              ; preds = %185, %175
  %187 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %188 = icmp eq %struct.TYPE_53__* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %191 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %192 = load %struct.TYPE_53__*, %struct.TYPE_53__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %196 = load %struct.TYPE_53__*, %struct.TYPE_53__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = call %struct.TYPE_53__* @xmlNewNs(%struct.TYPE_54__* %190, i32* %194, i32* %198)
  store %struct.TYPE_53__* %199, %struct.TYPE_53__** %18, align 8
  br label %200

200:                                              ; preds = %189, %186
  %201 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_53__*, %struct.TYPE_53__** %202, align 8
  %204 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %205 = load %struct.TYPE_53__*, %struct.TYPE_53__** %204, align 8
  %206 = icmp eq %struct.TYPE_53__* %203, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %209 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %209, i32 0, i32 4
  store %struct.TYPE_53__* %208, %struct.TYPE_53__** %210, align 8
  br label %211

211:                                              ; preds = %207, %200
  %212 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_53__*, %struct.TYPE_53__** %212, i32 1
  store %struct.TYPE_53__** %213, %struct.TYPE_53__*** %17, align 8
  br label %214

214:                                              ; preds = %211
  %215 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %17, align 8
  %216 = load %struct.TYPE_53__*, %struct.TYPE_53__** %215, align 8
  %217 = icmp ne %struct.TYPE_53__* %216, null
  br i1 %217, label %163, label %218

218:                                              ; preds = %214
  %219 = load %struct.TYPE_53__**, %struct.TYPE_53__*** %16, align 8
  %220 = call i32 @xmlFree(%struct.TYPE_53__** %219)
  br label %221

221:                                              ; preds = %218, %153
  br label %251

222:                                              ; preds = %146, %139, %134, %131
  %223 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %250

227:                                              ; preds = %222
  %228 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %249

232:                                              ; preds = %227
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %237 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %238 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @xsltCopyNamespaceList(%struct.TYPE_52__* %236, %struct.TYPE_54__* %237, i32* %240)
  br label %248

242:                                              ; preds = %232
  %243 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %244 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %244, i32 0, i32 5
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @xsltCopyNamespaceListInternal(%struct.TYPE_54__* %243, i32* %246)
  br label %248

248:                                              ; preds = %242, %235
  br label %249

249:                                              ; preds = %248, %227
  br label %250

250:                                              ; preds = %249, %222
  br label %251

251:                                              ; preds = %250, %221
  %252 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_53__*, %struct.TYPE_53__** %253, align 8
  %255 = icmp ne %struct.TYPE_53__* %254, null
  br i1 %255, label %256, label %279

256:                                              ; preds = %251
  %257 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_53__*, %struct.TYPE_53__** %258, align 8
  %260 = icmp eq %struct.TYPE_53__* %259, null
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  %262 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %263 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %264 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_53__*, %struct.TYPE_53__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %269, i32 0, i32 4
  %271 = load %struct.TYPE_53__*, %struct.TYPE_53__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %275 = call %struct.TYPE_53__* @xsltGetSpecialNamespace(%struct.TYPE_52__* %262, %struct.TYPE_54__* %263, i32* %268, i32* %273, %struct.TYPE_54__* %274)
  %276 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %276, i32 0, i32 4
  store %struct.TYPE_53__* %275, %struct.TYPE_53__** %277, align 8
  br label %278

278:                                              ; preds = %261, %256
  br label %295

279:                                              ; preds = %251
  %280 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 138
  br i1 %283, label %284, label %294

284:                                              ; preds = %279
  %285 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_53__*, %struct.TYPE_53__** %286, align 8
  %288 = icmp ne %struct.TYPE_53__* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %291 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %292 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %293 = call %struct.TYPE_53__* @xsltGetSpecialNamespace(%struct.TYPE_52__* %290, %struct.TYPE_54__* %291, i32* null, i32* null, %struct.TYPE_54__* %292)
  br label %294

294:                                              ; preds = %289, %284, %279
  br label %295

295:                                              ; preds = %294, %278
  %296 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %302 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %303 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %304 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @xsltCopyAttrListNoOverwrite(%struct.TYPE_52__* %301, %struct.TYPE_54__* %302, %struct.TYPE_54__* %303, i32* %306)
  br label %308

308:                                              ; preds = %300, %295
  %309 = load i32, i32* %13, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 1, i32* %13, align 4
  br label %312

312:                                              ; preds = %311, %308
  br label %313

313:                                              ; preds = %312, %124
  %314 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %328

318:                                              ; preds = %313
  %319 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %320 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %321 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %321, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* %13, align 4
  %327 = call %struct.TYPE_54__* @xsltCopyTreeList(%struct.TYPE_52__* %319, %struct.TYPE_54__* %320, i32* %323, %struct.TYPE_54__* %324, i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %318, %313
  br label %336

329:                                              ; preds = %87
  %330 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %331 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %332 = load %struct.TYPE_54__*, %struct.TYPE_54__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @xsltTransformError(%struct.TYPE_52__* %330, i32* null, %struct.TYPE_54__* %331, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %334)
  br label %336

336:                                              ; preds = %329, %328
  %337 = load %struct.TYPE_54__*, %struct.TYPE_54__** %14, align 8
  store %struct.TYPE_54__* %337, %struct.TYPE_54__** %7, align 8
  br label %338

338:                                              ; preds = %336, %120, %106, %85, %66, %57, %48, %41, %27, %21
  %339 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  ret %struct.TYPE_54__* %339
}

declare dso_local %struct.TYPE_54__* @xsltCopyTextString(%struct.TYPE_52__*, %struct.TYPE_54__*, i32, i32) #1

declare dso_local i32 @xsltShallowCopyAttr(%struct.TYPE_52__*, %struct.TYPE_54__*, %struct.TYPE_54__*, i32) #1

declare dso_local i32 @xsltShallowCopyNsNode(%struct.TYPE_52__*, %struct.TYPE_54__*, %struct.TYPE_54__*, %struct.TYPE_53__*) #1

declare dso_local i64 @XSLT_IS_RES_TREE_FRAG(%struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_54__* @xsltCopyTreeList(%struct.TYPE_52__*, %struct.TYPE_54__*, i32*, %struct.TYPE_54__*, i32, i32) #1

declare dso_local %struct.TYPE_54__* @xmlDocCopyNode(%struct.TYPE_54__*, i32, i32) #1

declare dso_local %struct.TYPE_54__* @xsltAddChild(%struct.TYPE_54__*, %struct.TYPE_54__*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_52__*, i32*, %struct.TYPE_54__*, i8*, i32) #1

declare dso_local %struct.TYPE_53__** @xmlGetNsList(i32, %struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_53__* @xmlSearchNs(i32, %struct.TYPE_54__*, i32*) #1

declare dso_local i32 @xmlStrEqual(i32*, i32*) #1

declare dso_local %struct.TYPE_53__* @xmlNewNs(%struct.TYPE_54__*, i32*, i32*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_53__**) #1

declare dso_local i32 @xsltCopyNamespaceList(%struct.TYPE_52__*, %struct.TYPE_54__*, i32*) #1

declare dso_local i32 @xsltCopyNamespaceListInternal(%struct.TYPE_54__*, i32*) #1

declare dso_local %struct.TYPE_53__* @xsltGetSpecialNamespace(%struct.TYPE_52__*, %struct.TYPE_54__*, i32*, i32*, %struct.TYPE_54__*) #1

declare dso_local i32 @xsltCopyAttrListNoOverwrite(%struct.TYPE_52__*, %struct.TYPE_54__*, %struct.TYPE_54__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
