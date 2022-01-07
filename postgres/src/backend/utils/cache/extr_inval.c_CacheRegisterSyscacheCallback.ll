; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_CacheRegisterSyscacheCallback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_CacheRegisterSyscacheCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SysCacheSize = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid cache ID: %d\00", align 1
@syscache_callback_count = common dso_local global i32 0, align 4
@MAX_SYSCACHE_CALLBACKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"out of syscache_callback_list slots\00", align 1
@syscache_callback_links = common dso_local global i32* null, align 8
@syscache_callback_list = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CacheRegisterSyscacheCallback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SysCacheSize, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %3
  %15 = load i32, i32* @FATAL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, ...) @elog(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @syscache_callback_count, align 4
  %20 = load i32, i32* @MAX_SYSCACHE_CALLBACKS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @FATAL, align 4
  %24 = call i32 (i32, i8*, ...) @elog(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32*, i32** @syscache_callback_links, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @syscache_callback_count, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32*, i32** @syscache_callback_links, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %70

39:                                               ; preds = %25
  %40 = load i32*, i32** @syscache_callback_links, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %54, %39
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %46

62:                                               ; preds = %46
  %63 = load i32, i32* @syscache_callback_count, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %32
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %73 = load i32, i32* @syscache_callback_count, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %78 = load i32, i32* @syscache_callback_count, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %84 = load i32, i32* @syscache_callback_count, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syscache_callback_list, align 8
  %90 = load i32, i32* @syscache_callback_count, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* @syscache_callback_count, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @syscache_callback_count, align 4
  ret void
}

declare dso_local i32 @elog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
