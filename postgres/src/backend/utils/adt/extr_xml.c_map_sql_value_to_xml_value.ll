; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_map_sql_value_to_xml_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_xml.c_map_sql_value_to_xml_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.pg_tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"<element>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"</element>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@MAXDATELEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"date out of range\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"XML does not support infinite date values.\00", align 1
@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8
@USE_XSD_DATES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"timestamp out of range\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"XML does not support infinite timestamp values.\00", align 1
@XMLOID = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@PG_XML_STRICTNESS_ALL = common dso_local global i32 0, align 4
@XMLBINARY_BASE64 = common dso_local global i32 0, align 4
@xmlbinary = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @map_sql_value_to_xml_value(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.pg_tm, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.pg_tm, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.pg_tm, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @type_is_array_domain(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @DatumGetArrayTypeP(i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ARR_ELEMTYPE(i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @get_typlenbyvalalign(i32 %45, i32* %10, i32* %11, i8* %12)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8, i8* %12, align 1
  %52 = call i32 @deconstruct_array(i32* %47, i32 %48, i32 %49, i32 %50, i8 signext %51, i32** %14, i32** %15, i32* %13)
  %53 = call i32 @initStringInfo(%struct.TYPE_8__* %16)
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %77, %40
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %77

66:                                               ; preds = %58
  %67 = call i32 @appendStringInfoString(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @map_sql_value_to_xml_value(i32 %72, i32 %73, i32 1)
  %75 = call i32 @appendStringInfoString(%struct.TYPE_8__* %16, i8* %74)
  %76 = call i32 @appendStringInfoString(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %66, %65
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %54

80:                                               ; preds = %54
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @pfree(i32* %81)
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @pfree(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %4, align 8
  br label %218

87:                                               ; preds = %3
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @getBaseType(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  switch i32 %90, label %201 [
    i32 132, label %91
    i32 130, label %97
    i32 129, label %127
    i32 128, label %163
  ]

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @DatumGetBool(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %218

96:                                               ; preds = %91
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %218

97:                                               ; preds = %87
  %98 = load i32, i32* @MAXDATELEN, align 4
  %99 = add nsw i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = call i8* @llvm.stacksave()
  store i8* %101, i8** %23, align 8
  %102 = alloca i8, i64 %100, align 16
  store i64 %100, i64* %24, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @DatumGetDateADT(i32 %103)
  store i64 %104, i64* %21, align 8
  %105 = load i64, i64* %21, align 8
  %106 = call i32 @DATE_NOT_FINITE(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = call i32 @errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %113 = call i32 @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %114 = call i32 @ereport(i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %108, %97
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %118 = add nsw i64 %116, %117
  %119 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %22, i32 0, i32 2
  %120 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %22, i32 0, i32 1
  %121 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %22, i32 0, i32 0
  %122 = call i32 @j2date(i64 %118, i32* %119, i32* %120, i32* %121)
  %123 = load i32, i32* @USE_XSD_DATES, align 4
  %124 = call i32 @EncodeDateOnly(%struct.pg_tm* %22, i32 %123, i8* %102)
  %125 = call i8* @pstrdup(i8* %102)
  store i8* %125, i8** %4, align 8
  %126 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %126)
  br label %218

127:                                              ; preds = %87
  %128 = load i32, i32* @MAXDATELEN, align 4
  %129 = add nsw i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = call i8* @llvm.stacksave()
  store i8* %131, i8** %28, align 8
  %132 = alloca i8, i64 %130, align 16
  store i64 %130, i64* %29, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @DatumGetTimestamp(i32 %133)
  store i32 %134, i32* %25, align 4
  %135 = load i32, i32* %25, align 4
  %136 = call i32 @TIMESTAMP_NOT_FINITE(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %127
  %139 = load i32, i32* @ERROR, align 4
  %140 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %141 = call i32 @errcode(i32 %140)
  %142 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %143 = call i32 @errdetail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %144 = call i32 @ereport(i32 %139, i32 %143)
  br label %160

145:                                              ; preds = %127
  %146 = load i32, i32* %25, align 4
  %147 = call i32 @timestamp2tm(i32 %146, i32* null, %struct.pg_tm* %26, i32* %27, i8** null, i32* null)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* @USE_XSD_DATES, align 4
  %152 = call i32 @EncodeDateTime(%struct.pg_tm* %26, i32 %150, i32 0, i32 0, i8* null, i32 %151, i8* %132)
  br label %159

153:                                              ; preds = %145
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %156 = call i32 @errcode(i32 %155)
  %157 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %158 = call i32 @ereport(i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %149
  br label %160

160:                                              ; preds = %159, %138
  %161 = call i8* @pstrdup(i8* %132)
  store i8* %161, i8** %4, align 8
  %162 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %162)
  br label %218

163:                                              ; preds = %87
  store i8* null, i8** %34, align 8
  %164 = load i32, i32* @MAXDATELEN, align 4
  %165 = add nsw i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = call i8* @llvm.stacksave()
  store i8* %167, i8** %35, align 8
  %168 = alloca i8, i64 %166, align 16
  store i64 %166, i64* %36, align 8
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @DatumGetTimestamp(i32 %169)
  store i32 %170, i32* %30, align 4
  %171 = load i32, i32* %30, align 4
  %172 = call i32 @TIMESTAMP_NOT_FINITE(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %163
  %175 = load i32, i32* @ERROR, align 4
  %176 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %177 = call i32 @errcode(i32 %176)
  %178 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %179 = call i32 @errdetail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %180 = call i32 @ereport(i32 %175, i32 %179)
  br label %198

181:                                              ; preds = %163
  %182 = load i32, i32* %30, align 4
  %183 = call i32 @timestamp2tm(i32 %182, i32* %32, %struct.pg_tm* %31, i32* %33, i8** %34, i32* null)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load i32, i32* %33, align 4
  %187 = load i32, i32* %32, align 4
  %188 = load i8*, i8** %34, align 8
  %189 = load i32, i32* @USE_XSD_DATES, align 4
  %190 = call i32 @EncodeDateTime(%struct.pg_tm* %31, i32 %186, i32 1, i32 %187, i8* %188, i32 %189, i8* %168)
  br label %197

191:                                              ; preds = %181
  %192 = load i32, i32* @ERROR, align 4
  %193 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %194 = call i32 @errcode(i32 %193)
  %195 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %196 = call i32 @ereport(i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %191, %185
  br label %198

198:                                              ; preds = %197, %174
  %199 = call i8* @pstrdup(i8* %168)
  store i8* %199, i8** %4, align 8
  %200 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %200)
  br label %218

201:                                              ; preds = %87
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @getTypeOutputInfo(i32 %202, i32* %18, i32* %19)
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i8* @OidOutputFunctionCall(i32 %204, i32 %205)
  store i8* %206, i8** %20, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @XMLOID, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %213, label %210

210:                                              ; preds = %201
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210, %201
  %214 = load i8*, i8** %20, align 8
  store i8* %214, i8** %4, align 8
  br label %218

215:                                              ; preds = %210
  %216 = load i8*, i8** %20, align 8
  %217 = call i8* @escape_xml(i8* %216)
  store i8* %217, i8** %4, align 8
  br label %218

218:                                              ; preds = %215, %213, %198, %160, %115, %96, %95, %80
  %219 = load i8*, i8** %4, align 8
  ret i8* %219
}

declare dso_local i64 @type_is_array_domain(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @get_typlenbyvalalign(i32, i32*, i32*, i8*) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @getBaseType(i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @DatumGetDateADT(i32) #1

declare dso_local i32 @DATE_NOT_FINITE(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @j2date(i64, i32*, i32*, i32*) #1

declare dso_local i32 @EncodeDateOnly(%struct.pg_tm*, i32, i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @DatumGetTimestamp(i32) #1

declare dso_local i32 @TIMESTAMP_NOT_FINITE(i32) #1

declare dso_local i32 @timestamp2tm(i32, i32*, %struct.pg_tm*, i32*, i8**, i32*) #1

declare dso_local i32 @EncodeDateTime(%struct.pg_tm*, i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i8* @escape_xml(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
