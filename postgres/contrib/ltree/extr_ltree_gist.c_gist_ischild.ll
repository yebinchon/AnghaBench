; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_gist.c_gist_ischild.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_gist.c_gist_ischild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @gist_ischild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gist_ischild(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @LTG_GETLNODE(i32* %8)
  %10 = call %struct.TYPE_7__* @copy_ltree(i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @LTG_GETRNODE(i32* %11)
  %13 = call %struct.TYPE_7__* @copy_ltree(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  store i32 1, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i64 @ltree_compare(%struct.TYPE_7__* %28, %struct.TYPE_7__* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = call i64 @ltree_compare(%struct.TYPE_7__* %51, %struct.TYPE_7__* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %50, %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = call i32 @pfree(%struct.TYPE_7__* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = call i32 @pfree(%struct.TYPE_7__* %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_7__* @copy_ltree(i32) #1

declare dso_local i32 @LTG_GETLNODE(i32*) #1

declare dso_local i32 @LTG_GETRNODE(i32*) #1

declare dso_local i64 @ltree_compare(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @pfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
