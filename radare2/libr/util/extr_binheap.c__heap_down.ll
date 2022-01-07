; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_binheap.c__heap_down.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_binheap.c__heap_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i8*, i8*)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i8*)* @_heap_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_heap_down(%struct.TYPE_7__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  br label %8

8:                                                ; preds = %67, %3
  %9 = load i64, i64* %5, align 8
  %10 = mul i64 %9, 2
  %11 = add i64 %10, 1
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  %36 = call i8* @r_pvector_at(%struct.TYPE_8__* %33, i64 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %7, align 8
  %40 = call i8* @r_pvector_at(%struct.TYPE_8__* %38, i64 %39)
  %41 = call i64 %31(i8* %36, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %43, %28, %19
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i8* @r_pvector_at(%struct.TYPE_8__* %51, i64 %52)
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 %49(i8* %53, i8* %54)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %69

58:                                               ; preds = %46
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %7, align 8
  %65 = call i8* @r_pvector_at(%struct.TYPE_8__* %63, i64 %64)
  %66 = call i32 @r_pvector_set(%struct.TYPE_8__* %60, i64 %61, i8* %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %5, align 8
  br label %8

69:                                               ; preds = %57, %8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @r_pvector_set(%struct.TYPE_8__* %71, i64 %72, i8* %73)
  ret void
}

declare dso_local i8* @r_pvector_at(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @r_pvector_set(%struct.TYPE_8__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
