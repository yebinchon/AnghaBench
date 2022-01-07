; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_step_until_esil.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_step_until_esil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Not initialized %p. Run 'aei' first.\0A\00", align 1
@R_REG_TYPE_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ESIL BREAK!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @step_until_esil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @step_until_esil(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %23, %16, %11, %8, %2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %3, align 4
  br label %79

39:                                               ; preds = %23
  %40 = call i32 @r_cons_break_push(i32* null, i32* null)
  br label %41

41:                                               ; preds = %76, %39
  %42 = call i64 (...) @r_cons_is_breaked()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %77

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = call i64 @r_debug_is_dead(%struct.TYPE_11__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %77

56:                                               ; preds = %47
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = call i32 @r_debug_step(%struct.TYPE_11__* %59, i32 1)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load i32, i32* @R_REG_TYPE_ALL, align 4
  %65 = call i32 @r_debug_reg_sync(%struct.TYPE_11__* %63, i32 %64, i32 0)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @r_anal_esil_condition(i32 %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %77

76:                                               ; preds = %56
  br label %41

77:                                               ; preds = %74, %53, %44
  %78 = call i32 (...) @r_cons_break_pop()
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %32
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i64 @r_cons_is_breaked(...) #1

declare dso_local i64 @r_debug_is_dead(%struct.TYPE_11__*) #1

declare dso_local i32 @r_debug_step(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @r_debug_reg_sync(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @r_anal_esil_condition(i32, i8*) #1

declare dso_local i32 @r_cons_break_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
