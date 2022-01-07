; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_make_expanded_record_for_rec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_make_expanded_record_for_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@RECORDOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.TYPE_13__*, i64, %struct.TYPE_14__*)* @make_expanded_record_for_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @make_expanded_record_for_rec(i32* %0, %struct.TYPE_13__* %1, i64 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @get_eval_mcontext(i32* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RECORDOID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = call i32 @revalidate_rectypeid(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.TYPE_14__* @make_expanded_record_from_exprecord(%struct.TYPE_14__* %32, i32 %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %9, align 8
  br label %41

35:                                               ; preds = %23, %18
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.TYPE_14__* @make_expanded_record_from_typeid(i64 %38, i32 -1, i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %9, align 8
  br label %41

41:                                               ; preds = %35, %31
  br label %64

42:                                               ; preds = %4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = call i32 @ExpandedRecordIsDomain(%struct.TYPE_14__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.TYPE_14__* @make_expanded_record_from_exprecord(%struct.TYPE_14__* %50, i32 %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %9, align 8
  br label %63

53:                                               ; preds = %45, %42
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = call i64 @expanded_record_get_tupdesc(%struct.TYPE_14__* %57)
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.TYPE_14__* @make_expanded_record_from_tupdesc(i64 %60, i32 %61)
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %9, align 8
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63, %41
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %65
}

declare dso_local i32 @get_eval_mcontext(i32*) #1

declare dso_local i32 @revalidate_rectypeid(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @make_expanded_record_from_exprecord(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @make_expanded_record_from_typeid(i64, i32, i32) #1

declare dso_local i32 @ExpandedRecordIsDomain(%struct.TYPE_14__*) #1

declare dso_local i64 @expanded_record_get_tupdesc(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @make_expanded_record_from_tupdesc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
