; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_init_putv.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_init_putv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@global_expr = common dso_local global i32 0, align 4
@vtop = common dso_local global %struct.TYPE_6__* null, align 8
@VT_VALMASK = common dso_local global i32 0, align 4
@VT_LVAL = common dso_local global i32 0, align 4
@VT_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"initializer element is not constant\00", align 1
@VT_CONSTANT = common dso_local global i32 0, align 4
@VT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64, i32)* @init_putv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_putv(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %33 [
    i32 128, label %12
    i32 129, label %15
    i32 130, label %31
  ]

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @vpushll(i64 %13)
  br label %33

15:                                               ; preds = %4
  %16 = load i32, i32* @global_expr, align 4
  store i32 %16, i32* %9, align 4
  store i32 1, i32* @global_expr, align 4
  %17 = call i32 (...) @expr_const1()
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* @global_expr, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vtop, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VT_VALMASK, align 4
  %23 = load i32, i32* @VT_LVAL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @VT_CONST, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = call i32 @TCC_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %15
  br label %33

31:                                               ; preds = %4
  %32 = call i32 (...) @expr_eq()
  br label %33

33:                                               ; preds = %4, %31, %30, %12
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = bitcast %struct.TYPE_5__* %10 to i8*
  %36 = bitcast %struct.TYPE_5__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load i32, i32* @VT_CONSTANT, align 4
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @VT_LOCAL, align 4
  %43 = load i32, i32* @VT_LVAL, align 4
  %44 = or i32 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @vset(%struct.TYPE_5__* %10, i32 %44, i64 %45)
  %47 = call i32 (...) @vswap()
  ret void
}

declare dso_local i32 @vpushll(i64) #1

declare dso_local i32 @expr_const1(...) #1

declare dso_local i32 @TCC_ERR(i8*) #1

declare dso_local i32 @expr_eq(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vset(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @vswap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
