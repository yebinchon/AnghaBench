; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_load_hl.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_load_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@R_REG_TYPE_GPR = common dso_local global i32 0, align 4
@regs_8 = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hl,[1],%s,=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c",1,hl,-=\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"hl,[1],a,=,1,hl,+=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32)* @gb_anal_load_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_anal_load_hl(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i8* (...) @r_anal_value_new()
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %10, align 8
  %11 = call i8* (...) @r_anal_value_new()
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %19 = call i8* @r_reg_get(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i8* %19, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i8**, i8*** @regs_8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 56
  %42 = ashr i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %39, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %47 = call i8* @r_reg_get(i32* %38, i8* %45, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %47, i8** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8**, i8*** @regs_8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 56
  %57 = ashr i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %54, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @r_strbuf_setf(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 58
  br i1 %63, label %64, label %68

64:                                               ; preds = %3
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @r_strbuf_append(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %3
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 42
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @r_strbuf_set(i32* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %68
  ret void
}

declare dso_local i8* @r_anal_value_new(...) #1

declare dso_local i8* @r_reg_get(i32*, i8*, i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i8*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
