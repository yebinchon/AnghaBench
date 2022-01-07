; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqGetlineAsync2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqGetlineAsync2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i8* }

@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqGetlineAsync2(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %98

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %81, %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br label %34

34:                                               ; preds = %26, %23
  %35 = phi i1 [ false, %23 ], [ %33, %26 ]
  br i1 %35, label %36, label %82

36:                                               ; preds = %34
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds i8, i8* %39, i64 %42
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %9, align 1
  %46 = load i8, i8* %9, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %81

54:                                               ; preds = %36
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 92
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -1, i32* %4, align 4
  br label %98

77:                                               ; preds = %70, %64, %54
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  br label %98

81:                                               ; preds = %36
  br label %23

82:                                               ; preds = %34
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 3
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 3
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %85, %82
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %88, %77, %76, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
