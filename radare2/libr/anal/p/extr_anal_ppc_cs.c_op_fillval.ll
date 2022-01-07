; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_op_fillval.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_op_fillval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@op_fillval.reg = internal global i32 0, align 4
@R_ANAL_OP_TYPE_MASK = common dso_local global i32 0, align 4
@PPC_OP_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32*)* @op_fillval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_fillval(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @R_ANAL_OP_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %96 [
    i32 129, label %16
    i32 128, label %60
  ]

16:                                               ; preds = %3
  %17 = call i64 @INSOP(i32 1)
  %18 = bitcast %struct.TYPE_11__* %7 to i64*
  store i64 %17, i64* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PPC_OP_MEM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %16
  %24 = load i32, i32* @op_fillval.reg, align 4
  %25 = call i32 @ZERO_FILL(i32 %24)
  %26 = call i8* (...) @r_anal_value_new()
  %27 = bitcast i8* %26 to %struct.TYPE_7__*
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %30, i64 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %34, i64 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* @op_fillval.reg, i32** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %40, i64 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @parse_reg_name(i32* %44, i32 %45, i32* %46, i32 1)
  %48 = call i64 @INSOP(i32 1)
  %49 = bitcast %struct.TYPE_11__* %8 to i64*
  store i64 %48, i64* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 8
  br label %59

59:                                               ; preds = %23, %16
  br label %96

60:                                               ; preds = %3
  %61 = call i64 @INSOP(i32 1)
  %62 = bitcast %struct.TYPE_11__* %9 to i64*
  store i64 %61, i64* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PPC_OP_MEM, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load i32, i32* @op_fillval.reg, align 4
  %69 = call i32 @ZERO_FILL(i32 %68)
  %70 = call i8* (...) @r_anal_value_new()
  %71 = bitcast i8* %70 to %struct.TYPE_8__*
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32* @op_fillval.reg, i32** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @parse_reg_name(i32* %82, i32 %83, i32* %84, i32 1)
  %86 = call i64 @INSOP(i32 1)
  %87 = bitcast %struct.TYPE_11__* %10 to i64*
  store i64 %86, i64* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  br label %95

95:                                               ; preds = %67, %60
  br label %96

96:                                               ; preds = %3, %95, %59
  ret void
}

declare dso_local i64 @INSOP(i32) #1

declare dso_local i32 @ZERO_FILL(i32) #1

declare dso_local i8* @r_anal_value_new(...) #1

declare dso_local i32 @parse_reg_name(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
