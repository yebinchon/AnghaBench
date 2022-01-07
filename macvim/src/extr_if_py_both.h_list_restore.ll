; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_list_restore.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_list_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32*, %struct.TYPE_7__**, %struct.TYPE_7__*)* @list_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_restore(i64 %0, i64 %1, i64 %2, i32* %3, %struct.TYPE_7__** %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__** %4, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %12, align 8
  br label %14

14:                                               ; preds = %18, %6
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %8, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i32 @list_insert(i32* %19, %struct.TYPE_7__* %23, %struct.TYPE_7__* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @listitem_remove(i32* %31, %struct.TYPE_7__* %37)
  br label %14

39:                                               ; preds = %14
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %7, align 8
  %43 = icmp ne i64 %41, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %13, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = call i32 @listitem_remove(i32* %48, %struct.TYPE_7__* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %12, align 8
  br label %40

52:                                               ; preds = %40
  ret void
}

declare dso_local i32 @list_insert(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @listitem_remove(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
