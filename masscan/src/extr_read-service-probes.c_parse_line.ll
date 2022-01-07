; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_line.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbeList = type { i8*, i32, i32, %struct.NmapServiceProbe**, i32 }
%struct.NmapServiceProbe = type { %struct.ServiceProbeFallback*, i8*, i8*, i8*, %struct.ServiceProbeMatch*, i32, i32 }
%struct.ServiceProbeFallback = type { %struct.ServiceProbeFallback* }
%struct.ServiceProbeMatch = type { i32, %struct.ServiceProbeMatch* }
%struct.RangeList = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s:%u:%u: unknown type: '%.*s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s:%u:%u: 'Exclude' directive only valid before any 'Probe'\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s:%u:%u: 'Exclude' bad format\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s:%u:%u: 'directive only valid after a 'Probe'\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s:%u:%u: bad ports format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NmapServiceProbeList*, i8*)* @parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_line(%struct.NmapServiceProbeList* %0, i8* %1) #0 {
  %3 = alloca %struct.NmapServiceProbeList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.RangeList, align 4
  %11 = alloca %struct.NmapServiceProbe*, align 8
  %12 = alloca %struct.RangeList, align 4
  %13 = alloca %struct.RangeList, align 4
  %14 = alloca %struct.RangeList, align 4
  %15 = alloca %struct.ServiceProbeMatch*, align 8
  %16 = alloca %struct.ServiceProbeMatch**, align 8
  %17 = alloca %struct.ServiceProbeFallback*, align 8
  store %struct.NmapServiceProbeList* %0, %struct.NmapServiceProbeList** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %19 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %22 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = bitcast %struct.RangeList* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  store i64 0, i64* %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %39, %2
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isspace(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi i1 [ false, %27 ], [ %36, %30 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %27

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i1 [ false, %43 ], [ %53, %46 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %7, align 8
  br label %43

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @ispunct(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %281

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %281

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @parse_type(i8* %73, i64* %8, i64 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %132 [
    i32 128, label %77
    i32 138, label %88
    i32 134, label %126
  ]

77:                                               ; preds = %72
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  %85 = sub nsw i32 %84, 0
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 (i32, i8*, i8*, i32, i32, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %80, i32 %82, i32 %85, i8* %86)
  br label %281

88:                                               ; preds = %72
  %89 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %90 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i64, i64* %8, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 (i32, i8*, i8*, i32, i32, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %96, i32 %98)
  br label %125

100:                                              ; preds = %88
  %101 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @parse_ports(%struct.NmapServiceProbeList* %101, i8* %102, i64 %103, i64 %104)
  %106 = bitcast %struct.RangeList* %12 to i64*
  store i64 %105, i64* %106, align 4
  %107 = bitcast %struct.RangeList* %10 to i8*
  %108 = bitcast %struct.RangeList* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 8, i1 false)
  %109 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %100
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i64, i64* %8, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i32, i8*, i8*, i32, i32, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %114, i32 %115, i32 %117)
  br label %124

119:                                              ; preds = %100
  %120 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %121 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %120, i32 0, i32 4
  %122 = call i32 @rangelist_merge(i32* %121, %struct.RangeList* %10)
  %123 = call i32 @rangelist_remove_all(%struct.RangeList* %10)
  br label %124

124:                                              ; preds = %119, %112
  br label %125

125:                                              ; preds = %124, %93
  br label %281

126:                                              ; preds = %72
  %127 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @parse_probe(%struct.NmapServiceProbeList* %127, i8* %128, i64 %129, i64 %130)
  br label %281

132:                                              ; preds = %72
  %133 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %134 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i64, i64* %8, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i32, i8*, i8*, i32, i32, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %139, i32 %140, i32 %142)
  br label %281

144:                                              ; preds = %132
  %145 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %146 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %145, i32 0, i32 3
  %147 = load %struct.NmapServiceProbe**, %struct.NmapServiceProbe*** %146, align 8
  %148 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %149 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %147, i64 %152
  %154 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %153, align 8
  store %struct.NmapServiceProbe* %154, %struct.NmapServiceProbe** %11, align 8
  %155 = load i32, i32* %9, align 4
  switch i32 %155, label %281 [
    i32 135, label %156
    i32 131, label %181
    i32 136, label %206
    i32 132, label %206
    i32 129, label %239
    i32 130, label %247
    i32 133, label %255
    i32 137, label %263
  ]

156:                                              ; preds = %144
  %157 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i64 @parse_ports(%struct.NmapServiceProbeList* %157, i8* %158, i64 %159, i64 %160)
  %162 = bitcast %struct.RangeList* %13 to i64*
  store i64 %161, i64* %162, align 4
  %163 = bitcast %struct.RangeList* %10 to i8*
  %164 = bitcast %struct.RangeList* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 8, i1 false)
  %165 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %10, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %156
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i64, i64* %8, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 (i32, i8*, i8*, i32, i32, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %170, i32 %171, i32 %173)
  br label %180

175:                                              ; preds = %156
  %176 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %177 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %176, i32 0, i32 6
  %178 = call i32 @rangelist_merge(i32* %177, %struct.RangeList* %10)
  %179 = call i32 @rangelist_remove_all(%struct.RangeList* %10)
  br label %180

180:                                              ; preds = %175, %168
  br label %281

181:                                              ; preds = %144
  %182 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* %7, align 8
  %186 = call i64 @parse_ports(%struct.NmapServiceProbeList* %182, i8* %183, i64 %184, i64 %185)
  %187 = bitcast %struct.RangeList* %14 to i64*
  store i64 %186, i64* %187, align 4
  %188 = bitcast %struct.RangeList* %10 to i8*
  %189 = bitcast %struct.RangeList* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 8, i1 false)
  %190 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %10, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %181
  %194 = load i32, i32* @stderr, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i64, i64* %8, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 (i32, i8*, i8*, i32, i32, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %195, i32 %196, i32 %198)
  br label %205

