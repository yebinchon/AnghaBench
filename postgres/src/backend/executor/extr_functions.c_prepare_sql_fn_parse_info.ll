; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_functions.c_prepare_sql_fn_parse_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_functions.c_prepare_sql_fn_parse_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64*, i32*, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"could not determine actual type of argument declared %s\00", align 1
@PROCNAMEARGSNSP = common dso_local global i32 0, align 4
@Anum_pg_proc_proargnames = common dso_local global i32 0, align 4
@Anum_pg_proc_proargmodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @prepare_sql_fn_parse_info(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GETSTRUCT(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = call i64 @palloc0(i32 4)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NameStr(i32 %25)
  %27 = call i32 @pstrdup(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %103

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @palloc(i32 %44)
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %10, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i64* %47, i32 %51, i32 %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %96, %40
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @IsPolymorphicType(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %61
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @get_call_expr_argtype(i32* %71, i32 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @InvalidOid, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load i64*, i64** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @format_type_be(i64 %85)
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = call i32 @ereport(i32 %78, i32 %87)
  br label %89

89:                                               ; preds = %77, %70
  %90 = load i64, i64* %12, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %61
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %57

99:                                               ; preds = %57
  %100 = load i64*, i64** %10, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i64* %100, i64** %102, align 8
  br label %103

103:                                              ; preds = %99, %3
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %103
  %107 = load i32, i32* @PROCNAMEARGSNSP, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @Anum_pg_proc_proargnames, align 4
  %110 = call i32 @SysCacheGetAttr(i32 %107, i32 %108, i32 %109, i32* %16)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 @PointerGetDatum(i32* null)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %113, %106
  %116 = load i32, i32* @PROCNAMEARGSNSP, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @Anum_pg_proc_proargmodes, align 4
  %119 = call i32 @SysCacheGetAttr(i32 %116, i32 %117, i32 %118, i32* %16)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 @PointerGetDatum(i32* null)
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %122, %115
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = call i32 @get_func_input_arg_names(i32 %125, i32 %126, i32** %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %133, %124
  br label %140

137:                                              ; preds = %103
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %137, %136
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %141
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i64 @IsPolymorphicType(i64) #1

declare dso_local i64 @get_call_expr_argtype(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @get_func_input_arg_names(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
