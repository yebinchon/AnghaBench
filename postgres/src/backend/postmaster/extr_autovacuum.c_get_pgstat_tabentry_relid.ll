; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_get_pgstat_tabentry_relid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_get_pgstat_tabentry_relid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@HASH_FIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*)* @get_pgstat_tabentry_relid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pgstat_tabentry_relid(i32 %0, i32 %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = call i64 @PointerIsValid(%struct.TYPE_5__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HASH_FIND, align 4
  %21 = call i32* @hash_search(i32 %19, i32* %5, i32 %20, i32* null)
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %16, %12
  br label %34

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = call i64 @PointerIsValid(%struct.TYPE_5__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HASH_FIND, align 4
  %32 = call i32* @hash_search(i32 %30, i32* %5, i32 %31, i32* null)
  store i32* %32, i32** %9, align 8
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32*, i32** %9, align 8
  ret i32* %35
}

declare dso_local i64 @PointerIsValid(%struct.TYPE_5__*) #1

declare dso_local i32* @hash_search(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
