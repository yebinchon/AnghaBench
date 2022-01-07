; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getCopyStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_getCopyStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @getCopyStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getCopyStart(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_12__* @PQmakeEmptyPGresult(%struct.TYPE_14__* %10, i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i64 @pqGetc(i32* %18, %struct.TYPE_14__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %94

23:                                               ; preds = %16
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = call i64 @pqGetInt(i32* %30, i32 2, %struct.TYPE_14__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %94

35:                                               ; preds = %23
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @pqResultAlloc(%struct.TYPE_12__* %42, i32 %46, i32 1)
  %48 = inttoptr i64 %47 to %struct.TYPE_13__*
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %41
  br label %94

56:                                               ; preds = %41
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @MemSet(%struct.TYPE_13__* %59, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %56, %35
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %87, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = call i64 @pqGetInt(i32* %9, i32 2, %struct.TYPE_14__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %94

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %66

90:                                               ; preds = %66
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %93, align 8
  store i32 0, i32* %3, align 4
  br label %98

94:                                               ; preds = %74, %55, %34, %22, %15
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = call i32 @PQclear(%struct.TYPE_12__* %95)
  %97 = load i32, i32* @EOF, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_12__* @PQmakeEmptyPGresult(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @pqGetc(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @pqResultAlloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @PQclear(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
