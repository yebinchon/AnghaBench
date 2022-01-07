; ModuleID = '/home/carl/AnghaBench/poco/XML/src/extr_xmltok.c_initScan.c'
source_filename = "/home/carl/AnghaBench/poco/XML/src/extr_xmltok.c_initScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }

@XML_TOK_NONE = common dso_local global i32 0, align 4
@XML_CONTENT_STATE = common dso_local global i32 0, align 4
@XML_TOK_PARTIAL = common dso_local global i32 0, align 4
@ISO_8859_1_ENC = common dso_local global i32 0, align 4
@XML_TOK_BOM = common dso_local global i32 0, align 4
@UTF_8_ENC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*, i32, i8*, i8*, i8**)* @initScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initScan(i32** %0, %struct.TYPE_4__* %1, i32 %2, i8* %3, i8* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp uge i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @XML_TOK_NONE, align 4
  store i32 %20, i32* %7, align 4
  br label %248

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  store i32** %24, i32*** %14, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @XML_CONTENT_STATE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @XML_TOK_PARTIAL, align 4
  store i32 %34, i32* %7, align 4
  br label %248

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %36)
  switch i64 %37, label %40 [
    i64 128, label %38
    i64 129, label %38
    i64 130, label %38
  ]

38:                                               ; preds = %35, %35, %35
  %39 = load i32, i32* @XML_TOK_PARTIAL, align 4
  store i32 %39, i32* %7, align 4
  br label %248

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  switch i32 %43, label %58 [
    i32 254, label %44
    i32 255, label %44
    i32 239, label %44
    i32 0, label %56
    i32 60, label %56
  ]

44:                                               ; preds = %40, %40, %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %45)
  %47 = load i32, i32* @ISO_8859_1_ENC, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @XML_CONTENT_STATE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %58

55:                                               ; preds = %50, %44
  br label %56

56:                                               ; preds = %40, %40, %55
  %57 = load i32, i32* @XML_TOK_PARTIAL, align 4
  store i32 %57, i32* %7, align 4
  br label %248

58:                                               ; preds = %40, %54
  br label %234

59:                                               ; preds = %21
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %64, %68
  switch i32 %69, label %181 [
    i32 65279, label %70
    i32 15360, label %90
    i32 65534, label %115
    i32 61371, label %135
  ]

70:                                               ; preds = %59
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %71)
  %73 = load i32, i32* @ISO_8859_1_ENC, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @XML_CONTENT_STATE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %233

81:                                               ; preds = %76, %70
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8**, i8*** %13, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32**, i32*** %8, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 130
  %87 = load i32*, i32** %86, align 8
  %88 = load i32**, i32*** %14, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i32, i32* @XML_TOK_BOM, align 4
  store i32 %89, i32* %7, align 4
  br label %248

90:                                               ; preds = %59
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %91)
  %93 = icmp eq i64 %92, 130
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %95)
  %97 = icmp eq i64 %96, 128
  br i1 %97, label %98, label %103

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @XML_CONTENT_STATE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %233

103:                                              ; preds = %98, %94
  %104 = load i32**, i32*** %8, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 129
  %106 = load i32*, i32** %105, align 8
  %107 = load i32**, i32*** %14, align 8
  store i32* %106, i32** %107, align 8
  %108 = load i32**, i32*** %14, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i8**, i8*** %13, align 8
  %114 = call i32 @XmlTok(i32* %109, i32 %110, i8* %111, i8* %112, i8** %113)
  store i32 %114, i32* %7, align 4
  br label %248

115:                                              ; preds = %59
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %116)
  %118 = load i32, i32* @ISO_8859_1_ENC, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @XML_CONTENT_STATE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %233

126:                                              ; preds = %121, %115
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8**, i8*** %13, align 8
  store i8* %128, i8** %129, align 8
  %130 = load i32**, i32*** %8, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 129
  %132 = load i32*, i32** %131, align 8
  %133 = load i32**, i32*** %14, align 8
  store i32* %132, i32** %133, align 8
  %134 = load i32, i32* @XML_TOK_BOM, align 4
  store i32 %134, i32* %7, align 4
  br label %248

135:                                              ; preds = %59
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @XML_CONTENT_STATE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %141 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %140)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @ISO_8859_1_ENC, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %15, align 4
  %148 = icmp eq i32 %147, 130
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %153, 128
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %149, %146, %139
  br label %233

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %156, %135
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8*, i8** %12, align 8
  %161 = icmp eq i8* %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* @XML_TOK_PARTIAL, align 4
  store i32 %163, i32* %7, align 4
  br label %248

164:                                              ; preds = %157
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 191
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 3
  %173 = load i8**, i8*** %13, align 8
  store i8* %172, i8** %173, align 8
  %174 = load i32**, i32*** %8, align 8
  %175 = load i64, i64* @UTF_8_ENC, align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32**, i32*** %14, align 8
  store i32* %177, i32** %178, align 8
  %179 = load i32, i32* @XML_TOK_BOM, align 4
  store i32 %179, i32* %7, align 4
  br label %248

180:                                              ; preds = %164
  br label %233

181:                                              ; preds = %59
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %208

187:                                              ; preds = %181
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @XML_CONTENT_STATE, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %193 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %192)
  %194 = icmp eq i64 %193, 129
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %233

196:                                              ; preds = %191, %187
  %197 = load i32**, i32*** %8, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 130
  %199 = load i32*, i32** %198, align 8
  %200 = load i32**, i32*** %14, align 8
  store i32* %199, i32** %200, align 8
  %201 = load i32**, i32*** %14, align 8
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i8*, i8** %11, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = load i8**, i8*** %13, align 8
  %207 = call i32 @XmlTok(i32* %202, i32 %203, i8* %204, i8* %205, i8** %206)
  store i32 %207, i32* %7, align 4
  br label %248

208:                                              ; preds = %181
  %209 = load i8*, i8** %11, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %208
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @XML_CONTENT_STATE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %233

219:                                              ; preds = %214
  %220 = load i32**, i32*** %8, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 129
  %222 = load i32*, i32** %221, align 8
  %223 = load i32**, i32*** %14, align 8
  store i32* %222, i32** %223, align 8
  %224 = load i32**, i32*** %14, align 8
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load i8*, i8** %11, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load i8**, i8*** %13, align 8
  %230 = call i32 @XmlTok(i32* %225, i32 %226, i8* %227, i8* %228, i8** %229)
  store i32 %230, i32* %7, align 4
  br label %248

231:                                              ; preds = %208
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232, %218, %195, %180, %155, %125, %102, %80
  br label %234

234:                                              ; preds = %233, %58
  %235 = load i32**, i32*** %8, align 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %237 = call i64 @INIT_ENC_INDEX(%struct.TYPE_4__* %236)
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = load i32**, i32*** %14, align 8
  store i32* %239, i32** %240, align 8
  %241 = load i32**, i32*** %14, align 8
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load i8*, i8** %11, align 8
  %245 = load i8*, i8** %12, align 8
  %246 = load i8**, i8*** %13, align 8
  %247 = call i32 @XmlTok(i32* %242, i32 %243, i8* %244, i8* %245, i8** %246)
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %234, %219, %196, %170, %162, %126, %103, %81, %56, %38, %33, %19
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

declare dso_local i64 @INIT_ENC_INDEX(%struct.TYPE_4__*) #1

declare dso_local i32 @XmlTok(i32*, i32, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
