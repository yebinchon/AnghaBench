; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_expanded.c_DatumGetAnyArrayP.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_expanded.c_DatumGetAnyArrayP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EA_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DatumGetAnyArrayP(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @DatumGetPointer(i32 %5)
  %7 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @DatumGetEOHP(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EA_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = bitcast %struct.TYPE_2__* %20 to i32*
  store i32* %21, i32** %2, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @PG_DETOAST_DATUM(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %2, align 8
  br label %26

26:                                               ; preds = %22, %9
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @DatumGetEOHP(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PG_DETOAST_DATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
