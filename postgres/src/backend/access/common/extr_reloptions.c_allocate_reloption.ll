; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_allocate_reloption.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_allocate_reloption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i8* }

@TopMemoryContext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported reloption type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i32, i8*, i8*, i32)* @allocate_reloption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @allocate_reloption(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @TopMemoryContext, align 4
  %16 = call i32 @MemoryContextSwitchTo(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %23 [
    i32 132, label %18
    i32 130, label %19
    i32 129, label %20
    i32 131, label %21
    i32 128, label %22
  ]

18:                                               ; preds = %5
  store i64 4, i64* %13, align 8
  br label %27

19:                                               ; preds = %5
  store i64 4, i64* %13, align 8
  br label %27

20:                                               ; preds = %5
  store i64 4, i64* %13, align 8
  br label %27

21:                                               ; preds = %5
  store i64 4, i64* %13, align 8
  br label %27

22:                                               ; preds = %5
  store i64 4, i64* %13, align 8
  br label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %62

27:                                               ; preds = %22, %21, %20, %19, %18
  %28 = load i64, i64* %13, align 8
  %29 = call %struct.TYPE_4__* @palloc(i64 %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %14, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @pstrdup(i8* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = call i8* @pstrdup(i8* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  br label %45

42:                                               ; preds = %27
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @MemoryContextSwitchTo(i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %6, align 8
  br label %62

62:                                               ; preds = %45, %23
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %63
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @palloc(i64) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
