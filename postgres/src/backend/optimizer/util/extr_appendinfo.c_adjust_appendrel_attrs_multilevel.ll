; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_adjust_appendrel_attrs_multilevel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_adjust_appendrel_attrs_multilevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @adjust_appendrel_attrs_multilevel(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @bms_num_members(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @bms_num_members(i32* %16)
  %18 = icmp eq i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_5__** @find_appinfos_by_relids(i32* %21, i32* %22, i32* %11)
  store %struct.TYPE_5__** %23, %struct.TYPE_5__*** %9, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %39, %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %13, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @bms_add_member(i32* %34, i32 %37)
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @bms_equal(i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @adjust_appendrel_attrs_multilevel(i32* %48, i32* %49, i32* %50, i32* %51)
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %58 = call i32* @adjust_appendrel_attrs(i32* %54, i32* %55, i32 %56, %struct.TYPE_5__** %57)
  store i32* %58, i32** %6, align 8
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %60 = call i32 @pfree(%struct.TYPE_5__** %59)
  %61 = load i32*, i32** %6, align 8
  ret i32* %61
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @bms_num_members(i32*) #1

declare dso_local %struct.TYPE_5__** @find_appinfos_by_relids(i32*, i32*, i32*) #1

declare dso_local i32* @bms_add_member(i32*, i32) #1

declare dso_local i32 @bms_equal(i32*, i32*) #1

declare dso_local i32* @adjust_appendrel_attrs(i32*, i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @pfree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
