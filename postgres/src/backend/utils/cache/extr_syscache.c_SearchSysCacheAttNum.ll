; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_syscache.c_SearchSysCacheAttNum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_syscache.c_SearchSysCacheAttNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ATTNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SearchSysCacheAttNum(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ATTNUM, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ObjectIdGetDatum(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @Int16GetDatum(i32 %10)
  %12 = call i32* @SearchSysCache2(i32 %7, i32 %9, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @HeapTupleIsValid(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %29

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @GETSTRUCT(i32* %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ReleaseSysCache(i32* %25)
  store i32* null, i32** %3, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = load i32*, i32** %3, align 8
  ret i32* %30
}

declare dso_local i32* @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
