; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btbulkdelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btbulkdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@_bt_end_vacuum_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @btbulkdelete(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = call i64 @palloc0(i32 4)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @_bt_end_vacuum_callback, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @PointerGetDatum(i32 %22)
  %24 = call i32 @PG_ENSURE_ERROR_CLEANUP(i32 %21, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @_bt_start_vacuum(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @btvacuumscan(%struct.TYPE_4__* %27, i32* %28, i32 %29, i8* %30, i32 %31, i32* %11)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_bt_update_meta_cleanup_info(i32 %35, i32 %36, i32 %39)
  %41 = load i32, i32* @_bt_end_vacuum_callback, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @PointerGetDatum(i32 %42)
  %44 = call i32 @PG_END_ENSURE_ERROR_CLEANUP(i32 %41, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @_bt_end_vacuum(i32 %45)
  %47 = load i32*, i32** %6, align 8
  ret i32* %47
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @PG_ENSURE_ERROR_CLEANUP(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @_bt_start_vacuum(i32) #1

declare dso_local i32 @btvacuumscan(%struct.TYPE_4__*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @_bt_update_meta_cleanup_info(i32, i32, i32) #1

declare dso_local i32 @PG_END_ENSURE_ERROR_CLEANUP(i32, i32) #1

declare dso_local i32 @_bt_end_vacuum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
