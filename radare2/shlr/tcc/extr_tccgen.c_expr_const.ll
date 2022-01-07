; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_const.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@vtop = common dso_local global %struct.TYPE_4__* null, align 8
@VT_VALMASK = common dso_local global i32 0, align 4
@VT_LVAL = common dso_local global i32 0, align 4
@VT_SYM = common dso_local global i32 0, align 4
@VT_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"constant expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expr_const() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = call i32 (...) @expr_const1()
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vtop, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @VT_VALMASK, align 4
  %7 = load i32, i32* @VT_LVAL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VT_SYM, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = load i32, i32* @VT_CONST, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @expect(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vtop, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  ret i64 %21
}

declare dso_local i32 @expr_const1(...) #1

declare dso_local i32 @expect(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
