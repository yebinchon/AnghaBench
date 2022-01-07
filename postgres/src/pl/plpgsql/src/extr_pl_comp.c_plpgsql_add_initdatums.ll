; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_add_initdatums.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_add_initdatums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@datums_last = common dso_local global i32 0, align 4
@plpgsql_nDatums = common dso_local global i32 0, align 4
@plpgsql_Datums = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plpgsql_add_initdatums(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @datums_last, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @plpgsql_nDatums, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @plpgsql_Datums, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %21 [
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %10, %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load i32**, i32*** %2, align 8
  %28 = icmp ne i32** %27, null
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @palloc(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32**, i32*** %2, align 8
  store i32* %38, i32** %39, align 8
  store i32 0, i32* %4, align 4
  %40 = load i32, i32* @datums_last, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %69, %32
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @plpgsql_nDatums, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @plpgsql_Datums, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %67 [
    i32 128, label %53
    i32 129, label %53
  ]

53:                                               ; preds = %45, %45
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @plpgsql_Datums, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32**, i32*** %2, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %45, %53
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %41

72:                                               ; preds = %41
  br label %75

73:                                               ; preds = %29
  %74 = load i32**, i32*** %2, align 8
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75, %26
  %77 = load i32, i32* @plpgsql_nDatums, align 4
  store i32 %77, i32* @datums_last, align 4
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
