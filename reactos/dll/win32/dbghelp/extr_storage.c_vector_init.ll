; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_vector_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_vector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i64, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_init(%struct.vector* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vector* %0, %struct.vector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vector*, %struct.vector** %4, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 5
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, 3
  %11 = and i32 %10, -4
  %12 = load %struct.vector*, %struct.vector** %4, align 8
  %13 = getelementptr inbounds %struct.vector, %struct.vector* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %45 [
    i32 2, label %15
    i32 4, label %18
    i32 8, label %21
    i32 16, label %24
    i32 32, label %27
    i32 64, label %30
    i32 128, label %33
    i32 256, label %36
    i32 512, label %39
    i32 1024, label %42
  ]

15:                                               ; preds = %3
  %16 = load %struct.vector*, %struct.vector** %4, align 8
  %17 = getelementptr inbounds %struct.vector, %struct.vector* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.vector*, %struct.vector** %4, align 8
  %20 = getelementptr inbounds %struct.vector, %struct.vector* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.vector*, %struct.vector** %4, align 8
  %23 = getelementptr inbounds %struct.vector, %struct.vector* %22, i32 0, i32 1
  store i32 3, i32* %23, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load %struct.vector*, %struct.vector** %4, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load %struct.vector*, %struct.vector** %4, align 8
  %29 = getelementptr inbounds %struct.vector, %struct.vector* %28, i32 0, i32 1
  store i32 5, i32* %29, align 4
  br label %47

30:                                               ; preds = %3
  %31 = load %struct.vector*, %struct.vector** %4, align 8
  %32 = getelementptr inbounds %struct.vector, %struct.vector* %31, i32 0, i32 1
  store i32 6, i32* %32, align 4
  br label %47

33:                                               ; preds = %3
  %34 = load %struct.vector*, %struct.vector** %4, align 8
  %35 = getelementptr inbounds %struct.vector, %struct.vector* %34, i32 0, i32 1
  store i32 7, i32* %35, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load %struct.vector*, %struct.vector** %4, align 8
  %38 = getelementptr inbounds %struct.vector, %struct.vector* %37, i32 0, i32 1
  store i32 8, i32* %38, align 4
  br label %47

39:                                               ; preds = %3
  %40 = load %struct.vector*, %struct.vector** %4, align 8
  %41 = getelementptr inbounds %struct.vector, %struct.vector* %40, i32 0, i32 1
  store i32 9, i32* %41, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load %struct.vector*, %struct.vector** %4, align 8
  %44 = getelementptr inbounds %struct.vector, %struct.vector* %43, i32 0, i32 1
  store i32 10, i32* %44, align 4
  br label %47

45:                                               ; preds = %3
  %46 = call i32 @assert(i32 0)
  br label %47

47:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  %48 = load %struct.vector*, %struct.vector** %4, align 8
  %49 = getelementptr inbounds %struct.vector, %struct.vector* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.vector*, %struct.vector** %4, align 8
  %51 = getelementptr inbounds %struct.vector, %struct.vector* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.vector*, %struct.vector** %4, align 8
  %53 = getelementptr inbounds %struct.vector, %struct.vector* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
