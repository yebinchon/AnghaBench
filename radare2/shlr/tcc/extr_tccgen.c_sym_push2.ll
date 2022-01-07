; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_sym_push2.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_sym_push2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_9__*, i32*, i32*, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32, i32* }

@local_stack = common dso_local global %struct.TYPE_9__* null, align 8
@scope_stack_bottom = common dso_local global %struct.TYPE_9__* null, align 8
@SYM_FIELD = common dso_local global i32 0, align 4
@SYM_STRUCT = common dso_local global i32 0, align 4
@SYM_FIRST_ANOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"incompatible types for redefinition of '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @sym_push2(%struct.TYPE_9__** %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %12 = icmp eq %struct.TYPE_9__** %11, @local_stack
  br i1 %12, label %13, label %53

13:                                               ; preds = %4
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %10, align 8
  br label %16

16:                                               ; preds = %48, %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @scope_stack_bottom, align 8
  %22 = icmp ne %struct.TYPE_9__* %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %52

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SYM_FIELD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SYM_STRUCT, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @SYM_FIRST_ANOM, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @get_tok_str(i32 %44, i32* null)
  %46 = call i32 @tcc_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %79

47:                                               ; preds = %37, %30, %25
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %10, align 8
  br label %16

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52, %4
  %54 = call %struct.TYPE_9__* (...) @sym_malloc()
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %5, align 8
  br label %79

79:                                               ; preds = %53, %43
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %80
}

declare dso_local i32 @tcc_error(i8*, i32) #1

declare dso_local i32 @get_tok_str(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @sym_malloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
