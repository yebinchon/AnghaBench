; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_database_encoding_character_incrementer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_database_encoding_character_incrementer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_utf8_increment = common dso_local global i32 0, align 4
@pg_eucjp_increment = common dso_local global i32 0, align 4
@pg_generic_charinc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_database_encoding_character_incrementer() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @GetDatabaseEncoding()
  switch i32 %2, label %7 [
    i32 128, label %3
    i32 129, label %5
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @pg_utf8_increment, align 4
  store i32 %4, i32* %1, align 4
  br label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @pg_eucjp_increment, align 4
  store i32 %6, i32* %1, align 4
  br label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @pg_generic_charinc, align 4
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %7, %5, %3
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i32 @GetDatabaseEncoding(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
