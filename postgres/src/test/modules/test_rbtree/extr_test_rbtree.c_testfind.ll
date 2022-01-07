; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_testfind.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_rbtree/extr_test_rbtree.c_testfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inserted element was not found\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"find operation in rbtree gave wrong result\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"not-inserted element was found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @testfind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testfind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i32* (...) @create_int_rbtree()
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @rbt_populate(i32* %10, i32 %11, i32 2)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 2, %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast %struct.TYPE_2__* %5 to i32*
  %23 = call i64 @rbt_find(i32* %21, i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %6, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %17
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %13

44:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %2, align 4
  %48 = mul nsw i32 2, %47
  %49 = icmp sle i32 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = bitcast %struct.TYPE_2__* %7 to i32*
  %55 = call i64 @rbt_find(i32* %53, i32* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %8, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @ERROR, align 4
  %61 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %4, align 4
  br label %45

66:                                               ; preds = %45
  ret void
}

declare dso_local i32* @create_int_rbtree(...) #1

declare dso_local i32 @rbt_populate(i32*, i32, i32) #1

declare dso_local i64 @rbt_find(i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
