; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_join_variables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_get_join_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"join operator should take two arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_join_variables(i32* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @list_length(i32* %15)
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %6
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @linitial(i32* %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @lsecond(i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = call i32 @examine_variable(i32* %28, i32* %29, i32 0, %struct.TYPE_9__* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = call i32 @examine_variable(i32* %32, i32* %33, i32 0, %struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %21
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @bms_is_subset(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32*, i32** %12, align 8
  store i32 1, i32* %52, align 4
  br label %74

53:                                               ; preds = %40, %21
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @bms_is_subset(i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32*, i32** %12, align 8
  store i32 1, i32* %70, align 4
  br label %73

71:                                               ; preds = %58, %53
  %72 = load i32*, i32** %12, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %51
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i64 @lsecond(i32*) #1

declare dso_local i32 @examine_variable(i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @bms_is_subset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
