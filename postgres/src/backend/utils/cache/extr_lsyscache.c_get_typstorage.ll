; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_typstorage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_typstorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }

@TYPEOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @get_typstorage(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @TYPEOID, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ObjectIdGetDatum(i32 %8)
  %10 = call i32 @SearchSysCache1(i32 %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @HeapTupleIsValid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GETSTRUCT(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %6, align 1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ReleaseSysCache(i32 %22)
  %24 = load i8, i8* %6, align 1
  store i8 %24, i8* %2, align 1
  br label %26

25:                                               ; preds = %1
  store i8 112, i8* %2, align 1
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i8, i8* %2, align 1
  ret i8 %27
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
