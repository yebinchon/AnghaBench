; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_testleftright.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_testleftright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LeftRightWalk = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"left-right walk over empty tree produced an element\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"left-right walk gives elements not in sorted order\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"left-right walk did not reach end\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"left-right walk missed some elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @testleftright to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testleftright(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32* (...) @create_int_rbtree()
  store i32* %8, i32** %3, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LeftRightWalk, align 4
  %11 = call i32 @rbt_begin_iterate(i32* %9, i32 %10, i32* %5)
  %12 = call i32* @rbt_iterate(i32* %5)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @rbt_populate(i32* %18, i32 %19, i32 1)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @LeftRightWalk, align 4
  %23 = call i32 @rbt_begin_iterate(i32* %21, i32 %22, i32* %5)
  br label %24

24:                                               ; preds = %37, %17
  %25 = call i32* @rbt_iterate(i32* %5)
  %26 = bitcast i32* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %4, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %2, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
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
