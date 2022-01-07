; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_toast_helper.c_toast_tuple_externalize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_toast_helper.c_toast_tuple_externalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@TOASTCOL_IGNORE = common dso_local global i32 0, align 4
@TOASTCOL_NEEDS_FREE = common dso_local global i32 0, align 4
@TOAST_NEEDS_CHANGE = common dso_local global i32 0, align 4
@TOAST_NEEDS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toast_tuple_externalize(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %9, align 8
  %24 = load i32, i32* @TOASTCOL_IGNORE, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @toast_save_datum(i32 %31, i32 %32, i32 %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TOASTCOL_NEEDS_FREE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DatumGetPointer(i32 %46)
  %48 = call i32 @pfree(i32 %47)
  br label %49

49:                                               ; preds = %45, %3
  %50 = load i32, i32* @TOASTCOL_NEEDS_FREE, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @TOAST_NEEDS_CHANGE, align 4
  %56 = load i32, i32* @TOAST_NEEDS_FREE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  ret void
}

declare dso_local i32 @toast_save_datum(i32, i32, i32, i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
