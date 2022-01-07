; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_JsonEncodeDateTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_JsonEncodeDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i32 }

@MAXDATELEN = common dso_local global i64 0, align 8
@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8
@USE_XSD_DATES = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"timestamp out of range\00", align 1
@USECS_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unknown jsonb value datetime type oid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @JsonEncodeDateTime(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pg_tm, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pg_tm, align 4
  %14 = alloca %struct.pg_tm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.pg_tm, align 4
  %18 = alloca %struct.pg_tm*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.pg_tm, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.pg_tm, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i64, i64* @MAXDATELEN, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i8* @palloc(i64 %33)
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %31, %4
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %166 [
    i32 132, label %37
    i32 131, label %59
    i32 128, label %70
    i32 130, label %82
    i32 129, label %109
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @DatumGetDateADT(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @DATE_NOT_FINITE(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @EncodeSpecialDate(i64 %44, i8* %45)
  br label %58

47:                                               ; preds = %37
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %50 = add nsw i64 %48, %49
  %51 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %11, i32 0, i32 2
  %53 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %11, i32 0, i32 1
  %54 = call i32 @j2date(i64 %50, i32* %51, i32* %52, i32* %53)
  %55 = load i32, i32* @USE_XSD_DATES, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @EncodeDateOnly(%struct.pg_tm* %11, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %47, %43
  br label %170

59:                                               ; preds = %35
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @DatumGetTimeADT(i32 %60)
  store i32 %61, i32* %12, align 4
  store %struct.pg_tm* %13, %struct.pg_tm** %14, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.pg_tm*, %struct.pg_tm** %14, align 8
  %64 = call i32 @time2tm(i32 %62, %struct.pg_tm* %63, i32* %15)
  %65 = load %struct.pg_tm*, %struct.pg_tm** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @USE_XSD_DATES, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @EncodeTimeOnly(%struct.pg_tm* %65, i32 %66, i32 0, i32 0, i32 %67, i8* %68)
  br label %170

70:                                               ; preds = %35
  %71 = load i32, i32* %7, align 4
  %72 = call i32* @DatumGetTimeTzADTP(i32 %71)
  store i32* %72, i32** %16, align 8
  store %struct.pg_tm* %17, %struct.pg_tm** %18, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load %struct.pg_tm*, %struct.pg_tm** %18, align 8
  %75 = call i32 @timetz2tm(i32* %73, %struct.pg_tm* %74, i32* %19, i32* %20)
  %76 = load %struct.pg_tm*, %struct.pg_tm** %18, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* @USE_XSD_DATES, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @EncodeTimeOnly(%struct.pg_tm* %76, i32 %77, i32 1, i32 %78, i32 %79, i8* %80)
  br label %170

82:                                               ; preds = %35
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @DatumGetTimestamp(i32 %83)
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = call i32 @TIMESTAMP_NOT_FINITE(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %21, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @EncodeSpecialTimestamp(i32 %89, i8* %90)
  br label %108

92:                                               ; preds = %82
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @timestamp2tm(i32 %93, i32* null, %struct.pg_tm* %22, i32* %23, i8** null, i32* null)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* @USE_XSD_DATES, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @EncodeDateTime(%struct.pg_tm* %22, i32 %97, i32 0, i32 0, i8* null, i32 %98, i8* %99)
  br label %107

101:                                              ; preds = %92
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %106 = call i32 @ereport(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  br label %108

108:                                              ; preds = %107, %88
  br label %170

109:                                              ; preds = %35
  store i8* null, i8** %28, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @DatumGetTimestampTz(i32 %110)
  store i32 %111, i32* %24, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %26, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* @USECS_PER_SEC, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %24, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %24, align 4
  br label %122

122:                                              ; preds = %114, %109
  %123 = load i32, i32* %24, align 4
  %124 = call i32 @TIMESTAMP_NOT_FINITE(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %24, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @EncodeSpecialTimestamp(i32 %127, i8* %128)
  br label %165

130:                                              ; preds = %122
  %131 = load i32, i32* %24, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %136

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %134
  %137 = phi i32* [ null, %134 ], [ %26, %135 ]
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %142

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %140
  %143 = phi i8** [ null, %140 ], [ %28, %141 ]
  %144 = call i32 @timestamp2tm(i32 %131, i32* %137, %struct.pg_tm* %25, i32* %27, i8** %143, i32* null)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i32*, i32** %9, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %25, i32 0, i32 0
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32, i32* %27, align 4
  %153 = load i32, i32* %26, align 4
  %154 = load i8*, i8** %28, align 8
  %155 = load i32, i32* @USE_XSD_DATES, align 4
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @EncodeDateTime(%struct.pg_tm* %25, i32 %152, i32 1, i32 %153, i8* %154, i32 %155, i8* %156)
  br label %164

158:                                              ; preds = %142
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %163 = call i32 @ereport(i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %158, %151
  br label %165

165:                                              ; preds = %164, %126
  br label %170

166:                                              ; preds = %35
  %167 = load i32, i32* @ERROR, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @elog(i32 %167, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  store i8* null, i8** %5, align 8
  br label %172

170:                                              ; preds = %165, %108, %70, %59, %58
  %171 = load i8*, i8** %6, align 8
  store i8* %171, i8** %5, align 8
  br label %172

172:                                              ; preds = %170, %166
  %173 = load i8*, i8** %5, align 8
  ret i8* %173
}

declare dso_local i8* @palloc(i64) #1

declare dso_local i64 @DatumGetDateADT(i32) #1

declare dso_local i32 @DATE_NOT_FINITE(i64) #1

declare dso_local i32 @EncodeSpecialDate(i64, i8*) #1

declare dso_local i32 @j2date(i64, i32*, i32*, i32*) #1

declare dso_local i32 @EncodeDateOnly(%struct.pg_tm*, i32, i8*) #1

declare dso_local i32 @DatumGetTimeADT(i32) #1

declare dso_local i32 @time2tm(i32, %struct.pg_tm*, i32*) #1

declare dso_local i32 @EncodeTimeOnly(%struct.pg_tm*, i32, i32, i32, i32, i8*) #1

declare dso_local i32* @DatumGetTimeTzADTP(i32) #1

declare dso_local i32 @timetz2tm(i32*, %struct.pg_tm*, i32*, i32*) #1

declare dso_local i32 @DatumGetTimestamp(i32) #1

declare dso_local i32 @TIMESTAMP_NOT_FINITE(i32) #1

declare dso_local i32 @EncodeSpecialTimestamp(i32, i8*) #1

declare dso_local i32 @timestamp2tm(i32, i32*, %struct.pg_tm*, i32*, i8**, i32*) #1

declare dso_local i32 @EncodeDateTime(%struct.pg_tm*, i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
