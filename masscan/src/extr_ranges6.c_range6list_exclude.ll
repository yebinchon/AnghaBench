; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_exclude.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i32, %struct.Range6* }
%struct.Range6 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @range6list_exclude(%struct.Range6List* %0, %struct.Range6List* %1) #0 {
  %3 = alloca %struct.Range6List*, align 8
  %4 = alloca %struct.Range6List*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Range6, align 4
  store %struct.Range6List* %0, %struct.Range6List** %3, align 8
  store %struct.Range6List* %1, %struct.Range6List** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %11 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %16 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %15, i32 0, i32 1
  %17 = load %struct.Range6*, %struct.Range6** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Range6, %struct.Range6* %17, i64 %19
  %21 = bitcast %struct.Range6* %7 to i8*
  %22 = bitcast %struct.Range6* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @DIFF(i32 %24, i32 %26)
  %28 = add i64 %27, 1
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %34 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @range6list_remove_range(%struct.Range6List* %33, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %14
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @DIFF(i32, i32) #2

declare dso_local i32 @range6list_remove_range(%struct.Range6List*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
