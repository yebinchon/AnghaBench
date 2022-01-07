; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_sparse_array_add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_sparse_array_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparse_array = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pool = type { i32 }
%struct.key2index = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"re-adding an existing key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sparse_array_add(%struct.sparse_array* %0, i64 %1, %struct.pool* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sparse_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key2index*, align 8
  %11 = alloca %struct.key2index*, align 8
  store %struct.sparse_array* %0, %struct.sparse_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pool* %2, %struct.pool** %7, align 8
  %12 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.key2index* @sparse_array_lookup(%struct.sparse_array* %12, i64 %13, i32* %8)
  store %struct.key2index* %14, %struct.key2index** %10, align 8
  %15 = load %struct.key2index*, %struct.key2index** %10, align 8
  %16 = icmp ne %struct.key2index* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.key2index*, %struct.key2index** %10, align 8
  %19 = getelementptr inbounds %struct.key2index, %struct.key2index* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %79

25:                                               ; preds = %17, %3
  %26 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %27 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %26, i32 0, i32 1
  %28 = load %struct.pool*, %struct.pool** %7, align 8
  %29 = call i8* @vector_add(%struct.TYPE_3__* %27, %struct.pool* %28)
  %30 = bitcast i8* %29 to %struct.key2index*
  store %struct.key2index* %30, %struct.key2index** %11, align 8
  %31 = load %struct.key2index*, %struct.key2index** %10, align 8
  %32 = icmp ne %struct.key2index* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %25
  %34 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %35 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 2
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %42 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %33
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %52 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %51, i32 0, i32 1
  %53 = load i32, i32* %9, align 4
  %54 = sub i32 %53, 1
  %55 = call %struct.key2index* @vector_at(%struct.TYPE_3__* %52, i32 %54)
  store %struct.key2index* %55, %struct.key2index** %10, align 8
  %56 = load %struct.key2index*, %struct.key2index** %11, align 8
  %57 = load %struct.key2index*, %struct.key2index** %10, align 8
  %58 = bitcast %struct.key2index* %56 to i8*
  %59 = bitcast %struct.key2index* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load %struct.key2index*, %struct.key2index** %10, align 8
  store %struct.key2index* %60, %struct.key2index** %11, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %25
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.key2index*, %struct.key2index** %11, align 8
  %68 = getelementptr inbounds %struct.key2index, %struct.key2index* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %70 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.key2index*, %struct.key2index** %11, align 8
  %74 = getelementptr inbounds %struct.key2index, %struct.key2index* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sparse_array*, %struct.sparse_array** %5, align 8
  %76 = getelementptr inbounds %struct.sparse_array, %struct.sparse_array* %75, i32 0, i32 0
  %77 = load %struct.pool*, %struct.pool** %7, align 8
  %78 = call i8* @vector_add(%struct.TYPE_3__* %76, %struct.pool* %77)
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %65, %23
  %80 = load i8*, i8** %4, align 8
  ret i8* %80
}

declare dso_local %struct.key2index* @sparse_array_lookup(%struct.sparse_array*, i64, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i8* @vector_add(%struct.TYPE_3__*, %struct.pool*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.key2index* @vector_at(%struct.TYPE_3__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
