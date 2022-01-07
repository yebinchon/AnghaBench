; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_main.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_main.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"plpython_version_bitmask\00", align 1
@plpython_version_bitmask = common dso_local global i32 0, align 4
@plpython_version_bitmask_ptr = common dso_local global i32* null, align 8
@PY_MAJOR_VERSION = common dso_local global i32 0, align 4
@TEXTDOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = alloca i32**, align 8
  %2 = call i64 @find_rendezvous_variable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %3 = inttoptr i64 %2 to i32**
  store i32** %3, i32*** %1, align 8
  %4 = load i32**, i32*** %1, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32**, i32*** %1, align 8
  store i32* @plpython_version_bitmask, i32** %8, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32**, i32*** %1, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** @plpython_version_bitmask_ptr, align 8
  %12 = load i32, i32* @PY_MAJOR_VERSION, align 4
  %13 = shl i32 1, %12
  %14 = load i32*, i32** @plpython_version_bitmask_ptr, align 8
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @TEXTDOMAIN, align 4
  %18 = call i32 @pg_bindtextdomain(i32 %17)
  ret void
}

declare dso_local i64 @find_rendezvous_variable(i8*) #1

declare dso_local i32 @pg_bindtextdomain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
