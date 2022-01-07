; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_heap_pool_grow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_heap_pool_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @heap_pool_grow(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %20, i64 %24
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 0, %26
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = icmp eq i8* %11, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @block_size(i64 %39)
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %5, align 8
  br label %66

51:                                               ; preds = %30, %4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i8* @heap_pool_alloc(%struct.TYPE_4__* %52, i64 %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %51
  %65 = load i8*, i8** %10, align 8
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %64, %42
  %67 = load i8*, i8** %5, align 8
  ret i8* %67
}

declare dso_local i64 @block_size(i64) #1

declare dso_local i8* @heap_pool_alloc(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
