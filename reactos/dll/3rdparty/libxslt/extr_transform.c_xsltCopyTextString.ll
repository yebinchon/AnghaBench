; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyTextString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopyTextString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i32*, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_23__ = type { i64, i32*, %struct.TYPE_19__*, i64, %struct.TYPE_21__*, i32* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32* }

@XSLT_OUTPUT_XML = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@xmlStringTextNoenc = common dso_local global i64 0, align 8
@xmlStringText = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"xsltCopyTextString: text copy failed\0A\00", align 1
@XSLT_TRACE_COPY_TEXT = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @xsltCopyTextString(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  br label %231

15:                                               ; preds = %4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %17 = icmp eq %struct.TYPE_23__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %15
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @xmlStrlen(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XSLT_OUTPUT_XML, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %115

34:                                               ; preds = %26
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %115

41:                                               ; preds = %34
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = icmp ne %struct.TYPE_23__* %42, null
  br i1 %43, label %44, label %115

44:                                               ; preds = %41
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %115

50:                                               ; preds = %44
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = icmp eq %struct.TYPE_21__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32* @xmlHashLookup2(i32* %60, i64 %63, i32* null)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %55, %50
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %115

71:                                               ; preds = %66
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32* @xmlHashLookup2(i32* %76, i64 %79, i32* %84)
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %115

87:                                               ; preds = %71, %55
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = icmp ne %struct.TYPE_19__* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call %struct.TYPE_23__* @xsltAddTextString(%struct.TYPE_22__* %101, %struct.TYPE_19__* %104, i32* %105, i32 %106)
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %5, align 8
  br label %231

108:                                              ; preds = %92, %87
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call %struct.TYPE_23__* @xmlNewCDataBlock(i32 %111, i32* %112, i32 %113)
  store %struct.TYPE_23__* %114, %struct.TYPE_23__** %10, align 8
  br label %198

115:                                              ; preds = %71, %66, %44, %41, %34, %26
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %120 = icmp ne %struct.TYPE_23__* %119, null
  br i1 %120, label %121, label %150

121:                                              ; preds = %118
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = icmp ne %struct.TYPE_19__* %124, null
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @XML_TEXT_NODE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %126
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @xmlStringTextNoenc, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call %struct.TYPE_23__* @xsltAddTextString(%struct.TYPE_22__* %143, %struct.TYPE_19__* %146, i32* %147, i32 %148)
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %5, align 8
  br label %231

150:                                              ; preds = %134, %126, %121, %118
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call %struct.TYPE_23__* @xmlNewTextLen(i32* %151, i32 %152)
  store %struct.TYPE_23__* %153, %struct.TYPE_23__** %10, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %155 = icmp ne %struct.TYPE_23__* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i64, i64* @xmlStringTextNoenc, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %150
  br label %197

161:                                              ; preds = %115
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %163 = icmp ne %struct.TYPE_23__* %162, null
  br i1 %163, label %164, label %193

164:                                              ; preds = %161
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = icmp ne %struct.TYPE_19__* %167, null
  br i1 %168, label %169, label %193

169:                                              ; preds = %164
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @XML_TEXT_NODE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %169
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @xmlStringText, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call %struct.TYPE_23__* @xsltAddTextString(%struct.TYPE_22__* %186, %struct.TYPE_19__* %189, i32* %190, i32 %191)
  store %struct.TYPE_23__* %192, %struct.TYPE_23__** %5, align 8
  br label %231

193:                                              ; preds = %177, %169, %164, %161
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call %struct.TYPE_23__* @xmlNewTextLen(i32* %194, i32 %195)
  store %struct.TYPE_23__* %196, %struct.TYPE_23__** %10, align 8
  br label %197

197:                                              ; preds = %193, %160
  br label %198

198:                                              ; preds = %197, %108
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %200 = icmp ne %struct.TYPE_23__* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = icmp ne %struct.TYPE_23__* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %207 = call %struct.TYPE_23__* @xsltAddChild(%struct.TYPE_23__* %205, %struct.TYPE_23__* %206)
  store %struct.TYPE_23__* %207, %struct.TYPE_23__** %10, align 8
  br label %208

208:                                              ; preds = %204, %201, %198
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %210 = icmp ne %struct.TYPE_23__* %209, null
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 3
  store i32* %214, i32** %216, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  br label %229

223:                                              ; preds = %208
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %226 = call i32 @xsltTransformError(%struct.TYPE_22__* %224, i32* null, %struct.TYPE_23__* %225, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 3
  store i32* null, i32** %228, align 8
  br label %229

229:                                              ; preds = %223, %211
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %230, %struct.TYPE_23__** %5, align 8
  br label %231

231:                                              ; preds = %229, %185, %142, %100, %14
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  ret %struct.TYPE_23__* %232
}

declare dso_local i32 @xmlStrlen(i32*) #1

declare dso_local i32* @xmlHashLookup2(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_23__* @xsltAddTextString(%struct.TYPE_22__*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @xmlNewCDataBlock(i32, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @xmlNewTextLen(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @xsltAddChild(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
