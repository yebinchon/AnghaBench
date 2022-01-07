; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_testrightleft.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_testrightleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RightLeftWalk = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"right-left walk over empty tree produced an element\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"right-left walk gives elements not in sorted order\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"right-left walk did not reach end\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"right-left walk missed some elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @testrightleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testrightleft(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32* (...) @create_int_rbtree()
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @RightLeftWalk, align 4
  %12 = call i32 @rbt_begin_iterate(i32* %10, i32 %11, i32* %5)
  %13 = call i32* @rbt_iterate(i32* %5)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @rbt_populate(i32* %19, i32 %20, i32 1)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @RightLeftWalk, align 4
  %24 = call i32 @rbt_begin_iterate(i32* %22, i32 %23, i32* %5)
  br label %25

25:                                               ; preds = %38, %18
  %26 = call i32* @rbt_iterate(i32* %5)
  %27 = bitcast i32* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %4, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 @elog(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32* @create_int_rbtree(...) #1

declare dso_local i32 @rbt_begin_iterate(i32*, i32, i32*) #1

declare dso_local i32* @rbt_iterate(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @rbt_populate(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
