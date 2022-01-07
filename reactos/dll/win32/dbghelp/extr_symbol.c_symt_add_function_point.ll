; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_add_function_point.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_add_function_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_hierarchy_point = type { %struct.symt, %struct.TYPE_2__, %struct.location, i32* }
%struct.symt = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.location = type { i32 }
%struct.module = type { i32 }
%struct.symt_function = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt_hierarchy_point* @symt_add_function_point(%struct.module* %0, %struct.symt_function* %1, i32 %2, %struct.location* %3, i8* %4) #0 {
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.symt_function*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.location*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.symt_hierarchy_point*, align 8
  %12 = alloca %struct.symt**, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store %struct.symt_function* %1, %struct.symt_function** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.location* %3, %struct.location** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.module*, %struct.module** %6, align 8
  %14 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 0
  %15 = call %struct.symt_hierarchy_point* @pool_alloc(i32* %14, i32 32)
  store %struct.symt_hierarchy_point* %15, %struct.symt_hierarchy_point** %11, align 8
  %16 = icmp ne %struct.symt_hierarchy_point* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.symt_hierarchy_point*, %struct.symt_hierarchy_point** %11, align 8
  %20 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.symt, %struct.symt* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %23 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %22, i32 0, i32 1
  %24 = load %struct.symt_hierarchy_point*, %struct.symt_hierarchy_point** %11, align 8
  %25 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.symt_hierarchy_point*, %struct.symt_hierarchy_point** %11, align 8
  %27 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %26, i32 0, i32 2
  %28 = load %struct.location*, %struct.location** %9, align 8
  %29 = bitcast %struct.location* %27 to i8*
  %30 = bitcast %struct.location* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.module*, %struct.module** %6, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 0
  %36 = load i8*, i8** %10, align 8
  %37 = call i32* @pool_strdup(i32* %35, i8* %36)
  br label %39

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32* [ %37, %33 ], [ null, %38 ]
  %41 = load %struct.symt_hierarchy_point*, %struct.symt_hierarchy_point** %11, align 8
  %42 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %45 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %44, i32 0, i32 0
  %46 = load %struct.module*, %struct.module** %6, align 8
  %47 = getelementptr inbounds %struct.module, %struct.module* %46, i32 0, i32 0
  %48 = call %struct.symt** @vector_add(i32* %45, i32* %47)
  store %struct.symt** %48, %struct.symt*** %12, align 8
  %49 = load %struct.symt_hierarchy_point*, %struct.symt_hierarchy_point** %11, align 8
  %50 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %49, i32 0, i32 0
  %51 = load %struct.symt**, %struct.symt*** %12, align 8
  store %struct.symt* %50, %struct.symt** %51, align 8
  br label %52

52:                                               ; preds = %39, %5
  %53 = load %struct.symt_hierarchy_point*, %struct.symt_hierarchy_point** %11, align 8
  ret %struct.symt_hierarchy_point* %53
}

declare dso_local %struct.symt_hierarchy_point* @pool_alloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @pool_strdup(i32*, i8*) #1

declare dso_local %struct.symt** @vector_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
