; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_hash_page.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_hash_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HASH_READ = common dso_local global i32 0, align 4
@LH_PAGE_TYPE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @pgstat_hash_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgstat_hash_page(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HASH_READ, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @_hash_getbuf_with_strategy(i32 %12, i32 %13, i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @BufferGetPage(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @PageGetSpecialSize(i32 %19)
  %21 = call i64 @MAXALIGN(i32 4)
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @PageGetSpecialPointer(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LH_PAGE_TYPE, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %46 [
    i32 128, label %32
    i32 131, label %38
    i32 129, label %38
    i32 132, label %45
    i32 130, label %45
  ]

32:                                               ; preds = %23
  %33 = load i32, i32* @BLCKSZ, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %47

38:                                               ; preds = %23, %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @FirstOffsetNumber, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @PageGetMaxOffsetNumber(i32 %42)
  %44 = call i32 @pgstat_index_page(%struct.TYPE_5__* %39, i32 %40, i32 %41, i32 %43)
  br label %47

45:                                               ; preds = %23, %23
  br label %46

46:                                               ; preds = %23, %45
  br label %47

47:                                               ; preds = %46, %38, %32
  br label %49

48:                                               ; preds = %4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @_hash_relbuf(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @_hash_getbuf_with_strategy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialSize(i32) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @pgstat_index_page(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
