; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_cleanOpStack.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_cleanOpStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@OP_NOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32*, i64)* @cleanOpStack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanOpStack(i32 %0, %struct.TYPE_3__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @OP_PRIORITY(i64 %10)
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @OP_NOT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @OP_PRIORITY(i64 %29)
  %31 = icmp sgt i32 %21, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %20, %16
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @OP_NOT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @OP_PRIORITY(i64 %45)
  %47 = icmp sge i32 %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36, %20
  br label %69

49:                                               ; preds = %36, %32
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pushOperator(i32 %53, i64 %60, i32 %67)
  br label %12

69:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @OP_PRIORITY(i64) #1

declare dso_local i32 @pushOperator(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
