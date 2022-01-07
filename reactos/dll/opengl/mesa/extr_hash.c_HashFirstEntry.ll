; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_hash.c_HashFirstEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_hash.c_HashFirstEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HashTable = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@TABLE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HashFirstEntry(%struct.HashTable* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.HashTable*, align 8
  %4 = alloca i64, align 8
  store %struct.HashTable* %0, %struct.HashTable** %3, align 8
  %5 = load %struct.HashTable*, %struct.HashTable** %3, align 8
  %6 = call i32 @assert(%struct.HashTable* %5)
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TABLE_SIZE, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load %struct.HashTable*, %struct.HashTable** %3, align 8
  %13 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.HashTable*, %struct.HashTable** %3, align 8
  %21 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %33

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %7

32:                                               ; preds = %7
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @assert(%struct.HashTable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
