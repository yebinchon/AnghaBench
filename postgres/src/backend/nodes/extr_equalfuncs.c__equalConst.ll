; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalConst.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalConst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@consttype = common dso_local global i32 0, align 4
@consttypmod = common dso_local global i32 0, align 4
@constcollid = common dso_local global i32 0, align 4
@constlen = common dso_local global i32 0, align 4
@constisnull = common dso_local global i32 0, align 4
@constbyval = common dso_local global i32 0, align 4
@location = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @_equalConst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalConst(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load i32, i32* @consttype, align 4
  %7 = call i32 @COMPARE_SCALAR_FIELD(i32 %6)
  %8 = load i32, i32* @consttypmod, align 4
  %9 = call i32 @COMPARE_SCALAR_FIELD(i32 %8)
  %10 = load i32, i32* @constcollid, align 4
  %11 = call i32 @COMPARE_SCALAR_FIELD(i32 %10)
  %12 = load i32, i32* @constlen, align 4
  %13 = call i32 @COMPARE_SCALAR_FIELD(i32 %12)
  %14 = load i32, i32* @constisnull, align 4
  %15 = call i32 @COMPARE_SCALAR_FIELD(i32 %14)
  %16 = load i32, i32* @constbyval, align 4
  %17 = call i32 @COMPARE_SCALAR_FIELD(i32 %16)
  %18 = load i32, i32* @location, align 4
  %19 = call i32 @COMPARE_LOCATION_FIELD(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @datumIsEqual(i32 %28, i32 %31, i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @COMPARE_SCALAR_FIELD(i32) #1

declare dso_local i32 @COMPARE_LOCATION_FIELD(i32) #1

declare dso_local i32 @datumIsEqual(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
