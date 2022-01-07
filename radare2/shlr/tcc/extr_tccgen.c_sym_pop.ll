; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_sym_pop.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_sym_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@SYM_FIELD = common dso_local global i32 0, align 4
@SYM_STRUCT = common dso_local global i32 0, align 4
@SYM_FIRST_ANOM = common dso_local global i32 0, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Not found\0A\00", align 1
@table_ident = common dso_local global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_pop(%struct.TYPE_8__** %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  br label %17

17:                                               ; preds = %72, %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = icmp ne %struct.TYPE_8__* %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SYM_FIELD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %72, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SYM_STRUCT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @SYM_FIRST_ANOM, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SYM_STRUCT, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @TOK_IDENT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %79

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @table_ident, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @TOK_IDENT, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %50, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SYM_STRUCT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store %struct.TYPE_8__** %63, %struct.TYPE_8__*** %7, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store %struct.TYPE_8__** %66, %struct.TYPE_8__*** %7, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %71, align 8
  br label %72

72:                                               ; preds = %67, %32, %21
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = call i32 @sym_free(%struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %5, align 8
  br label %17

76:                                               ; preds = %17
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %78, align 8
  br label %79

79:                                               ; preds = %76, %47, %13
  ret void
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @sym_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
