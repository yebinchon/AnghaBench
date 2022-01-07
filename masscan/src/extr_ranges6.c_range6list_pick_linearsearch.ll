; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_pick_linearsearch.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_pick_linearsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.Range6List = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@range6list_pick_linearsearch.emptyaddress = internal constant %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"end of list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Range6List*, i64)* @range6list_pick_linearsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @range6list_pick_linearsearch(%struct.Range6List* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.Range6List*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.Range6List* %0, %struct.Range6List** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %11 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %8
  %15 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %16 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %24 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @DIFF(i32 %22, i32 %30)
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %14
  %37 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %38 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @ADD1(i32 %44, i64 %45)
  %47 = bitcast %struct.TYPE_6__* %3 to i64*
  store i64 %46, i64* %47, align 4
  br label %59

48:                                               ; preds = %14
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %8

56:                                               ; preds = %8
  %57 = call i32 @assert(i32 0)
  %58 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 bitcast (%struct.TYPE_6__* @range6list_pick_linearsearch.emptyaddress to i8*), i64 8, i1 false)
  br label %59

59:                                               ; preds = %56, %36
  %60 = bitcast %struct.TYPE_6__* %3 to i64*
  %61 = load i64, i64* %60, align 4
  ret i64 %61
}

declare dso_local i64 @DIFF(i32, i32) #1

declare dso_local i64 @ADD1(i32, i64) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
