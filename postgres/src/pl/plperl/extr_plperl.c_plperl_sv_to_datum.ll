; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_sv_to_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_sv_to_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@VOIDOID = common dso_local global i64 0, align 8
@current_call_data = common dso_local global %struct.TYPE_11__* null, align 8
@SVt_PVHV = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot convert Perl hash to non-composite type %s\00", align 1
@TYPEFUNC_OTHER = common dso_local global i64 0, align 8
@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@TYPEFUNC_COMPOSITE_DOMAIN = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"function returning record called in context that cannot accept type record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i64, i32*, i64, i32*)* @plperl_sv_to_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plperl_sv_to_datum(i32* %0, i64 %1, i32 %2, i64 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = call i32 (...) @check_stack_depth()
  %26 = load i32*, i32** %15, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %7
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @SvOK(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @VOIDOID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33, %29, %7
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @_sv_to_datum_finfo(i64 %41, i32* %16, i64* %14)
  store i32* %16, i32** %13, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %15, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @InputFunctionCall(i32* %45, i8* null, i64 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %184

49:                                               ; preds = %33
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_call_data, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_call_data, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @get_transform_tosql(i64 %50, i32 %55, i32 %60)
  store i64 %61, i64* %17, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load i64, i64* %17, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @PointerGetDatum(i32* %65)
  %67 = call i32 @OidFunctionCall1(i64 %64, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %184

68:                                               ; preds = %49
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @SvROK(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %167

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* @get_perl_array_ref(i32* %73)
  store i32* %74, i32** %18, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %18, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @plperl_array_to_datum(i32* %78, i64 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  br label %184

82:                                               ; preds = %72
  %83 = load i32*, i32** %9, align 8
  %84 = call i32* @SvRV(i32* %83)
  %85 = call i64 @SvTYPE(i32* %84)
  %86 = load i64, i64* @SVt_PVHV, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %156

88:                                               ; preds = %82
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @type_is_rowtype(i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @format_type_be(i64 %96)
  %98 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = call i32 @ereport(i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %92, %88
  %101 = load i64, i64* %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call %struct.TYPE_10__* @lookup_rowtype_tupdesc_domain(i64 %101, i32 %102, i32 1)
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %20, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %21, align 4
  br label %142

113:                                              ; preds = %100
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @get_call_result_type(i64 %117, i64* %10, %struct.TYPE_10__** %20)
  store i64 %118, i64* %22, align 8
  br label %121

119:                                              ; preds = %113
  %120 = load i64, i64* @TYPEFUNC_OTHER, align 8
  store i64 %120, i64* %22, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* @TYPEFUNC_COMPOSITE_DOMAIN, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %129, %125, %121
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %137 = call i32 @Assert(%struct.TYPE_10__* %136)
  %138 = load i64, i64* %22, align 8
  %139 = load i64, i64* @TYPEFUNC_COMPOSITE_DOMAIN, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %21, align 4
  br label %142

142:                                              ; preds = %135, %106
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %145 = call i32 @plperl_hash_to_datum(i32* %143, %struct.TYPE_10__* %144)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* %19, align 4
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @domain_check(i32 %149, i32 0, i64 %150, i32* null, i32* null)
  br label %152

152:                                              ; preds = %148, %142
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %154 = call i32 @ReleaseTupleDesc(%struct.TYPE_10__* %153)
  %155 = load i32, i32* %19, align 4
  store i32 %155, i32* %8, align 4
  br label %184

156:                                              ; preds = %82
  br label %157

157:                                              ; preds = %156
  %158 = load i32*, i32** %9, align 8
  %159 = call i32* @SvRV(i32* %158)
  %160 = load i64, i64* %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i64, i64* %12, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = load i64, i64* %14, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @plperl_sv_to_datum(i32* %159, i64 %160, i32 %161, i64 %162, i32* %163, i64 %164, i32* %165)
  store i32 %166, i32* %8, align 4
  br label %184

167:                                              ; preds = %68
  %168 = load i32*, i32** %9, align 8
  %169 = call i8* @sv2cstr(i32* %168)
  store i8* %169, i8** %24, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @_sv_to_datum_finfo(i64 %173, i32* %16, i64* %14)
  store i32* %16, i32** %13, align 8
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32*, i32** %13, align 8
  %177 = load i8*, i8** %24, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @InputFunctionCall(i32* %176, i8* %177, i64 %178, i32 %179)
  store i32 %180, i32* %23, align 4
  %181 = load i8*, i8** %24, align 8
  %182 = call i32 @pfree(i8* %181)
  %183 = load i32, i32* %23, align 4
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %175, %157, %152, %77, %63, %43
  %185 = load i32, i32* %8, align 4
  ret i32 %185
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @SvOK(i32*) #1

declare dso_local i32 @_sv_to_datum_finfo(i64, i32*, i64*) #1

declare dso_local i32 @InputFunctionCall(i32*, i8*, i64, i32) #1

declare dso_local i64 @get_transform_tosql(i64, i32, i32) #1

declare dso_local i32 @OidFunctionCall1(i64, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i64 @SvROK(i32*) #1

declare dso_local i32* @get_perl_array_ref(i32*) #1

declare dso_local i32 @plperl_array_to_datum(i32*, i64, i32) #1

declare dso_local i64 @SvTYPE(i32*) #1

declare dso_local i32* @SvRV(i32*) #1

declare dso_local i32 @type_is_rowtype(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local %struct.TYPE_10__* @lookup_rowtype_tupdesc_domain(i64, i32, i32) #1

declare dso_local i64 @get_call_result_type(i64, i64*, %struct.TYPE_10__**) #1

declare dso_local i32 @Assert(%struct.TYPE_10__*) #1

declare dso_local i32 @plperl_hash_to_datum(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @domain_check(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @ReleaseTupleDesc(%struct.TYPE_10__*) #1

declare dso_local i8* @sv2cstr(i32*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
