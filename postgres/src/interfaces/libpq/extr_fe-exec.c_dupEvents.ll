; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_dupEvents.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_dupEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i32, i64*)* @dupEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @dupEvents(%struct.TYPE_8__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %120

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 32
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @malloc(i64 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %120

27:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %111, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %114

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  store i32 %38, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %49, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call %struct.TYPE_8__* @strdup(%struct.TYPE_8__* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = icmp ne %struct.TYPE_8__* %82, null
  br i1 %83, label %100, label %84

84:                                               ; preds = %32
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %10, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @free(%struct.TYPE_8__* %95)
  br label %85

97:                                               ; preds = %85
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = call i32 @free(%struct.TYPE_8__* %98)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %120

100:                                              ; preds = %32
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i64 @strlen(%struct.TYPE_8__* %106)
  %108 = add nsw i64 %107, 1
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %9, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %28

114:                                              ; preds = %28
  %115 = load i64, i64* %9, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %115
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %4, align 8
  br label %120

120:                                              ; preds = %114, %97, %26, %16
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %121
}

declare dso_local i64 @malloc(i64) #1

declare dso_local %struct.TYPE_8__* @strdup(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @strlen(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
