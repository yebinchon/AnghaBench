; ModuleID = '/home/carl/AnghaBench/postgres/contrib/spi/extr_refint.c_find_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/spi/extr_refint.c_find_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, %struct.TYPE_5__**, i32*)* @find_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @find_plan(i8* %0, %struct.TYPE_5__** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcmp(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %4, align 8
  br label %80

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 24
  %53 = trunc i64 %52 to i32
  %54 = call i64 @realloc(%struct.TYPE_5__* %48, i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_5__*
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %8, align 8
  br label %67

62:                                               ; preds = %3
  %63 = call i64 @malloc(i32 24)
  %64 = inttoptr i64 %63 to %struct.TYPE_5__*
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %65, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %9, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %46
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strdup(i8* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %4, align 8
  br label %80

80:                                               ; preds = %67, %40
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %81
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
