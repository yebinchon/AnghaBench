; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_generate_trgm.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_generate_trgm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TRGMHDRSIZE = common dso_local global i64 0, align 8
@ARRKEY = common dso_local global i32 0, align 4
@comp_trgm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @generate_trgm(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @protect_out_of_mem(i32 %8)
  %10 = load i64, i64* @TRGMHDRSIZE, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = mul i64 %15, 3
  %17 = add i64 %10, %16
  %18 = call i64 @palloc(i64 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* @ARRKEY, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = call i64 @GETARR(%struct.TYPE_5__* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @generate_trgm_only(i64 %24, i8* %25, i32 %26, i32* null)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = load i32, i32* @ARRKEY, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @CALCGTSIZE(i32 %29, i32 %30)
  %32 = call i32 @SET_VARSIZE(%struct.TYPE_5__* %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %3, align 8
  br label %59

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = call i64 @GETARR(%struct.TYPE_5__* %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @comp_trgm, align 4
  %46 = call i32 @qsort(i8* %43, i32 %44, i32 4, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = call i64 @GETARR(%struct.TYPE_5__* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @comp_trgm, align 4
  %51 = call i32 @qunique(i64 %48, i32 %49, i32 4, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %40, %37
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = load i32, i32* @ARRKEY, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @CALCGTSIZE(i32 %54, i32 %55)
  %57 = call i32 @SET_VARSIZE(%struct.TYPE_5__* %53, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %3, align 8
  br label %59

59:                                               ; preds = %52, %35
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %60
}

declare dso_local i32 @protect_out_of_mem(i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @generate_trgm_only(i64, i8*, i32, i32*) #1

declare dso_local i64 @GETARR(%struct.TYPE_5__*) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @CALCGTSIZE(i32, i32) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @qunique(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
