; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_hash.c_HashFindFreeKeyBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_hash.c_HashFindFreeKeyBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HashTable = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HashFindFreeKeyBlock(%struct.HashTable* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.HashTable* %0, %struct.HashTable** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load %struct.HashTable*, %struct.HashTable** %4, align 8
  %14 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.HashTable*, %struct.HashTable** %4, align 8
  %19 = getelementptr inbounds %struct.HashTable, %struct.HashTable* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %49

22:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.HashTable*, %struct.HashTable** %4, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @HashLookup(%struct.HashTable* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %44

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %3, align 8
  br label %49

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %23

48:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %48, %41, %17
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @HashLookup(%struct.HashTable*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
