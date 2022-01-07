; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_adjust_child_relids_multilevel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_adjust_child_relids_multilevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @adjust_child_relids_multilevel(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @bms_overlap(i32* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %5, align 8
  br label %73

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_5__** @find_appinfos_by_relids(i32* %24, i32* %25, i32* %11)
  store %struct.TYPE_5__** %26, %struct.TYPE_5__*** %10, align 8
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %42, %23
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %16, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @bms_add_member(i32* %37, i32 %40)
  store i32* %41, i32** %12, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @bms_equal(i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @adjust_child_relids_multilevel(i32* %51, i32* %52, i32* %53, i32* %54)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %61 = call i32* @adjust_child_relids(i32* %58, i32 %59, %struct.TYPE_5__** %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @bms_free(i32* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @bms_free(i32* %68)
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %71 = call i32 @pfree(%struct.TYPE_5__** %70)
  %72 = load i32*, i32** %13, align 8
  store i32* %72, i32** %5, align 8
  br label %73

73:                                               ; preds = %67, %21
  %74 = load i32*, i32** %5, align 8
  ret i32* %74
}

declare dso_local i32 @bms_overlap(i32*, i32*) #1

declare dso_local %struct.TYPE_5__** @find_appinfos_by_relids(i32*, i32*, i32*) #1

declare dso_local i32* @bms_add_member(i32*, i32) #1

declare dso_local i32 @bms_equal(i32*, i32*) #1

declare dso_local i32* @adjust_child_relids(i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @bms_free(i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
