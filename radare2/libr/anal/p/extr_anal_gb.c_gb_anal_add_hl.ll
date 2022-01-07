; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_add_hl.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_add_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__**, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@R_REG_TYPE_GPR = common dso_local global i32 0, align 4
@regs_16 = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s,hl,+=,0,N,:=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32)* @gb_anal_add_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_anal_add_hl(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i8* (...) @r_anal_value_new()
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %10, align 8
  %11 = call i8* (...) @r_anal_value_new()
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %19 = call i8* @r_reg_get(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %19, i8** %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i8**, i8*** @regs_16, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 240
  %28 = ashr i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %25, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %33 = call i8* @r_reg_get(i32* %24, i8* %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %33, i8** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8**, i8*** @regs_16, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 240
  %45 = ashr i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %42, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @r_strbuf_setf(i32* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  ret void
}

declare dso_local i8* @r_anal_value_new(...) #1

declare dso_local i8* @r_reg_get(i32*, i8*, i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
