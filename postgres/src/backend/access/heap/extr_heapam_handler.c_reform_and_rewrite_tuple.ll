; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_reform_and_rewrite_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_reform_and_rewrite_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32)* @reform_and_rewrite_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reform_and_rewrite_tuple(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_7__* @RelationGetDescr(i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_7__* @RelationGetDescr(i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @heap_deform_tuple(i32 %21, %struct.TYPE_7__* %22, i32* %23, i32* %24)
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %45, %6
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @heap_form_tuple(%struct.TYPE_7__* %49, i32* %50, i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @rewrite_heap_tuple(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @heap_freetuple(i32 %57)
  ret void
}

declare dso_local %struct.TYPE_7__* @RelationGetDescr(i32) #1

declare dso_local i32 @heap_deform_tuple(i32, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @heap_form_tuple(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @rewrite_heap_tuple(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
