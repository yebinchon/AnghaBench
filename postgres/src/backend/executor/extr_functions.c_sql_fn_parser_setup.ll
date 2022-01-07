; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_functions.c_sql_fn_parser_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_functions.c_sql_fn_parser_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseState = type { i8*, i32, i32, i32* }

@sql_fn_post_column_ref = common dso_local global i32 0, align 4
@sql_fn_param_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sql_fn_parser_setup(%struct.ParseState* %0, i64 %1) #0 {
  %3 = alloca %struct.ParseState*, align 8
  %4 = alloca i64, align 8
  store %struct.ParseState* %0, %struct.ParseState** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %6 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %5, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @sql_fn_post_column_ref, align 4
  %8 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %9 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @sql_fn_param_ref, align 4
  %11 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %12 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %16 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
