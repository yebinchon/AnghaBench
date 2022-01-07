; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetDecimalFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetDecimalFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"xsl:decimal-format: Invalid QName '%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"xsltParseStylestyleDecimalFormat: %s already exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"xsltParseStylestyleDecimalFormat: failed creating new decimal-format\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"decimal-separator\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"grouping-separator\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"minus-sign\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"per-mille\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"zero-digit\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"pattern-separator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @xsltParseStylesheetDecimalFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltParseStylesheetDecimalFormat(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %11, %2
  br label %312

21:                                               ; preds = %14
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32* @BAD_CAST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %25, i32* %26, i32* null)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %111

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @xmlValidateQName(i32* %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %35, %struct.TYPE_16__* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @xmlFree(i32* %43)
  br label %312

45:                                               ; preds = %30
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = call i32* @xsltGetQNameURI(%struct.TYPE_16__* %46, i32** %5)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %312

55:                                               ; preds = %45
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call %struct.TYPE_15__* @xsltDecimalFormatGetByQName(%struct.TYPE_14__* %56, i32* %57, i32* %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %6, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %63, %struct.TYPE_16__* %64, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @xmlFree(i32* %71)
  br label %312

73:                                               ; preds = %55
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call %struct.TYPE_15__* @xsltNewDecimalFormat(i32* %74, i32* %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %6, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = icmp eq %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %80, %struct.TYPE_16__* %81, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @xmlFree(i32* %87)
  br label %312

89:                                               ; preds = %73
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %7, align 8
  br label %93

93:                                               ; preds = %99, %89
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 10
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = icmp ne %struct.TYPE_15__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %7, align 8
  br label %93

103:                                              ; preds = %93
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = icmp ne %struct.TYPE_15__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 10
  store %struct.TYPE_15__* %107, %struct.TYPE_15__** %109, align 8
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %21
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %112, i32* bitcast ([18 x i8]* @.str.4 to i32*), i32* null)
  store i32* %113, i32** %5, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 9
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @xmlFree(i32* %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 9
  store i32* %127, i32** %129, align 8
  br label %130

130:                                              ; preds = %126, %111
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %131, i32* bitcast ([19 x i8]* @.str.5 to i32*), i32* null)
  store i32* %132, i32** %5, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 8
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 8
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @xmlFree(i32* %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 8
  store i32* %146, i32** %148, align 8
  br label %149

149:                                              ; preds = %145, %130
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %150, i32* bitcast ([9 x i8]* @.str.6 to i32*), i32* null)
  store i32* %151, i32** %5, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @xmlFree(i32* %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 7
  store i32* %165, i32** %167, align 8
  br label %168

168:                                              ; preds = %164, %149
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %169, i32* bitcast ([11 x i8]* @.str.7 to i32*), i32* null)
  store i32* %170, i32** %5, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %187

173:                                              ; preds = %168
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @xmlFree(i32* %181)
  br label %183

183:                                              ; preds = %178, %173
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 6
  store i32* %184, i32** %186, align 8
  br label %187

187:                                              ; preds = %183, %168
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %189 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %188, i32* bitcast ([4 x i8]* @.str.8 to i32*), i32* null)
  store i32* %189, i32** %5, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %206

192:                                              ; preds = %187
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @xmlFree(i32* %200)
  br label %202

202:                                              ; preds = %197, %192
  %203 = load i32*, i32** %5, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  store i32* %203, i32** %205, align 8
  br label %206

206:                                              ; preds = %202, %187
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %207, i32* bitcast ([8 x i8]* @.str.9 to i32*), i32* null)
  store i32* %208, i32** %5, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %225

211:                                              ; preds = %206
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @xmlFree(i32* %219)
  br label %221

221:                                              ; preds = %216, %211
  %222 = load i32*, i32** %5, align 8
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 4
  store i32* %222, i32** %224, align 8
  br label %225

225:                                              ; preds = %221, %206
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %226, i32* bitcast ([10 x i8]* @.str.10 to i32*), i32* null)
  store i32* %227, i32** %5, align 8
  %228 = load i32*, i32** %5, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %244

230:                                              ; preds = %225
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @xmlFree(i32* %238)
  br label %240

240:                                              ; preds = %235, %230
  %241 = load i32*, i32** %5, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 3
  store i32* %241, i32** %243, align 8
  br label %244

244:                                              ; preds = %240, %225
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %245, i32* bitcast ([11 x i8]* @.str.11 to i32*), i32* null)
  store i32* %246, i32** %5, align 8
  %247 = load i32*, i32** %5, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %263

249:                                              ; preds = %244
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @xmlFree(i32* %257)
  br label %259

259:                                              ; preds = %254, %249
  %260 = load i32*, i32** %5, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 2
  store i32* %260, i32** %262, align 8
  br label %263

263:                                              ; preds = %259, %244
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %264, i32* bitcast ([6 x i8]* @.str.12 to i32*), i32* null)
  store i32* %265, i32** %5, align 8
  %266 = load i32*, i32** %5, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %282

268:                                              ; preds = %263
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @xmlFree(i32* %276)
  br label %278

278:                                              ; preds = %273, %268
  %279 = load i32*, i32** %5, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  store i32* %279, i32** %281, align 8
  br label %282

282:                                              ; preds = %278, %263
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %284 = call i32* @xmlGetNsProp(%struct.TYPE_16__* %283, i32* bitcast ([18 x i8]* @.str.13 to i32*), i32* null)
  store i32* %284, i32** %5, align 8
  %285 = load i32*, i32** %5, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %301

287:                                              ; preds = %282
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @xmlFree(i32* %295)
  br label %297

297:                                              ; preds = %292, %287
  %298 = load i32*, i32** %5, align 8
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  store i32* %298, i32** %300, align 8
  br label %301

301:                                              ; preds = %297, %282
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = call i32 @xsltParseContentError(%struct.TYPE_14__* %307, i32* %310)
  br label %312

312:                                              ; preds = %20, %34, %50, %62, %79, %306, %301
  ret void
}

declare dso_local i32* @xmlGetNsProp(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32* @BAD_CAST(i8*) #1

declare dso_local i64 @xmlValidateQName(i32*, i32) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32* @xsltGetQNameURI(%struct.TYPE_16__*, i32**) #1

declare dso_local %struct.TYPE_15__* @xsltDecimalFormatGetByQName(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @xsltNewDecimalFormat(i32*, i32*) #1

declare dso_local i32 @xsltParseContentError(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
