; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_timestamptz_trunc_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_timestamptz_trunc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i32, i32, i32 }

@UNITS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"timestamp out of range\00", align 1
@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"timestamp with time zone units \22%s\22 not supported\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"timestamp with time zone units \22%s\22 not recognized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*)* @timestamptz_trunc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @timestamptz_trunc_internal(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pg_tm, align 4
  %15 = alloca %struct.pg_tm*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  store %struct.pg_tm* %14, %struct.pg_tm** %15, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @VARDATA_ANY(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @VARSIZE_ANY_EXHDR(i32* %19)
  %21 = call i8* @downcase_truncate_identifier(i32 %18, i32 %20, i32 0)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @DecodeUnits(i32 0, i8* %22, i32* %10)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @UNITS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %238

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @timestamp2tm(i64 %28, i32* %8, %struct.pg_tm* %29, i32* %13, i32* null, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %212 [
    i32 129, label %41
    i32 135, label %93
    i32 140, label %121
    i32 138, label %149
    i32 128, label %181
    i32 131, label %184
    i32 132, label %194
    i32 139, label %197
    i32 137, label %200
    i32 133, label %203
    i32 130, label %206
    i32 134, label %207
    i32 136, label %211
  ]

41:                                               ; preds = %39
  %42 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %43 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %46 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %49 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @date2isoweek(i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sge i32 %52, 52
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %56 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %61 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54, %41
  %65 = load i32, i32* %16, align 4
  %66 = icmp sle i32 %65, 1
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %69 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %75 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %67, %64
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %81 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %80, i32 0, i32 0
  %82 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %83 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %82, i32 0, i32 1
  %84 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %85 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %84, i32 0, i32 2
  %86 = call i32 @isoweek2date(i32 %79, i32* %81, i32* %83, i32* %85)
  %87 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %88 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %87, i32 0, i32 5
  store i32 0, i32* %88, align 4
  %89 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %90 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %89, i32 0, i32 4
  store i32 0, i32* %90, align 4
  %91 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %92 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %219

93:                                               ; preds = %39
  %94 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %95 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %100 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 999
  %103 = sdiv i32 %102, 1000
  %104 = mul nsw i32 %103, 1000
  %105 = sub nsw i32 %104, 999
  %106 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %107 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %120

108:                                              ; preds = %93
  %109 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %110 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sub nsw i32 999, %112
  %114 = sdiv i32 %113, 1000
  %115 = sub nsw i32 0, %114
  %116 = mul nsw i32 %115, 1000
  %117 = add nsw i32 %116, 1
  %118 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %119 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %108, %98
  br label %121

121:                                              ; preds = %39, %120
  %122 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %123 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %128 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 99
  %131 = sdiv i32 %130, 100
  %132 = mul nsw i32 %131, 100
  %133 = sub nsw i32 %132, 99
  %134 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %135 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  br label %148

136:                                              ; preds = %121
  %137 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %138 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sub nsw i32 99, %140
  %142 = sdiv i32 %141, 100
  %143 = sub nsw i32 0, %142
  %144 = mul nsw i32 %143, 100
  %145 = add nsw i32 %144, 1
  %146 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %147 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %136, %126
  br label %149

149:                                              ; preds = %39, %148
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 135
  br i1 %151, label %152, label %180

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 140
  br i1 %154, label %155, label %180

155:                                              ; preds = %152
  %156 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %157 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %162 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %163, 10
  %165 = mul nsw i32 %164, 10
  %166 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %167 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %179

168:                                              ; preds = %155
  %169 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %170 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sub nsw i32 8, %172
  %174 = sdiv i32 %173, 10
  %175 = sub nsw i32 0, %174
  %176 = mul nsw i32 %175, 10
  %177 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %178 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %168, %160
  br label %180

180:                                              ; preds = %179, %152, %149
  br label %181

181:                                              ; preds = %39, %180
  %182 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %183 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %39, %181
  %185 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %186 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sdiv i32 %188, 3
  %190 = mul nsw i32 3, %189
  %191 = add nsw i32 %190, 1
  %192 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %193 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %39, %184
  %195 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %196 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %195, i32 0, i32 2
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %39, %194
  %198 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %199 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %198, i32 0, i32 5
  store i32 0, i32* %199, align 4
  store i32 1, i32* %11, align 4
  br label %200

200:                                              ; preds = %39, %197
  %201 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %202 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %201, i32 0, i32 4
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %39, %200
  %204 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %205 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %204, i32 0, i32 3
  store i32 0, i32* %205, align 4
  br label %206

206:                                              ; preds = %39, %203
  store i32 0, i32* %13, align 4
  br label %219

207:                                              ; preds = %39
  %208 = load i32, i32* %13, align 4
  %209 = sdiv i32 %208, 1000
  %210 = mul nsw i32 %209, 1000
  store i32 %210, i32* %13, align 4
  br label %219

211:                                              ; preds = %39
  br label %219

212:                                              ; preds = %39
  %213 = load i32, i32* @ERROR, align 4
  %214 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %215 = call i32 @errcode(i32 %214)
  %216 = load i8*, i8** %12, align 8
  %217 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %216)
  %218 = call i32 @ereport(i32 %213, i32 %217)
  store i64 0, i64* %7, align 8
  br label %219

219:                                              ; preds = %212, %211, %207, %206, %78
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @DetermineTimeZoneOffset(%struct.pg_tm* %223, i32* %224)
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %222, %219
  %227 = load %struct.pg_tm*, %struct.pg_tm** %15, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i64 @tm2timestamp(%struct.pg_tm* %227, i32 %228, i32* %8, i64* %7)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32, i32* @ERROR, align 4
  %233 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %234 = call i32 @errcode(i32 %233)
  %235 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %236 = call i32 @ereport(i32 %232, i32 %235)
  br label %237

237:                                              ; preds = %231, %226
  br label %245

238:                                              ; preds = %3
  %239 = load i32, i32* @ERROR, align 4
  %240 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %241 = call i32 @errcode(i32 %240)
  %242 = load i8*, i8** %12, align 8
  %243 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %242)
  %244 = call i32 @ereport(i32 %239, i32 %243)
  store i64 0, i64* %7, align 8
  br label %245

245:                                              ; preds = %238, %237
  %246 = load i64, i64* %7, align 8
  ret i64 %246
}

declare dso_local i8* @downcase_truncate_identifier(i32, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @DecodeUnits(i32, i8*, i32*) #1

declare dso_local i64 @timestamp2tm(i64, i32*, %struct.pg_tm*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @date2isoweek(i32, i32, i32) #1

declare dso_local i32 @isoweek2date(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DetermineTimeZoneOffset(%struct.pg_tm*, i32*) #1

declare dso_local i64 @tm2timestamp(%struct.pg_tm*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
