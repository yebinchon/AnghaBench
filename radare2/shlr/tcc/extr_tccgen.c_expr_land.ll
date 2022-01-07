; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_land.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_land.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i64 0, align 8
@TOK_LAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @expr_land to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_land() #0 {
  %1 = call i32 (...) @expr_or()
  %2 = load i64, i64* @tok, align 8
  %3 = load i64, i64* @TOK_LAND, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %14, %5
  %7 = call i64 (...) @tcc_nerr()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i64, i64* @tok, align 8
  %11 = load i64, i64* @TOK_LAND, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  %15 = call i32 (...) @next()
  %16 = call i32 (...) @expr_or()
  br label %6

17:                                               ; preds = %13, %6
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @expr_or(...) #1

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
