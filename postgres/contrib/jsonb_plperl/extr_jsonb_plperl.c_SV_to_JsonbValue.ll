; ModuleID = '/home/carl/AnghaBench/postgres/contrib/jsonb_plperl/extr_jsonb_plperl.c_SV_to_JsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/jsonb_plperl/extr_jsonb_plperl.c_SV_to_JsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@dTHX = common dso_local global i32 0, align 4
@jbvNull = common dso_local global i8* null, align 8
@jbvNumeric = common dso_local global i8* null, align 8
@numeric_in = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@int8_numeric = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot convert infinity to jsonb\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot convert NaN to jsonb\00", align 1
@float8_numeric = common dso_local global i32 0, align 4
@jbvString = common dso_local global i8* null, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot transform this Perl type to jsonb\00", align 1
@WJB_ELEM = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32**, i32)* @SV_to_JsonbValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @SV_to_JsonbValue(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @dTHX, align 4
  br label %13

13:                                               ; preds = %17, %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @SvROK(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @SvRV(i32* %18)
  store i32* %19, i32** %5, align 8
  br label %13

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @SvTYPE(i32* %21)
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32**, i32*** %6, align 8
  %26 = call %struct.TYPE_13__* @AV_to_JsonbValue(i32* %24, i32** %25)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %4, align 8
  br label %160

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = load i32**, i32*** %6, align 8
  %30 = call %struct.TYPE_13__* @HV_to_JsonbValue(i32* %28, i32** %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %4, align 8
  br label %160

31:                                               ; preds = %20
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @SvOK(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** @jbvNull, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  br label %139

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @SvUOK(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @SvPV_nolen(i32* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** @jbvNumeric, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @numeric_in, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @CStringGetDatum(i8* %48)
  %50 = load i32, i32* @InvalidOid, align 4
  %51 = call i32 @ObjectIdGetDatum(i32 %50)
  %52 = call i32 @Int32GetDatum(i32 -1)
  %53 = call i32 @DirectFunctionCall3(i32 %47, i32 %49, i32 %51, i32 %52)
  %54 = call i8* @DatumGetNumeric(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %138

57:                                               ; preds = %38
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @SvIOK(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @SvIV(i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i8*, i8** @jbvNumeric, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* @int8_numeric, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @Int64GetDatum(i32 %67)
  %69 = call i32 @DirectFunctionCall1(i32 %66, i32 %68)
  %70 = call i8* @DatumGetNumeric(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %137

73:                                               ; preds = %57
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @SvNOK(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = call double @SvNV(i32* %78)
  store double %79, double* %11, align 8
  %80 = load double, double* %11, align 8
  %81 = call i32 @isinf(double %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %86 = call i32 @errcode(i32 %85)
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %88 = call i32 @ereport(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load double, double* %11, align 8
  %91 = call i32 @isnan(double %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %98 = call i32 @ereport(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i8*, i8** @jbvNumeric, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @float8_numeric, align 4
  %103 = load double, double* %11, align 8
  %104 = call i32 @Float8GetDatum(double %103)
  %105 = call i32 @DirectFunctionCall1(i32 %102, i32 %104)
  %106 = call i8* @DatumGetNumeric(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %136

109:                                              ; preds = %73
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @SvPOK(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i8*, i8** @jbvString, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %114, i8** %115, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @sv2cstr(i32* %116)
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @strlen(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %135

129:                                              ; preds = %109
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %130, i32 %133)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %160

135:                                              ; preds = %113
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %61
  br label %138

138:                                              ; preds = %137, %42
  br label %139

139:                                              ; preds = %138, %35
  br label %140

140:                                              ; preds = %139
  %141 = load i32**, i32*** %6, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load i32**, i32*** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @WJB_ELEM, align 4
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @WJB_VALUE, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = call %struct.TYPE_13__* @pushJsonbValue(i32** %145, i32 %153, %struct.TYPE_13__* %8)
  br label %158

155:                                              ; preds = %140
  %156 = call i32 @palloc(i32 24)
  %157 = call %struct.TYPE_13__* @memcpy(i32 %156, %struct.TYPE_13__* %8, i32 24)
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi %struct.TYPE_13__* [ %154, %152 ], [ %157, %155 ]
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %4, align 8
  br label %160

160:                                              ; preds = %158, %129, %27, %23
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %161
}

declare dso_local i64 @SvROK(i32*) #1

declare dso_local i32* @SvRV(i32*) #1

declare dso_local i32 @SvTYPE(i32*) #1

declare dso_local %struct.TYPE_13__* @AV_to_JsonbValue(i32*, i32**) #1

declare dso_local %struct.TYPE_13__* @HV_to_JsonbValue(i32*, i32**) #1

declare dso_local i32 @SvOK(i32*) #1

declare dso_local i32 @SvUOK(i32*) #1

declare dso_local i8* @SvPV_nolen(i32*) #1

declare dso_local i8* @DatumGetNumeric(i32) #1

declare dso_local i32 @DirectFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @SvIOK(i32*) #1

declare dso_local i32 @SvIV(i32*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @SvNOK(i32*) #1

declare dso_local double @SvNV(i32*) #1

declare dso_local i32 @isinf(double) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i32 @Float8GetDatum(double) #1

declare dso_local i32 @SvPOK(i32*) #1

declare dso_local i32 @sv2cstr(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_13__* @pushJsonbValue(i32**, i32, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @memcpy(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
