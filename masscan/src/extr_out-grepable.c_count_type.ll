; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_count_type.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_count_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, %struct.Range* }
%struct.Range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RangeList*, i32, i32)* @count_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_type(%struct.RangeList* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Range, align 4
  store %struct.RangeList* %0, %struct.RangeList** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %65, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %17 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %22 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %21, i32 0, i32 1
  %23 = load %struct.Range*, %struct.Range** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.Range, %struct.Range* %23, i64 %25
  %27 = bitcast %struct.Range* %11 to i8*
  %28 = bitcast %struct.Range* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %65

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %65

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.Range, %struct.Range* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %58, %60
  %62 = add i32 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %56, %39, %33
  %66 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %67 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %66, i32 1
  store %struct.RangeList* %67, %struct.RangeList** %4, align 8
  br label %14

68:                                               ; preds = %14
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
