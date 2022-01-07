; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parser_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parser_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseState = type { i8*, i32, i32, i32 }

@plpgsql_pre_column_ref = common dso_local global i32 0, align 4
@plpgsql_post_column_ref = common dso_local global i32 0, align 4
@plpgsql_param_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plpgsql_parser_setup(%struct.ParseState* %0, i32* %1) #0 {
  %3 = alloca %struct.ParseState*, align 8
  %4 = alloca i32*, align 8
  store %struct.ParseState* %0, %struct.ParseState** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @plpgsql_pre_column_ref, align 4
  %6 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %7 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @plpgsql_post_column_ref, align 4
  %9 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %10 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @plpgsql_param_ref, align 4
  %12 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %13 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load %struct.ParseState*, %struct.ParseState** %3, align 8
  %17 = getelementptr inbounds %struct.ParseState, %struct.ParseState* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
