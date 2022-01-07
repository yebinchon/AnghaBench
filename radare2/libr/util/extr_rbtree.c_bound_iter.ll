; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_rbtree.c_bound_iter.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_rbtree.c_bound_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, %struct.TYPE_7__** } (%struct.TYPE_7__*, i8*, i32 (i8*, %struct.TYPE_7__*, i8*)*, i32, i32, i8*)* @bound_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, %struct.TYPE_7__** } @bound_iter(%struct.TYPE_7__* %0, i8* %1, i32 (i8*, %struct.TYPE_7__*, i8*)* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, %struct.TYPE_7__*, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 (i8*, %struct.TYPE_7__*, i8*)* %2, i32 (i8*, %struct.TYPE_7__*, i8*)** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %67, %6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %16
  %20 = load i32 (i8*, %struct.TYPE_7__*, i8*)*, i32 (i8*, %struct.TYPE_7__*, i8*)** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 %20(i8* %21, %struct.TYPE_7__* %22, i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %50

30:                                               ; preds = %19
  %31 = load i32, i32* %14, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %41
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %43, align 8
  br label %44

44:                                               ; preds = %36, %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %8, align 8
  br label %67

50:                                               ; preds = %30, %27
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 %58
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %60, align 8
  br label %61

61:                                               ; preds = %53, %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %8, align 8
  br label %67

67:                                               ; preds = %61, %44
  br label %16

68:                                               ; preds = %16
  %69 = bitcast %struct.TYPE_8__* %7 to { i64, %struct.TYPE_7__** }*
  %70 = load { i64, %struct.TYPE_7__** }, { i64, %struct.TYPE_7__** }* %69, align 8
  ret { i64, %struct.TYPE_7__** } %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
