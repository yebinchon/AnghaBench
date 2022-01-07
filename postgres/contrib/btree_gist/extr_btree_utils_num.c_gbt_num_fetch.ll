; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_fetch.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @gbt_num_fetch(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 2, %12
  %14 = icmp sge i32 %9, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %90 [
    i32 133, label %20
    i32 132, label %27
    i32 131, label %34
    i32 130, label %41
    i32 136, label %41
    i32 135, label %48
    i32 134, label %55
    i32 137, label %62
    i32 129, label %69
    i32 128, label %76
    i32 138, label %83
  ]

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Int16GetDatum(i32 %25)
  store i32 %26, i32* %6, align 4
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Int32GetDatum(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %95

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Int64GetDatum(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %95

41:                                               ; preds = %2, %2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ObjectIdGetDatum(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %95

48:                                               ; preds = %2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Float4GetDatum(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %95

55:                                               ; preds = %2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @Float8GetDatum(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %95

62:                                               ; preds = %2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DateADTGetDatum(i32 %67)
  store i32 %68, i32* %6, align 4
  br label %95

69:                                               ; preds = %2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TimeADTGetDatum(i32 %74)
  store i32 %75, i32* %6, align 4
  br label %95

76:                                               ; preds = %2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @TimestampGetDatum(i32 %81)
  store i32 %82, i32* %6, align 4
  br label %95

83:                                               ; preds = %2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CashGetDatum(i32 %88)
  store i32 %89, i32* %6, align 4
  br label %95

90:                                               ; preds = %2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @PointerGetDatum(i64 %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %90, %83, %76, %69, %62, %55, %48, %41, %34, %27, %20
  %96 = call %struct.TYPE_9__* @palloc(i32 24)
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %5, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @gistentryinit(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %97, i32 %98, i32 %101, i32 %104, i32 %107, i32 0)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %109
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Float4GetDatum(i32) #1

declare dso_local i32 @Float8GetDatum(i32) #1

declare dso_local i32 @DateADTGetDatum(i32) #1

declare dso_local i32 @TimeADTGetDatum(i32) #1

declare dso_local i32 @TimestampGetDatum(i32) #1

declare dso_local i32 @CashGetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i64) #1

declare dso_local %struct.TYPE_9__* @palloc(i32) #1

declare dso_local i32 @gistentryinit(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
