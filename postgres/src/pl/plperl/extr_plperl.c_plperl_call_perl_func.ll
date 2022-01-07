; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_call_perl_func.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_call_perl_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32*, i64* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }

@dTHX = common dso_local global i32 0, align 4
@dSP = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@SAVETMPS = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@sp = common dso_local global i32 0, align 4
@PL_sv_undef = common dso_local global i32 0, align 4
@current_call_data = common dso_local global %struct.TYPE_14__* null, align 8
@PUTBACK = common dso_local global i32 0, align 4
@G_SCALAR = common dso_local global i32 0, align 4
@G_EVAL = common dso_local global i32 0, align 4
@SPAGAIN = common dso_local global i32 0, align 4
@FREETMPS = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"didn't get a return item from function\00", align 1
@ERRSV = common dso_local global i32 0, align 4
@POPs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_13__*)* @plperl_call_perl_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_call_perl_func(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %14 = load i32, i32* @dTHX, align 4
  %15 = load i32, i32* @dSP, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @ENTER, align 4
  %17 = load i32, i32* @SAVETMPS, align 4
  %18 = load i32, i32* @SP, align 4
  %19 = call i32 @PUSHMARK(i32 %18)
  %20 = load i32, i32* @sp, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @EXTEND(i32 %20, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @get_func_signature(i64 %36, i32** %8, i32* %9)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %171, %38
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %174

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = call i32 @PUSHs(i32* @PL_sv_undef)
  br label %170

64:                                               ; preds = %52
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32* @plperl_hash_from_datum(i32 %81)
  store i32* %82, i32** %10, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32* @sv_2mortal(i32* %83)
  %85 = call i32 @PUSHs(i32* %84)
  br label %169

86:                                               ; preds = %64
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @OidIsValid(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %86
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32* @plperl_ref_from_pg_array(i32 %104, i32 %111)
  store i32* %112, i32** %11, align 8
  br label %165

113:                                              ; preds = %86
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_call_data, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current_call_data, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @get_transform_fromsql(i32 %118, i32 %123, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %113
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @OidFunctionCall1(i32 %132, i32 %140)
  %142 = call i64 @DatumGetPointer(i32 %141)
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %11, align 8
  br label %164

144:                                              ; preds = %113
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @OutputFunctionCall(i32* %150, i32 %158)
  store i8* %159, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = call i32* @cstr2sv(i8* %160)
  store i32* %161, i32** %11, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @pfree(i8* %162)
  br label %164

164:                                              ; preds = %144, %131
  br label %165

165:                                              ; preds = %164, %96
  %166 = load i32*, i32** %11, align 8
  %167 = call i32* @sv_2mortal(i32* %166)
  %168 = call i32 @PUSHs(i32* %167)
  br label %169

169:                                              ; preds = %165, %73
  br label %170

170:                                              ; preds = %169, %62
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %46

174:                                              ; preds = %46
  %175 = load i32, i32* @PUTBACK, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @G_SCALAR, align 4
  %180 = load i32, i32* @G_EVAL, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @perl_call_sv(i32 %178, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* @SPAGAIN, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %195

186:                                              ; preds = %174
  %187 = load i32, i32* @PUTBACK, align 4
  %188 = load i32, i32* @FREETMPS, align 4
  %189 = load i32, i32* @LEAVE, align 4
  %190 = load i32, i32* @ERROR, align 4
  %191 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %192 = call i32 @errcode(i32 %191)
  %193 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %194 = call i32 @ereport(i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %186, %174
  %196 = load i32, i32* @ERRSV, align 4
  %197 = call i64 @SvTRUE(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %195
  %200 = load i32, i32* @POPs, align 4
  %201 = load i32, i32* @PUTBACK, align 4
  %202 = load i32, i32* @FREETMPS, align 4
  %203 = load i32, i32* @LEAVE, align 4
  %204 = load i32, i32* @ERROR, align 4
  %205 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %206 = call i32 @errcode(i32 %205)
  %207 = load i32, i32* @ERRSV, align 4
  %208 = call i32 @sv2cstr(i32 %207)
  %209 = call i32 @strip_trailing_ws(i32 %208)
  %210 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %209)
  %211 = call i32 @ereport(i32 %204, i32 %210)
  br label %212

212:                                              ; preds = %199, %195
  %213 = load i32, i32* @POPs, align 4
  %214 = call i32* @newSVsv(i32 %213)
  store i32* %214, i32** %5, align 8
  %215 = load i32, i32* @PUTBACK, align 4
  %216 = load i32, i32* @FREETMPS, align 4
  %217 = load i32, i32* @LEAVE, align 4
  %218 = load i32*, i32** %5, align 8
  ret i32* %218
}

declare dso_local i32 @PUSHMARK(i32) #1

declare dso_local i32 @EXTEND(i32, i32) #1

declare dso_local i32 @get_func_signature(i64, i32**, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PUSHs(i32*) #1

declare dso_local i32* @plperl_hash_from_datum(i32) #1

declare dso_local i32* @sv_2mortal(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32* @plperl_ref_from_pg_array(i32, i32) #1

declare dso_local i32 @get_transform_fromsql(i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @OidFunctionCall1(i32, i32) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i32* @cstr2sv(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @perl_call_sv(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @SvTRUE(i32) #1

declare dso_local i32 @strip_trailing_ws(i32) #1

declare dso_local i32 @sv2cstr(i32) #1

declare dso_local i32* @newSVsv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
