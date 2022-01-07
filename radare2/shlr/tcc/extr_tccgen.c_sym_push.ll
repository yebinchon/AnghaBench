; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_sym_push.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_sym_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }

@local_stack = common dso_local global %struct.TYPE_14__* null, align 8
@global_stack = common dso_local global %struct.TYPE_14__* null, align 8
@SYM_FIELD = common dso_local global i32 0, align 4
@SYM_STRUCT = common dso_local global i32 0, align 4
@SYM_FIRST_ANOM = common dso_local global i32 0, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Not found\0A\00", align 1
@table_ident = common dso_local global %struct.TYPE_13__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @sym_push(i32 %0, %struct.TYPE_15__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @local_stack, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.TYPE_14__** @local_stack, %struct.TYPE_14__*** %11, align 8
  br label %18

17:                                               ; preds = %4
  store %struct.TYPE_14__** @global_stack, %struct.TYPE_14__*** %11, align 8
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call %struct.TYPE_14__* @sym_push2(%struct.TYPE_14__** %19, i32 %20, i32 %23, i64 %24)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %10, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %90

29:                                               ; preds = %18
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SYM_FIELD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SYM_STRUCT, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* @SYM_FIRST_ANOM, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SYM_STRUCT, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @TOK_IDENT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %90

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @table_ident, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SYM_STRUCT, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* @TOK_IDENT, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %61, i64 %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %12, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SYM_STRUCT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store %struct.TYPE_14__** %77, %struct.TYPE_14__*** %11, align 8
  br label %81

78:                                               ; preds = %60
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store %struct.TYPE_14__** %80, %struct.TYPE_14__*** %11, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %87, align 8
  br label %88

88:                                               ; preds = %81, %43, %29
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %5, align 8
  br label %90

90:                                               ; preds = %88, %58, %28
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %91
}

declare dso_local %struct.TYPE_14__* @sym_push2(%struct.TYPE_14__**, i32, i32, i64) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
