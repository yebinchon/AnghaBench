; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_adjust_child_relids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_adjust_child_relids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @adjust_child_relids(i32* %0, i32 %1, %struct.TYPE_3__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__** %2, %struct.TYPE_3__*** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %45, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @bms_is_member(i32 %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %15
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @bms_copy(i32* %31)
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @bms_del_member(i32* %34, i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @bms_add_member(i32* %39, i32 %42)
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %33, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %4, align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i64 @bms_is_member(i32, i32*) #1

declare dso_local i32* @bms_copy(i32*) #1

declare dso_local i32* @bms_del_member(i32*, i32) #1

declare dso_local i32* @bms_add_member(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
