; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LogicalTapeRead(%struct.TYPE_6__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i1 [ false, %4 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  br label %37

37:                                               ; preds = %68, %20
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = call i32 @ltsReadFillBuffer(%struct.TYPE_6__* %49, %struct.TYPE_7__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %97

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i64, i64* %11, align 8
  %70 = icmp ugt i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @memcpy(i8* %73, i64 %80, i64 %81)
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %8, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %37

97:                                               ; preds = %53, %37
  %98 = load i64, i64* %10, align 8
  ret i64 %98
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ltsReadFillBuffer(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
