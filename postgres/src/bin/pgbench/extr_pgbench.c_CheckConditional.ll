; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_CheckConditional.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_CheckConditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__** }

@META_COMMAND = common dso_local global i64 0, align 8
@IFSTATE_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\\elif without matching \\if\00", align 1
@IFSTATE_ELSE_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\\elif after \\else\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\\else without matching \\if\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\\else after \\else\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\\endif without matching \\if\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\\if without matching \\endif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__**)* @CheckConditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckConditional(i32 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = bitcast %struct.TYPE_4__* %3 to { i32, %struct.TYPE_5__** }*
  %8 = getelementptr inbounds { i32, %struct.TYPE_5__** }, { i32, %struct.TYPE_5__** }* %7, i32 0, i32 0
  store i32 %0, i32* %8, align 8
  %9 = getelementptr inbounds { i32, %struct.TYPE_5__** }, { i32, %struct.TYPE_5__** }* %7, i32 0, i32 1
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %9, align 8
  %10 = call i32 (...) @conditional_stack_create()
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %100, %2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %103

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @META_COMMAND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %97 [
    i32 128, label %35
    i32 131, label %39
    i32 130, label %61
    i32 129, label %86
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IFSTATE_FALSE, align 4
  %38 = call i32 @conditional_stack_push(i32 %36, i32 %37)
  br label %98

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @conditional_stack_empty(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @ConditionError(i32 %45, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @conditional_stack_peek(i32 %50)
  %52 = load i32, i32* @IFSTATE_ELSE_FALSE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @ConditionError(i32 %56, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54, %49
  br label %98

61:                                               ; preds = %31
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @conditional_stack_empty(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @ConditionError(i32 %67, i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @conditional_stack_peek(i32 %72)
  %74 = load i32, i32* @IFSTATE_ELSE_FALSE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @ConditionError(i32 %78, i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @IFSTATE_ELSE_FALSE, align 4
  %85 = call i32 @conditional_stack_poke(i32 %83, i32 %84)
  br label %98

86:                                               ; preds = %31
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @conditional_stack_pop(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @ConditionError(i32 %92, i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %86
  br label %98

97:                                               ; preds = %31
  br label %98

98:                                               ; preds = %97, %96, %82, %60, %35
  br label %99

99:                                               ; preds = %98, %19
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %11

103:                                              ; preds = %11
  %104 = load i32, i32* %4, align 4
  %105 = call i64 @conditional_stack_empty(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @ConditionError(i32 %109, i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %103
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @conditional_stack_destroy(i32 %114)
  ret void
}

declare dso_local i32 @conditional_stack_create(...) #1

declare dso_local i32 @conditional_stack_push(i32, i32) #1

declare dso_local i64 @conditional_stack_empty(i32) #1

declare dso_local i32 @ConditionError(i32, i32, i8*) #1

declare dso_local i32 @conditional_stack_peek(i32) #1

declare dso_local i32 @conditional_stack_poke(i32, i32) #1

declare dso_local i32 @conditional_stack_pop(i32) #1

declare dso_local i32 @conditional_stack_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
