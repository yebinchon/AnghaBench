; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_return_next_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_return_next_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@current_call_data = common dso_local global %struct.TYPE_16__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot use return_next in a non-SETOF function\00", align 1
@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@TYPEFUNC_COMPOSITE_DOMAIN = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"function returning record called in context that cannot accept type record\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"expected single-column result descriptor for non-composite SETOF result\00", align 1
@SFRM_Materialize_Random = common dso_local global i32 0, align 4
@work_mem = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"PL/Perl return_next temporary cxt\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@SVt_PVHV = common dso_local global i64 0, align 8
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"SETOF-composite-returning PL/Perl function must call return_next with reference to hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @plperl_return_next_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plperl_return_next_internal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca [1 x i32], align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %225

16:                                               ; preds = %1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %3, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %4, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %5, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %16
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %116, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %42
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = call i64 @get_call_result_type(%struct.TYPE_15__* %55, i32* %9, %struct.TYPE_13__** %7)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @TYPEFUNC_COMPOSITE_DOMAIN, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = call i32 @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @ereport(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %60, %54
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @TYPEFUNC_COMPOSITE_DOMAIN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %94

79:                                               ; preds = %42
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %7, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = icmp eq %struct.TYPE_13__* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %79
  %91 = load i32, i32* @ERROR, align 4
  %92 = call i32 @elog(i32 %91, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @MemoryContextSwitchTo(i64 %99)
  store i64 %100, i64* %6, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = call i64 @CreateTupleDescCopy(%struct.TYPE_13__* %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SFRM_Materialize_Random, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @work_mem, align 4
  %111 = call i64 @tuplestore_begin_heap(i32 %109, i32 0, i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @MemoryContextSwitchTo(i64 %114)
  br label %116

116:                                              ; preds = %94, %37
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @CurrentMemoryContext, align 4
  %123 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %124 = call i64 @AllocSetContextCreate(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @MemoryContextSwitchTo(i64 %130)
  store i64 %131, i64* %6, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %127
  %137 = load i32*, i32** %2, align 8
  %138 = call i64 @SvOK(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load i32*, i32** %2, align 8
  %142 = call i64 @SvROK(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32*, i32** %2, align 8
  %146 = call i64 @SvRV(i32* %145)
  %147 = call i64 @SvTYPE(i64 %146)
  %148 = load i64, i64* @SVt_PVHV, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %144, %140, %136
  %151 = load i32, i32* @ERROR, align 4
  %152 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %153 = call i32 @errcode(i32 %152)
  %154 = call i32 @errmsg(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0))
  %155 = call i32 @ereport(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %144
  %157 = load i32*, i32** %2, align 8
  %158 = call i64 @SvRV(i32* %157)
  %159 = inttoptr i64 %158 to i32*
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @plperl_build_tuple_result(i32* %159, i64 %162)
  store i32 %163, i32* %10, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @OidIsValid(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %156
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @HeapTupleGetDatum(i32 %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @domain_check(i32 %171, i32 0, i32 %174, i32* %176, i64 %181)
  br label %183

183:                                              ; preds = %169, %156
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @tuplestore_puttuple(i64 %186, i32 %187)
  br label %218

189:                                              ; preds = %127
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %217

194:                                              ; preds = %189
  %195 = load i32*, i32** %2, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %206 = call i32 @plperl_sv_to_datum(i32* %195, i64 %198, i32 -1, %struct.TYPE_15__* %199, i32* %201, i32 %204, i32* %205)
  %207 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 %206, i32* %207, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %215 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %216 = call i32 @tuplestore_putvalues(i64 %210, i64 %213, i32* %214, i32* %215)
  br label %217

217:                                              ; preds = %194, %189
  br label %218

218:                                              ; preds = %217, %183
  %219 = load i64, i64* %6, align 8
  %220 = call i64 @MemoryContextSwitchTo(i64 %219)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current_call_data, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @MemoryContextReset(i64 %223)
  br label %225

225:                                              ; preds = %218, %15
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @get_call_result_type(%struct.TYPE_15__*, i32*, %struct.TYPE_13__**) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @MemoryContextSwitchTo(i64) #1

declare dso_local i64 @CreateTupleDescCopy(%struct.TYPE_13__*) #1

declare dso_local i64 @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i64 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @SvOK(i32*) #1

declare dso_local i64 @SvROK(i32*) #1

declare dso_local i64 @SvTYPE(i64) #1

declare dso_local i64 @SvRV(i32*) #1

declare dso_local i32 @plperl_build_tuple_result(i32*, i64) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @domain_check(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

declare dso_local i32 @tuplestore_puttuple(i64, i32) #1

declare dso_local i32 @plperl_sv_to_datum(i32*, i64, i32, %struct.TYPE_15__*, i32*, i32, i32*) #1

declare dso_local i32 @tuplestore_putvalues(i64, i64, i32*, i32*) #1

declare dso_local i32 @MemoryContextReset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
