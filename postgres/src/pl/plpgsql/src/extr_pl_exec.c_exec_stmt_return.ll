; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_return.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64, i8*, %struct.TYPE_16__*, i64, %struct.TYPE_21__**, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32 }

@PLPGSQL_RC_RETURN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"cannot return non-composite value from function returning composite type\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1
@VOIDOID = common dso_local global i64 0, align 8
@PROKIND_PROCEDURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__*)* @exec_stmt_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_return(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PLPGSQL_RC_RETURN, align 4
  store i32 %17, i32* %3, align 4
  br label %196

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  store i8* null, i8** %20, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i64, i64* @InvalidOid, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %28, 0
  br i1 %29, label %30, label %132

30:                                               ; preds = %18
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %33, i64 %36
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %6, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %124 [
    i32 131, label %42
    i32 128, label %47
    i32 130, label %83
    i32 129, label %111
  ]

42:                                               ; preds = %30
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = bitcast %struct.TYPE_21__* %44 to %struct.TYPE_17__*
  %46 = call i32 @plpgsql_fulfill_promise(%struct.TYPE_20__* %43, %struct.TYPE_17__* %45)
  br label %47

47:                                               ; preds = %30, %42
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = bitcast %struct.TYPE_21__* %48 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %7, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %47
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %71, %47
  br label %130

83:                                               ; preds = %30
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = bitcast %struct.TYPE_21__* %84 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %8, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ExpandedRecordIsEmpty(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @ExpandedRecordGetDatum(i32 %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %96, %90, %83
  br label %130

111:                                              ; preds = %30
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = bitcast %struct.TYPE_21__* %112 to i32*
  store i32* %113, i32** %9, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = bitcast i32* %115 to %struct.TYPE_21__*
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = call i32 @exec_eval_datum(%struct.TYPE_20__* %114, %struct.TYPE_21__* %116, i64* %118, i32* %10, i8** %120, i32* %122)
  br label %130

124:                                              ; preds = %30
  %125 = load i32, i32* @ERROR, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @elog(i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %111, %110, %82
  %131 = load i32, i32* @PLPGSQL_RC_RETURN, align 4
  store i32 %131, i32* %3, align 4
  br label %196

132:                                              ; preds = %18
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %172

137:                                              ; preds = %132
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = call i8* @exec_eval_expr(%struct.TYPE_20__* %138, i32* %141, i32* %143, i64* %145, i32* %11)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %137
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @type_is_rowtype(i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* @ERROR, align 4
  %166 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %167 = call i32 @errcode(i32 %166)
  %168 = call i32 @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %169 = call i32 @ereport(i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %164, %158, %153, %137
  %171 = load i32, i32* @PLPGSQL_RC_RETURN, align 4
  store i32 %171, i32* %3, align 4
  br label %196

172:                                              ; preds = %132
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @VOIDOID, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %172
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PROKIND_PROCEDURE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %178
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 3
  store i8* null, i8** %188, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  store i32 0, i32* %190, align 8
  %191 = load i64, i64* @VOIDOID, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %186, %178, %172
  %195 = load i32, i32* @PLPGSQL_RC_RETURN, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %170, %130, %16
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @plpgsql_fulfill_promise(%struct.TYPE_20__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ExpandedRecordIsEmpty(i32) #1

declare dso_local i8* @ExpandedRecordGetDatum(i32) #1

declare dso_local i32 @exec_eval_datum(%struct.TYPE_20__*, %struct.TYPE_21__*, i64*, i32*, i8**, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @exec_eval_expr(%struct.TYPE_20__*, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @type_is_rowtype(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
