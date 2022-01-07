; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_hash_table_add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_hash_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.hash_table_elt*, %struct.hash_table_elt* }
%struct.hash_table_elt = type { %struct.hash_table_elt*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_table_add(%struct.hash_table* %0, %struct.hash_table_elt* %1) #0 {
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca %struct.hash_table_elt*, align 8
  %5 = alloca i32, align 4
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  store %struct.hash_table_elt* %1, %struct.hash_table_elt** %4, align 8
  %6 = load %struct.hash_table_elt*, %struct.hash_table_elt** %4, align 8
  %7 = getelementptr inbounds %struct.hash_table_elt, %struct.hash_table_elt* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @hash_table_hash(i32 %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  %18 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %19 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %22 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call %struct.TYPE_4__* @pool_alloc(i32 %20, i32 %26)
  %28 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 2
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @assert(%struct.TYPE_4__* %32)
  %34 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %38 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(%struct.TYPE_4__* %36, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %17, %2
  %45 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %46 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.hash_table_elt*, %struct.hash_table_elt** %51, align 8
  %53 = icmp ne %struct.hash_table_elt* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %44
  %55 = load %struct.hash_table_elt*, %struct.hash_table_elt** %4, align 8
  %56 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %57 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store %struct.hash_table_elt* %55, %struct.hash_table_elt** %62, align 8
  br label %74

63:                                               ; preds = %44
  %64 = load %struct.hash_table_elt*, %struct.hash_table_elt** %4, align 8
  %65 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.hash_table_elt*, %struct.hash_table_elt** %71, align 8
  %73 = getelementptr inbounds %struct.hash_table_elt, %struct.hash_table_elt* %72, i32 0, i32 0
  store %struct.hash_table_elt* %64, %struct.hash_table_elt** %73, align 8
  br label %74

74:                                               ; preds = %63, %54
  %75 = load %struct.hash_table_elt*, %struct.hash_table_elt** %4, align 8
  %76 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.hash_table_elt* %75, %struct.hash_table_elt** %82, align 8
  %83 = load %struct.hash_table_elt*, %struct.hash_table_elt** %4, align 8
  %84 = getelementptr inbounds %struct.hash_table_elt, %struct.hash_table_elt* %83, i32 0, i32 0
  store %struct.hash_table_elt* null, %struct.hash_table_elt** %84, align 8
  %85 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %86 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  ret void
}

declare dso_local i32 @hash_table_hash(i32, i32) #1

declare dso_local %struct.TYPE_4__* @pool_alloc(i32, i32) #1

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
