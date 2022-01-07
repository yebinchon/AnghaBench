; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_x509.c_r_x509_parse_tbscertificate.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_x509.c_r_x509_parse_tbscertificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, %struct.TYPE_11__, i64* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__** }

@CLASS_CONTEXT = common dso_local global i64 0, align 8
@FORM_CONSTRUCTED = common dso_local global i64 0, align 8
@TAG_INTEGER = common dso_local global i64 0, align 8
@CLASS_UNIVERSAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_x509_parse_tbscertificate(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %11, %2
  store i32 0, i32* %3, align 4
  br label %316

21:                                               ; preds = %14
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %24, align 8
  store %struct.TYPE_13__** %25, %struct.TYPE_13__*** %6, align 8
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %26, i64 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %89

33:                                               ; preds = %21
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %34, i64 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CLASS_CONTEXT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %33
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FORM_CONSTRUCTED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %55, i64 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TAG_INTEGER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %49
  %63 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %63, i64 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %68, i64 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %89

74:                                               ; preds = %62
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %75, i64 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %80, i64 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 5
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  store i64 1, i64* %8, align 8
  br label %92

89:                                               ; preds = %62, %49, %41, %33, %21
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %74
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = icmp ult i64 %93, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %92
  %101 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %101, i64 %102
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CLASS_UNIVERSAL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %100
  %110 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %110, i64 %111
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TAG_INTEGER, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %109
  %119 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %119, i64 %120
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %125, i64 %126
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @r_asn1_stringify_integer(i64* %124, i32 %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %118, %109, %100, %92
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, 1
  %140 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %137, i64 %139
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = call i32 @r_x509_parse_algorithmidentifier(i32* %136, %struct.TYPE_13__* %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 7
  %145 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 2
  %148 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %145, i64 %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = call i32 @r_x509_parse_name(i32* %144, %struct.TYPE_13__* %149)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, 3
  %156 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %153, i64 %155
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = call i32 @r_x509_parse_validity(i32* %152, %struct.TYPE_13__* %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, 4
  %164 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %161, i64 %163
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = call i32 @r_x509_parse_name(i32* %160, %struct.TYPE_13__* %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, 5
  %172 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %169, i64 %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = call i32 @r_x509_parse_subjectpublickeyinfo(i32* %168, %struct.TYPE_13__* %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ugt i64 %177, 0
  br i1 %178, label %179, label %315

179:                                              ; preds = %134
  %180 = load i64, i64* %8, align 8
  %181 = add i64 %180, 6
  store i64 %181, i64* %7, align 8
  br label %182

182:                                              ; preds = %311, %179
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = icmp ult i64 %183, %188
  br i1 %189, label %190, label %314

190:                                              ; preds = %182
  %191 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %191, i64 %192
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = icmp ne %struct.TYPE_13__* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %198 = load i64, i64* %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %197, i64 %198
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @CLASS_CONTEXT, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %196, %190
  br label %311

206:                                              ; preds = %196
  %207 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %208 = load i64, i64* %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %207, i64 %208
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 1
  br i1 %213, label %214, label %236

214:                                              ; preds = %206
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %217, align 8
  %219 = load i64, i64* %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %218, i64 %219
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 5
  %223 = load i64*, i64** %222, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %226, align 8
  %228 = load i64, i64* %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %227, i64 %228
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i8* @r_asn1_create_binary(i64* %223, i32 %232)
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 3
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %214, %206
  %237 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %238 = load i64, i64* %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %237, i64 %238
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = icmp ne %struct.TYPE_13__* %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  br label %311

243:                                              ; preds = %236
  %244 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %245 = load i64, i64* %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %244, i64 %245
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 2
  br i1 %250, label %251, label %273

251:                                              ; preds = %243
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %254, align 8
  %256 = load i64, i64* %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %255, i64 %256
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 5
  %260 = load i64*, i64** %259, align 8
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %263, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %264, i64 %265
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @r_asn1_create_binary(i64* %260, i32 %269)
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 2
  store i8* %270, i8** %272, align 8
  br label %273

273:                                              ; preds = %251, %243
  %274 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %275 = load i64, i64* %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %274, i64 %275
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %276, align 8
  %278 = icmp ne %struct.TYPE_13__* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %273
  br label %311

280:                                              ; preds = %273
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %283, 2
  br i1 %284, label %285, label %310

285:                                              ; preds = %280
  %286 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %287 = load i64, i64* %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %286, i64 %287
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, 3
  br i1 %292, label %293, label %310

293:                                              ; preds = %285
  %294 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %295 = load i64, i64* %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %294, i64 %295
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @FORM_CONSTRUCTED, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %293
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %306 = load i64, i64* %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %305, i64 %306
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %307, align 8
  %309 = call i32 @r_x509_parse_extensions(i32* %304, %struct.TYPE_13__* %308)
  br label %310

310:                                              ; preds = %302, %293, %285, %280
  br label %311

311:                                              ; preds = %310, %279, %242, %205
  %312 = load i64, i64* %7, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %7, align 8
  br label %182

314:                                              ; preds = %182
  br label %315

315:                                              ; preds = %314, %134
  store i32 1, i32* %3, align 4
  br label %316

316:                                              ; preds = %315, %20
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @r_asn1_stringify_integer(i64*, i32) #1

declare dso_local i32 @r_x509_parse_algorithmidentifier(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @r_x509_parse_name(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @r_x509_parse_validity(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @r_x509_parse_subjectpublickeyinfo(i32*, %struct.TYPE_13__*) #1

declare dso_local i8* @r_asn1_create_binary(i64*, i32) #1

declare dso_local i32 @r_x509_parse_extensions(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
