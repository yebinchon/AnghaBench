; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_transpose_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_transpose_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_matrix = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transpose_matrix(%struct.wined3d_matrix* %0, %struct.wined3d_matrix* %1) #0 {
  %3 = alloca %struct.wined3d_matrix*, align 8
  %4 = alloca %struct.wined3d_matrix*, align 8
  %5 = alloca %struct.wined3d_matrix, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_matrix* %0, %struct.wined3d_matrix** %3, align 8
  store %struct.wined3d_matrix* %1, %struct.wined3d_matrix** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = mul i32 4, %18
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %5, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = mul i32 4, %26
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  store i32 %24, i32* %31, align 4
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %12

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %3, align 8
  %41 = bitcast %struct.wined3d_matrix* %40 to i8*
  %42 = bitcast %struct.wined3d_matrix* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