200:                                              ; preds = %181
  %201 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %202 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %201, i32 0, i32 5
  %203 = call i32 @rangelist_merge(i32* %202, %struct.RangeList* %10)
  %204 = call i32 @rangelist_remove_all(%struct.RangeList* %10)
  br label %205

205:                                              ; preds = %200, %193
  br label %281

206:                                              ; preds = %144, %144
  %207 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* %7, align 8
  %211 = call %struct.ServiceProbeMatch* @parse_match(%struct.NmapServiceProbeList* %207, i8* %208, i64 %209, i64 %210)
  store %struct.ServiceProbeMatch* %211, %struct.ServiceProbeMatch** %15, align 8
  %212 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %15, align 8
  %213 = icmp ne %struct.ServiceProbeMatch* %212, null
  br i1 %213, label %214, label %238

214:                                              ; preds = %206
  %215 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %216 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %215, i32 0, i32 4
  store %struct.ServiceProbeMatch** %216, %struct.ServiceProbeMatch*** %16, align 8
  br label %217

217:                                              ; preds = %222, %214
  %218 = load %struct.ServiceProbeMatch**, %struct.ServiceProbeMatch*** %16, align 8
  %219 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %218, align 8
  %220 = icmp ne %struct.ServiceProbeMatch* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.ServiceProbeMatch**, %struct.ServiceProbeMatch*** %16, align 8
  %224 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %223, align 8
  %225 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %224, i32 0, i32 1
  store %struct.ServiceProbeMatch** %225, %struct.ServiceProbeMatch*** %16, align 8
  br label %217

226:                                              ; preds = %217
  %227 = load %struct.ServiceProbeMatch**, %struct.ServiceProbeMatch*** %16, align 8
  %228 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %227, align 8
  %229 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %15, align 8
  %230 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %229, i32 0, i32 1
  store %struct.ServiceProbeMatch* %228, %struct.ServiceProbeMatch** %230, align 8
  %231 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %15, align 8
  %232 = load %struct.ServiceProbeMatch**, %struct.ServiceProbeMatch*** %16, align 8
  store %struct.ServiceProbeMatch* %231, %struct.ServiceProbeMatch** %232, align 8
  %233 = load i32, i32* %9, align 4
  %234 = icmp eq i32 %233, 132
  %235 = zext i1 %234 to i32
  %236 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %15, align 8
  %237 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %226, %206
  br label %281

239:                                              ; preds = %144
  %240 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %241 = load i8*, i8** %4, align 8
  %242 = load i64, i64* %8, align 8
  %243 = load i64, i64* %7, align 8
  %244 = call i8* @parse_number(%struct.NmapServiceProbeList* %240, i8* %241, i64 %242, i64 %243)
  %245 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %246 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  br label %281

247:                                              ; preds = %144
  %248 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %249 = load i8*, i8** %4, align 8
  %250 = load i64, i64* %8, align 8
  %251 = load i64, i64* %7, align 8
  %252 = call i8* @parse_number(%struct.NmapServiceProbeList* %248, i8* %249, i64 %250, i64 %251)
  %253 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %254 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %253, i32 0, i32 2
  store i8* %252, i8** %254, align 8
  br label %281

255:                                              ; preds = %144
  %256 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %257 = load i8*, i8** %4, align 8
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* %7, align 8
  %260 = call i8* @parse_number(%struct.NmapServiceProbeList* %256, i8* %257, i64 %258, i64 %259)
  %261 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %262 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  br label %281

263:                                              ; preds = %144
  %264 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %265 = load i8*, i8** %4, align 8
  %266 = load i64, i64* %8, align 8
  %267 = load i64, i64* %7, align 8
  %268 = call %struct.ServiceProbeFallback* @parse_fallback(%struct.NmapServiceProbeList* %264, i8* %265, i64 %266, i64 %267)
  store %struct.ServiceProbeFallback* %268, %struct.ServiceProbeFallback** %17, align 8
  %269 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %17, align 8
  %270 = icmp ne %struct.ServiceProbeFallback* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %273 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %272, i32 0, i32 0
  %274 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %273, align 8
  %275 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %17, align 8
  %276 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %275, i32 0, i32 0
  store %struct.ServiceProbeFallback* %274, %struct.ServiceProbeFallback** %276, align 8
  %277 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %17, align 8
  %278 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %11, align 8
  %279 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %278, i32 0, i32 0
  store %struct.ServiceProbeFallback* %277, %struct.ServiceProbeFallback** %279, align 8
  br label %280

280:                                              ; preds = %271, %263
  br label %281

281:                                              ; preds = %66, %71, %77, %125, %126, %137, %144, %280, %255, %247, %239, %238, %205, %180
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i64 @ispunct(i8 signext) #2

declare dso_local i32 @parse_type(i8*, i64*, i64) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, ...) #2

declare dso_local i64 @parse_ports(%struct.NmapServiceProbeList*, i8*, i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rangelist_merge(i32*, %struct.RangeList*) #2

declare dso_local i32 @rangelist_remove_all(%struct.RangeList*) #2

declare dso_local i32 @parse_probe(%struct.NmapServiceProbeList*, i8*, i64, i64) #2

declare dso_local %struct.ServiceProbeMatch* @parse_match(%struct.NmapServiceProbeList*, i8*, i64, i64) #2

declare dso_local i8* @parse_number(%struct.NmapServiceProbeList*, i8*, i64, i64) #2

declare dso_local %struct.ServiceProbeFallback* @parse_fallback(%struct.NmapServiceProbeList*, i8*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
