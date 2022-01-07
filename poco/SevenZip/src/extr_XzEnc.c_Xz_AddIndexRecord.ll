; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzEnc.c_Xz_AddIndexRecord.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzEnc.c_Xz_AddIndexRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* (%struct.TYPE_12__*, i64)* }

@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Xz_AddIndexRecord(%struct.TYPE_13__* %0, i8* %1, i8* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = icmp eq %struct.TYPE_14__* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %18, %4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = mul i64 16, %33
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = udiv i64 %35, 16
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %40, i32* %5, align 4
  br label %97

41:                                               ; preds = %26
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__* (%struct.TYPE_12__*, i64)*, %struct.TYPE_14__* (%struct.TYPE_12__*, i64)** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call %struct.TYPE_14__* %44(%struct.TYPE_12__* %45, i64 %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %12, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = icmp eq %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %51, i32* %5, align 4
  br label %97

52:                                               ; preds = %41
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(%struct.TYPE_14__* %58, %struct.TYPE_14__* %61, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = call i32 @Xz_Free(%struct.TYPE_13__* %69, %struct.TYPE_12__* %70)
  br label %72

72:                                               ; preds = %57, %52
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %75, align 8
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %72, %18
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %88
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %13, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @SZ_OK, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %80, %50, %39
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @Xz_Free(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
