; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_sparse_array_lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_sparse_array_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key2index = type { i64 }
%struct.sparse_array = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key2index* (%struct.sparse_array*, i64, i32*)* @sparse_array_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key2index* @sparse_array_lookup(%struct.sparse_array* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.key2index*, align 8
  %5 = alloca %struct.sparse_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.key2index*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sparse_array* %0, %struct.sparse_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %12 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  store %struct.key2index* null, %struct.key2index** %4, align 8
  br label %113

18:                                               ; preds = %3
  %19 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %20 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %24 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %23, i32 0, i32 0
  %25 = load i32, i32* %10, align 4
  %26 = sub i32 %25, 1
  %27 = call %struct.key2index* @vector_at(i32* %24, i32 %26)
  store %struct.key2index* %27, %struct.key2index** %8, align 8
  %28 = load %struct.key2index*, %struct.key2index** %8, align 8
  %29 = getelementptr inbounds %struct.key2index, %struct.key2index* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  store %struct.key2index* null, %struct.key2index** %4, align 8
  br label %113

36:                                               ; preds = %18
  %37 = load %struct.key2index*, %struct.key2index** %8, align 8
  %38 = getelementptr inbounds %struct.key2index, %struct.key2index* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = sub i32 %43, 1
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.key2index*, %struct.key2index** %8, align 8
  store %struct.key2index* %46, %struct.key2index** %4, align 8
  br label %113

47:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  %48 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %49 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.key2index* @vector_at(i32* %49, i32 %50)
  store %struct.key2index* %51, %struct.key2index** %8, align 8
  %52 = load %struct.key2index*, %struct.key2index** %8, align 8
  %53 = getelementptr inbounds %struct.key2index, %struct.key2index* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32*, i32** %7, align 8
  store i32 0, i32* %58, align 4
  %59 = load %struct.key2index*, %struct.key2index** %8, align 8
  store %struct.key2index* %59, %struct.key2index** %4, align 8
  br label %113

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %97, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %66, %67
  %69 = udiv i32 %68, 2
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %72 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %71, i32 0, i32 0
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.key2index* @vector_at(i32* %72, i32 %74)
  store %struct.key2index* %75, %struct.key2index** %8, align 8
  %76 = load %struct.key2index*, %struct.key2index** %8, align 8
  %77 = getelementptr inbounds %struct.key2index, %struct.key2index* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  br label %97

84:                                               ; preds = %65
  %85 = load %struct.key2index*, %struct.key2index** %8, align 8
  %86 = getelementptr inbounds %struct.key2index, %struct.key2index* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %96

94:                                               ; preds = %84
  %95 = load %struct.key2index*, %struct.key2index** %8, align 8
  store %struct.key2index* %95, %struct.key2index** %4, align 8
  br label %113

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %81
  br label %61

98:                                               ; preds = %61
  %99 = load %struct.key2index*, %struct.key2index** %8, align 8
  %100 = getelementptr inbounds %struct.key2index, %struct.key2index* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %106 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %105, i32 0, i32 0
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = call %struct.key2index* @vector_at(i32* %106, i32 %109)
  store %struct.key2index* %110, %struct.key2index** %8, align 8
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.key2index*, %struct.key2index** %8, align 8
  store %struct.key2index* %112, %struct.key2index** %4, align 8
  br label %113

113:                                              ; preds = %111, %94, %57, %42, %33, %16
  %114 = load %struct.key2index*, %struct.key2index** %4, align 8
  ret %struct.key2index* %114
}

declare dso_local %struct.key2index* @vector_at(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
