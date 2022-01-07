; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sha1.c_nn_sha1_result.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sha1.c_nn_sha1_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sha1 = type { i32, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nn_sha1_result(%struct.nn_sha1* %0) #0 {
  %2 = alloca %struct.nn_sha1*, align 8
  %3 = alloca i32, align 4
  store %struct.nn_sha1* %0, %struct.nn_sha1** %2, align 8
  %4 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %5 = call i32 @nn_sha1_add(%struct.nn_sha1* %4, i32 128)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %8 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 56
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %13 = call i32 @nn_sha1_add(%struct.nn_sha1* %12, i32 0)
  br label %6

14:                                               ; preds = %6
  %15 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %16 = call i32 @nn_sha1_add(%struct.nn_sha1* %15, i32 0)
  %17 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %18 = call i32 @nn_sha1_add(%struct.nn_sha1* %17, i32 0)
  %19 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %20 = call i32 @nn_sha1_add(%struct.nn_sha1* %19, i32 0)
  %21 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %22 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %23 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 29
  %26 = call i32 @nn_sha1_add(%struct.nn_sha1* %21, i32 %25)
  %27 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %28 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %29 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 21
  %32 = call i32 @nn_sha1_add(%struct.nn_sha1* %27, i32 %31)
  %33 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %34 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %35 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 13
  %38 = call i32 @nn_sha1_add(%struct.nn_sha1* %33, i32 %37)
  %39 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %40 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %41 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 5
  %44 = call i32 @nn_sha1_add(%struct.nn_sha1* %39, i32 %43)
  %45 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %46 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %47 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 3
  %50 = call i32 @nn_sha1_add(%struct.nn_sha1* %45, i32 %49)
  %51 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %52 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %105, %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 5
  br i1 %58, label %59, label %108

59:                                               ; preds = %56
  %60 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %61 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 24
  %68 = and i32 %67, -16777216
  %69 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %70 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = and i32 %76, 16711680
  %78 = or i32 %68, %77
  %79 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %80 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 65280
  %88 = or i32 %78, %87
  %89 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %90 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 24
  %97 = and i32 %96, 255
  %98 = or i32 %88, %97
  %99 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %100 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %59
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %56

108:                                              ; preds = %56
  br label %109

109:                                              ; preds = %108, %14
  %110 = load %struct.nn_sha1*, %struct.nn_sha1** %2, align 8
  %111 = getelementptr inbounds %struct.nn_sha1, %struct.nn_sha1* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  ret i32* %112
}

declare dso_local i32 @nn_sha1_add(%struct.nn_sha1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
