; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_param_compile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_param_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_17__, i32*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32*, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@EEOP_PARAM_CALLBACK = common dso_local global i32 0, align 4
@PLPGSQL_DTYPE_VAR = common dso_local global i64 0, align 8
@plpgsql_param_eval_var_ro = common dso_local global i8* null, align 8
@plpgsql_param_eval_var = common dso_local global i8* null, align 8
@PLPGSQL_DTYPE_RECFIELD = common dso_local global i64 0, align 8
@plpgsql_param_eval_recfield = common dso_local global i8* null, align 8
@PLPGSQL_DTYPE_PROMISE = common dso_local global i64 0, align 8
@plpgsql_param_eval_generic_ro = common dso_local global i8* null, align 8
@plpgsql_param_eval_generic = common dso_local global i8* null, align 8
@PLPGSQL_DTYPE_REC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32*, i32*)* @plpgsql_param_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plpgsql_param_compile(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %11, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %12, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br label %36

36:                                               ; preds = %30, %5
  %37 = phi i1 [ false, %5 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %42, i64 %44
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %14, align 8
  %47 = load i32, i32* @EEOP_PARAM_CALLBACK, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32* %51, i32** %52, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PLPGSQL_DTYPE_VAR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %36
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %66 = bitcast %struct.TYPE_23__* %65 to %struct.TYPE_20__*
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i8*, i8** @plpgsql_param_eval_var_ro, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  store i8* %73, i8** %76, align 8
  br label %82

77:                                               ; preds = %64, %58
  %78 = load i8*, i8** @plpgsql_param_eval_var, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  store i8* %78, i8** %81, align 8
  br label %82

82:                                               ; preds = %77, %72
  br label %150

83:                                               ; preds = %36
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PLPGSQL_DTYPE_RECFIELD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i8*, i8** @plpgsql_param_eval_recfield, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  store i8* %90, i8** %93, align 8
  br label %149

94:                                               ; preds = %83
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PLPGSQL_DTYPE_PROMISE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %108 = bitcast %struct.TYPE_23__* %107 to %struct.TYPE_20__*
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i8*, i8** @plpgsql_param_eval_generic_ro, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  store i8* %115, i8** %118, align 8
  br label %124

119:                                              ; preds = %106, %100
  %120 = load i8*, i8** @plpgsql_param_eval_generic, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  store i8* %120, i8** %123, align 8
  br label %124

124:                                              ; preds = %119, %114
  br label %148

125:                                              ; preds = %94
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PLPGSQL_DTYPE_REC, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load i8*, i8** @plpgsql_param_eval_generic_ro, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  store i8* %138, i8** %141, align 8
  br label %147

142:                                              ; preds = %131, %125
  %143 = load i8*, i8** @plpgsql_param_eval_generic, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %124
  br label %149

149:                                              ; preds = %148, %89
  br label %150

150:                                              ; preds = %149, %82
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  store i32* null, i32** %153, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @ExprEvalPushStep(i32* %166, %struct.TYPE_14__* %15)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExprEvalPushStep(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
