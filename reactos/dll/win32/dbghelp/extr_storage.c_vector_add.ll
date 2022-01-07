; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_vector_add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_vector_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32, i32, i32, i8**, i32 }
%struct.pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_add(%struct.vector* %0, %struct.pool* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vector*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.vector* %0, %struct.vector** %4, align 8
  store %struct.pool* %1, %struct.pool** %5, align 8
  %9 = load %struct.vector*, %struct.vector** %4, align 8
  %10 = getelementptr inbounds %struct.vector, %struct.vector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add i32 %11, 1
  store i32 %12, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %13 = load %struct.vector*, %struct.vector** %4, align 8
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.vector*, %struct.vector** %4, align 8
  %22 = getelementptr inbounds %struct.vector, %struct.vector* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vector*, %struct.vector** %4, align 8
  %25 = getelementptr inbounds %struct.vector, %struct.vector* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %23, %26
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %29, label %98

29:                                               ; preds = %2
  %30 = load %struct.vector*, %struct.vector** %4, align 8
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vector*, %struct.vector** %4, align 8
  %34 = getelementptr inbounds %struct.vector, %struct.vector* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %29
  %38 = load %struct.vector*, %struct.vector** %4, align 8
  %39 = getelementptr inbounds %struct.vector, %struct.vector* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 2, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.pool*, %struct.pool** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @pool_alloc(%struct.pool* %46, i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.vector*, %struct.vector** %4, align 8
  %54 = getelementptr inbounds %struct.vector, %struct.vector* %53, i32 0, i32 4
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.vector*, %struct.vector** %4, align 8
  %57 = getelementptr inbounds %struct.vector, %struct.vector* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(i8* %52, i8** %55, i32 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to i8**
  %65 = load %struct.vector*, %struct.vector** %4, align 8
  %66 = getelementptr inbounds %struct.vector, %struct.vector* %65, i32 0, i32 4
  store i8** %64, i8*** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.vector*, %struct.vector** %4, align 8
  %69 = getelementptr inbounds %struct.vector, %struct.vector* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %45, %29
  %71 = load %struct.pool*, %struct.pool** %5, align 8
  %72 = load %struct.vector*, %struct.vector** %4, align 8
  %73 = getelementptr inbounds %struct.vector, %struct.vector* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.vector*, %struct.vector** %4, align 8
  %76 = getelementptr inbounds %struct.vector, %struct.vector* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %74, %77
  %79 = call i8* @pool_alloc(%struct.pool* %71, i32 %78)
  %80 = load %struct.vector*, %struct.vector** %4, align 8
  %81 = getelementptr inbounds %struct.vector, %struct.vector* %80, i32 0, i32 4
  %82 = load i8**, i8*** %81, align 8
  %83 = load %struct.vector*, %struct.vector** %4, align 8
  %84 = getelementptr inbounds %struct.vector, %struct.vector* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %82, i64 %86
  store i8* %79, i8** %87, align 8
  %88 = load %struct.vector*, %struct.vector** %4, align 8
  %89 = getelementptr inbounds %struct.vector, %struct.vector* %88, i32 0, i32 4
  %90 = load i8**, i8*** %89, align 8
  %91 = load %struct.vector*, %struct.vector** %4, align 8
  %92 = getelementptr inbounds %struct.vector, %struct.vector* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %90, i64 %95
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %3, align 8
  br label %102

98:                                               ; preds = %2
  %99 = load %struct.vector*, %struct.vector** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i8* @vector_at(%struct.vector* %99, i32 %100)
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %98, %70
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @pool_alloc(%struct.pool*, i32) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i8* @vector_at(%struct.vector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
