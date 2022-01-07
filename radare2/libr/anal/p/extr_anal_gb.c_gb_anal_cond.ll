; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_cond.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@R_ANAL_COND_EQ = common dso_local global i32 0, align 4
@R_ANAL_COND_NE = common dso_local global i32 0, align 4
@regs_1 = common dso_local global i32* null, align 8
@R_REG_TYPE_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32)* @gb_anal_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_anal_cond(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i8* (...) @r_anal_value_new()
  %8 = bitcast i8* %7 to %struct.TYPE_5__*
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %10, align 8
  %11 = call i8* (...) @r_anal_value_new()
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @R_ANAL_COND_EQ, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @R_ANAL_COND_NE, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %47 [
    i32 32, label %36
    i32 40, label %36
    i32 192, label %36
    i32 194, label %36
    i32 196, label %36
    i32 200, label %36
    i32 202, label %36
    i32 204, label %36
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** @regs_1, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %42 = call i8* @r_reg_get(i32* %37, i32 %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  br label %58

47:                                               ; preds = %34
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** @regs_1, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %53 = call i8* @r_reg_get(i32* %48, i32 %51, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* %53, i8** %57, align 8
  br label %58

58:                                               ; preds = %47, %36
  ret void
}

declare dso_local i8* @r_anal_value_new(...) #1

declare dso_local i8* @r_reg_get(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
