; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltGetTemplate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltGetTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32, i8*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { float, %struct.TYPE_21__*, i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32* }

@XSLT_PAT_NO_PRIORITY = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltGetTemplate(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32* null, i32** %4, align 8
  br label %475

22:                                               ; preds = %18
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = icmp eq %struct.TYPE_20__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %8, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = call %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__* %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %8, align 8
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %470, %32
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = icmp ne %struct.TYPE_20__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = icmp ne %struct.TYPE_20__* %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %473

42:                                               ; preds = %40
  %43 = load float, float* @XSLT_PAT_NO_PRIORITY, align 4
  store float %43, float* %12, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %67 [
    i32 138, label %52
    i32 146, label %62
    i32 131, label %62
    i32 142, label %66
    i32 134, label %66
    i32 130, label %66
    i32 145, label %66
    i32 144, label %66
    i32 135, label %66
    i32 136, label %66
    i32 141, label %66
    i32 143, label %66
    i32 132, label %66
    i32 140, label %66
    i32 139, label %66
    i32 147, label %66
    i32 137, label %66
    i32 133, label %66
    i32 128, label %66
    i32 129, label %66
  ]

52:                                               ; preds = %48
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %68

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %48, %48, %61
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %10, align 8
  br label %68

66:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  br label %68

67:                                               ; preds = %48
  store i32* null, i32** %4, align 8
  br label %475

68:                                               ; preds = %66, %62, %60
  br label %69

69:                                               ; preds = %68, %42
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @xmlHashLookup3(i32* %75, i8* %76, i32 %79, i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %11, align 8
  br label %86

85:                                               ; preds = %69
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  br label %86

86:                                               ; preds = %85, %72
  br label %87

87:                                               ; preds = %109, %86
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = icmp ne %struct.TYPE_21__* %88, null
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @xsltTestCompMatch(%struct.TYPE_19__* %91, %struct.TYPE_21__* %92, %struct.TYPE_22__* %93, i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %90
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %9, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 8
  store float %108, float* %12, align 4
  br label %113

109:                                              ; preds = %90
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  store %struct.TYPE_21__* %112, %struct.TYPE_21__** %11, align 8
  br label %87

113:                                              ; preds = %102, %87
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %195 [
    i32 138, label %117
    i32 146, label %140
    i32 131, label %152
    i32 142, label %162
    i32 134, label %162
    i32 130, label %174
    i32 145, label %174
    i32 144, label %184
    i32 135, label %194
    i32 136, label %194
    i32 141, label %194
    i32 143, label %194
    i32 132, label %194
    i32 140, label %194
    i32 139, label %194
    i32 147, label %194
    i32 137, label %194
    i32 133, label %194
    i32 128, label %194
    i32 129, label %194
  ]

117:                                              ; preds = %113
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %11, align 8
  br label %133

129:                                              ; preds = %117
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %11, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %138, %133
  br label %196

140:                                              ; preds = %113
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  store %struct.TYPE_21__* %143, %struct.TYPE_21__** %11, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = bitcast %struct.TYPE_22__* %144 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %145, %struct.TYPE_24__** %14, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %140
  br label %196

152:                                              ; preds = %113
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  store %struct.TYPE_21__* %155, %struct.TYPE_21__** %11, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  store i32 1, i32* %13, align 4
  br label %161

161:                                              ; preds = %160, %152
  br label %196

162:                                              ; preds = %113, %113
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %11, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = bitcast %struct.TYPE_22__* %166 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %167, %struct.TYPE_23__** %15, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  store i32 1, i32* %13, align 4
  br label %173

173:                                              ; preds = %172, %162
  br label %196

174:                                              ; preds = %113, %113
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  store %struct.TYPE_21__* %177, %struct.TYPE_21__** %11, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  store i32 1, i32* %13, align 4
  br label %183

183:                                              ; preds = %182, %174
  br label %196

184:                                              ; preds = %113
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %186, align 8
  store %struct.TYPE_21__* %187, %struct.TYPE_21__** %11, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 1, i32* %13, align 4
  br label %193

193:                                              ; preds = %192, %184
  br label %196

194:                                              ; preds = %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113
  br label %196

195:                                              ; preds = %113
  br label %196

196:                                              ; preds = %195, %194, %193, %183, %173, %161, %151, %139
  br label %197

197:                                              ; preds = %232, %196
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %199 = icmp ne %struct.TYPE_21__* %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load i32*, i32** %9, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  %206 = load float, float* %205, align 8
  %207 = load float, float* %12, align 4
  %208 = fcmp ogt float %206, %207
  br label %209

209:                                              ; preds = %203, %200
  %210 = phi i1 [ true, %200 ], [ %208, %203 ]
  br label %211

211:                                              ; preds = %209, %197
  %212 = phi i1 [ false, %197 ], [ %210, %209 ]
  br i1 %212, label %213, label %236

213:                                              ; preds = %211
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @xsltTestCompMatch(%struct.TYPE_19__* %214, %struct.TYPE_21__* %215, %struct.TYPE_22__* %216, i32 %219, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %213
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  store i32* %228, i32** %9, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load float, float* %230, align 8
  store float %231, float* %12, align 4
  br label %236

232:                                              ; preds = %213
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  store %struct.TYPE_21__* %235, %struct.TYPE_21__** %11, align 8
  br label %197

236:                                              ; preds = %225, %211
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 142
  br i1 %240, label %251, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 134
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 130
  br i1 %250, label %251, label %295

251:                                              ; preds = %246, %241, %236
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  store %struct.TYPE_21__* %254, %struct.TYPE_21__** %11, align 8
  br label %255

255:                                              ; preds = %290, %251
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %257 = icmp ne %struct.TYPE_21__* %256, null
  br i1 %257, label %258, label %269

258:                                              ; preds = %255
  %259 = load i32*, i32** %9, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %267, label %261

261:                                              ; preds = %258
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load float, float* %263, align 8
  %265 = load float, float* %12, align 4
  %266 = fcmp ogt float %264, %265
  br label %267

267:                                              ; preds = %261, %258
  %268 = phi i1 [ true, %258 ], [ %266, %261 ]
  br label %269

269:                                              ; preds = %267, %255
  %270 = phi i1 [ false, %255 ], [ %268, %267 ]
  br i1 %270, label %271, label %294

271:                                              ; preds = %269
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @xsltTestCompMatch(%struct.TYPE_19__* %272, %struct.TYPE_21__* %273, %struct.TYPE_22__* %274, i32 %277, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %271
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  store i32* %286, i32** %9, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load float, float* %288, align 8
  store float %289, float* %12, align 4
  br label %294

290:                                              ; preds = %271
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %292, align 8
  store %struct.TYPE_21__* %293, %struct.TYPE_21__** %11, align 8
  br label %255

294:                                              ; preds = %283, %269
  br label %350

295:                                              ; preds = %246
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 131
  br i1 %299, label %305, label %300

300:                                              ; preds = %295
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 144
  br i1 %304, label %305, label %349

305:                                              ; preds = %300, %295
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %307, align 8
  store %struct.TYPE_21__* %308, %struct.TYPE_21__** %11, align 8
  br label %309

309:                                              ; preds = %344, %305
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %311 = icmp ne %struct.TYPE_21__* %310, null
  br i1 %311, label %312, label %323

312:                                              ; preds = %309
  %313 = load i32*, i32** %9, align 8
  %314 = icmp eq i32* %313, null
  br i1 %314, label %321, label %315

315:                                              ; preds = %312
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 0
  %318 = load float, float* %317, align 8
  %319 = load float, float* %12, align 4
  %320 = fcmp ogt float %318, %319
  br label %321

321:                                              ; preds = %315, %312
  %322 = phi i1 [ true, %312 ], [ %320, %315 ]
  br label %323

323:                                              ; preds = %321, %309
  %324 = phi i1 [ false, %309 ], [ %322, %321 ]
  br i1 %324, label %325, label %348

325:                                              ; preds = %323
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = call i64 @xsltTestCompMatch(%struct.TYPE_19__* %326, %struct.TYPE_21__* %327, %struct.TYPE_22__* %328, i32 %331, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %325
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  store i32* %340, i32** %9, align 8
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 0
  %343 = load float, float* %342, align 8
  store float %343, float* %12, align 4
  br label %348

344:                                              ; preds = %325
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %346, align 8
  store %struct.TYPE_21__* %347, %struct.TYPE_21__** %11, align 8
  br label %309

348:                                              ; preds = %337, %323
  br label %349

349:                                              ; preds = %348, %300
  br label %350

350:                                              ; preds = %349, %294
  br label %351

351:                                              ; preds = %462, %350
  %352 = load i32, i32* %13, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %398

354:                                              ; preds = %351
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %356, align 8
  store %struct.TYPE_21__* %357, %struct.TYPE_21__** %11, align 8
  br label %358

358:                                              ; preds = %393, %354
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %360 = icmp ne %struct.TYPE_21__* %359, null
  br i1 %360, label %361, label %372

361:                                              ; preds = %358
  %362 = load i32*, i32** %9, align 8
  %363 = icmp eq i32* %362, null
  br i1 %363, label %370, label %364

364:                                              ; preds = %361
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 0
  %367 = load float, float* %366, align 8
  %368 = load float, float* %12, align 4
  %369 = fcmp ogt float %367, %368
  br label %370

370:                                              ; preds = %364, %361
  %371 = phi i1 [ true, %361 ], [ %369, %364 ]
  br label %372

372:                                              ; preds = %370, %358
  %373 = phi i1 [ false, %358 ], [ %371, %370 ]
  br i1 %373, label %374, label %397

374:                                              ; preds = %372
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @xsltTestCompMatch(%struct.TYPE_19__* %375, %struct.TYPE_21__* %376, %struct.TYPE_22__* %377, i32 %380, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %374
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 2
  %389 = load i32*, i32** %388, align 8
  store i32* %389, i32** %9, align 8
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 0
  %392 = load float, float* %391, align 8
  store float %392, float* %12, align 4
  br label %397

393:                                              ; preds = %374
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_21__*, %struct.TYPE_21__** %395, align 8
  store %struct.TYPE_21__* %396, %struct.TYPE_21__** %11, align 8
  br label %358

397:                                              ; preds = %386, %372
  br label %465

398:                                              ; preds = %351
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 2
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %464

403:                                              ; preds = %398
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %405, align 8
  %407 = icmp eq %struct.TYPE_18__* %406, null
  br i1 %407, label %418, label %408

408:                                              ; preds = %403
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp slt i64 %413, %416
  br i1 %417, label %418, label %464

418:                                              ; preds = %408, %403
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %421 = call i32 @xsltComputeAllKeys(%struct.TYPE_19__* %419, %struct.TYPE_22__* %420)
  %422 = icmp eq i32 %421, -1
  br i1 %422, label %423, label %424

423:                                              ; preds = %418
  br label %474

424:                                              ; preds = %418
  %425 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  switch i32 %427, label %458 [
    i32 138, label %428
    i32 146, label %435
    i32 130, label %443
    i32 145, label %443
    i32 144, label %443
    i32 131, label %443
    i32 142, label %450
    i32 134, label %450
  ]

428:                                              ; preds = %424
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 2
  %431 = load i32*, i32** %430, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %434

433:                                              ; preds = %428
  store i32 1, i32* %13, align 4
  br label %434

434:                                              ; preds = %433, %428
  br label %459

435:                                              ; preds = %424
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %437 = bitcast %struct.TYPE_22__* %436 to %struct.TYPE_24__*
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 0
  %439 = load i32*, i32** %438, align 8
  %440 = icmp ne i32* %439, null
  br i1 %440, label %441, label %442

441:                                              ; preds = %435
  store i32 1, i32* %13, align 4
  br label %442

442:                                              ; preds = %441, %435
  br label %459

443:                                              ; preds = %424, %424, %424, %424
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 2
  %446 = load i32*, i32** %445, align 8
  %447 = icmp ne i32* %446, null
  br i1 %447, label %448, label %449

448:                                              ; preds = %443
  store i32 1, i32* %13, align 4
  br label %449

449:                                              ; preds = %448, %443
  br label %459

450:                                              ; preds = %424, %424
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %452 = bitcast %struct.TYPE_22__* %451 to %struct.TYPE_23__*
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 0
  %454 = load i32*, i32** %453, align 8
  %455 = icmp ne i32* %454, null
  br i1 %455, label %456, label %457

456:                                              ; preds = %450
  store i32 1, i32* %13, align 4
  br label %457

457:                                              ; preds = %456, %450
  br label %459

458:                                              ; preds = %424
  br label %459

459:                                              ; preds = %458, %457, %449, %442, %434
  %460 = load i32, i32* %13, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  br label %351

463:                                              ; preds = %459
  br label %464

464:                                              ; preds = %463, %408, %398
  br label %465

465:                                              ; preds = %464, %397
  %466 = load i32*, i32** %9, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %470

468:                                              ; preds = %465
  %469 = load i32*, i32** %9, align 8
  store i32* %469, i32** %4, align 8
  br label %475

470:                                              ; preds = %465
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %472 = call %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__* %471)
  store %struct.TYPE_20__* %472, %struct.TYPE_20__** %8, align 8
  br label %33

473:                                              ; preds = %40
  br label %474

474:                                              ; preds = %473, %423
  store i32* null, i32** %4, align 8
  br label %475

475:                                              ; preds = %474, %468, %67, %21
  %476 = load i32*, i32** %4, align 8
  ret i32* %476
}

declare dso_local %struct.TYPE_20__* @xsltNextImport(%struct.TYPE_20__*) #1

declare dso_local i64 @xmlHashLookup3(i32*, i8*, i32, i32) #1

declare dso_local i64 @xsltTestCompMatch(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @xsltComputeAllKeys(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
