; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_sparse_array_find.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_sparse_array_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparse_array = type { i32 }
%struct.key2index = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sparse_array_find(%struct.sparse_array* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sparse_array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.key2index*, align 8
  store %struct.sparse_array* %0, %struct.sparse_array** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.sparse_array*, %struct.sparse_array** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.key2index* @sparse_array_lookup(%struct.sparse_array* %8, i64 %9, i32* %6)
  store %struct.key2index* %10, %struct.key2index** %7, align 8
  %11 = icmp ne %struct.key2index* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.key2index*, %struct.key2index** %7, align 8
  %14 = getelementptr inbounds %struct.key2index, %struct.key2index* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.sparse_array*, %struct.sparse_array** %4, align 8
  %20 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %19, i32 0, i32 0
  %21 = load %struct.key2index*, %struct.key2index** %7, align 8
  %22 = getelementptr inbounds %struct.key2index, %struct.key2index* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @vector_at(i32* %20, i32 %23)
  store i8* %24, i8** %3, align 8
  br label %26

25:                                               ; preds = %12, %2
  store i8* null, i8** %3, align 8
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local %struct.key2index* @sparse_array_lookup(%struct.sparse_array*, i64, i32*) #1

declare dso_local i8* @vector_at(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
