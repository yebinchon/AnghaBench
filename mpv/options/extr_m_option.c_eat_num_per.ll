; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_eat_num_per.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_eat_num_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @eat_num_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eat_num_per(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @bstrtoll(i64 %12, %struct.TYPE_6__* %8, i32 10)
  store i64 %13, i64* %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @INT_MIN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @INT_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %3
  store i32 0, i32* %4, align 4
  br label %51

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = bitcast %struct.TYPE_6__* %34 to i8*
  %36 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = call i64 @bstr_eatstart0(%struct.TYPE_6__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = icmp sle i64 %43, 100
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = bitcast %struct.TYPE_6__* %47 to i8*
  %49 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  br label %50

50:                                               ; preds = %45, %42, %39, %29
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @bstrtoll(i64, %struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bstr_eatstart0(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
