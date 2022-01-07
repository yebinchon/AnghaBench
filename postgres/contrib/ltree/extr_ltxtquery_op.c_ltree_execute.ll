; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_op.c_ltree_execute.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_op.c_ltree_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ltree_execute(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 (i8*, %struct.TYPE_6__*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.TYPE_6__*)*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i8*, %struct.TYPE_6__*)* %3, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %10 = call i32 (...) @check_stack_depth()
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = call i32 %17(i8* %18, %struct.TYPE_6__* %19)
  store i32 %20, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 33
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 1
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %35 = call i32 @ltree_execute(%struct.TYPE_6__* %31, i8* %32, i32 %33, i32 (i8*, %struct.TYPE_6__*)* %34)
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %29
  %41 = phi i32 [ %38, %29 ], [ 1, %39 ]
  store i32 %41, i32* %5, align 4
  br label %87

42:                                               ; preds = %21
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 38
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %52
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %57 = call i32 @ltree_execute(%struct.TYPE_6__* %53, i8* %54, i32 %55, i32 (i8*, %struct.TYPE_6__*)* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 1
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %65 = call i32 @ltree_execute(%struct.TYPE_6__* %61, i8* %62, i32 %63, i32 (i8*, %struct.TYPE_6__*)* %64)
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %87

67:                                               ; preds = %42
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %72
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %77 = call i32 @ltree_execute(%struct.TYPE_6__* %73, i8* %74, i32 %75, i32 (i8*, %struct.TYPE_6__*)* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  br label %87

80:                                               ; preds = %67
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32 (i8*, %struct.TYPE_6__*)*, i32 (i8*, %struct.TYPE_6__*)** %9, align 8
  %86 = call i32 @ltree_execute(%struct.TYPE_6__* %82, i8* %83, i32 %84, i32 (i8*, %struct.TYPE_6__*)* %85)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %80, %79, %66, %59, %40, %16
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @check_stack_depth(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
