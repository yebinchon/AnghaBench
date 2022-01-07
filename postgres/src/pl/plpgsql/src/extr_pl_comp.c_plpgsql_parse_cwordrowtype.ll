; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_cwordrowtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_parse_cwordrowtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plpgsql_compile_tmp_cxt = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plpgsql_parse_cwordrowtype(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @list_length(i32* %7)
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @plpgsql_compile_tmp_cxt, align 4
  %13 = call i32 @MemoryContextSwitchTo(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @linitial(i32* %14)
  %16 = call i32 @strVal(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lsecond(i32* %17)
  %19 = call i32 @strVal(i32 %18)
  %20 = call i32* @makeRangeVar(i32 %16, i32 %19, i32 -1)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @NoLock, align 4
  %23 = call i32 @RangeVarGetRelid(i32* %21, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MemoryContextSwitchTo(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @get_rel_type_id(i32 %26)
  %28 = load i32, i32* @InvalidOid, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @makeTypeNameFromNameList(i32* %29)
  %31 = call i32* @plpgsql_build_datatype(i32 %27, i32 -1, i32 %28, i32 %30)
  store i32* %31, i32** %2, align 8
  br label %32

32:                                               ; preds = %11, %10
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @makeRangeVar(i32, i32, i32) #1

declare dso_local i32 @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i32 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32* @plpgsql_build_datatype(i32, i32, i32, i32) #1

declare dso_local i32 @get_rel_type_id(i32) #1

declare dso_local i32 @makeTypeNameFromNameList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
