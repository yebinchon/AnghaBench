; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_param_eval_recfield.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_param_eval_recfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64* }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }

@PLPGSQL_DTYPE_RECFIELD = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"record \22%s\22 has no field \22%s\22\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"type of parameter %d (%s) does not match that when preparing the plan (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_24__*, %struct.TYPE_25__*)* @plpgsql_param_eval_recfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plpgsql_param_eval_recfield(i32* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %7, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br label %34

34:                                               ; preds = %28, %3
  %35 = phi i1 [ false, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %10, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PLPGSQL_DTYPE_RECFIELD, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %11, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %12, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %66 = icmp eq %struct.TYPE_26__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %34
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %70 = call i32 @instantiate_empty_record_variable(%struct.TYPE_23__* %68, %struct.TYPE_22__* %69)
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %12, align 8
  br label %74

74:                                               ; preds = %67, %34
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %74
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 3
  %92 = call i32 @expanded_record_lookup_field(%struct.TYPE_26__* %86, i32 %89, %struct.TYPE_17__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103)
  %105 = call i32 @ereport(i32 %95, i32 %104)
  br label %106

106:                                              ; preds = %94, %85
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %74
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @expanded_record_get_field(%struct.TYPE_26__* %113, i32 %117, i32 %120)
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  store i32 %121, i32* %124, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %128, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %112
  %139 = load i32, i32* @ERROR, align 4
  %140 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %141 = call i32 @errcode(i32 %140)
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @format_type_be(i64 %150)
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @format_type_be(i64 %156)
  %158 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %151, i32 %157)
  %159 = call i32 @ereport(i32 %139, i32 %158)
  br label %160

160:                                              ; preds = %138, %112
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @instantiate_empty_record_variable(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @expanded_record_lookup_field(%struct.TYPE_26__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @expanded_record_get_field(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @format_type_be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
