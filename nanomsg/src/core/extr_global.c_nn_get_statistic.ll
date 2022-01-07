; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_get_statistic.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_get_statistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_get_statistic(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_sock*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @nn_global_hold_socket(%struct.nn_sock** %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @nn_slow(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %96 [
    i32 131, label %21
    i32 142, label %26
    i32 132, label %31
    i32 139, label %36
    i32 136, label %41
    i32 140, label %46
    i32 141, label %51
    i32 128, label %56
    i32 129, label %61
    i32 137, label %66
    i32 138, label %71
    i32 135, label %76
    i32 130, label %81
    i32 133, label %86
    i32 134, label %91
  ]

21:                                               ; preds = %19
  %22 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %23 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %98

26:                                               ; preds = %19
  %27 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %28 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %98

31:                                               ; preds = %19
  %32 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %33 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %98

36:                                               ; preds = %19
  %37 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %38 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %98

41:                                               ; preds = %19
  %42 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %43 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %98

46:                                               ; preds = %19
  %47 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %48 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %98

51:                                               ; preds = %19
  %52 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %53 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %98

56:                                               ; preds = %19
  %57 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %58 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  br label %98

61:                                               ; preds = %19
  %62 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %63 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  br label %98

66:                                               ; preds = %19
  %67 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %68 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %98

71:                                               ; preds = %19
  %72 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %73 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  br label %98

76:                                               ; preds = %19
  %77 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %78 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  br label %98

81:                                               ; preds = %19
  %82 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %83 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  br label %98

86:                                               ; preds = %19
  %87 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %88 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  br label %98

91:                                               ; preds = %19
  %92 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %93 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  br label %98

96:                                               ; preds = %19
  store i32 -1, i32* %8, align 4
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* @errno, align 4
  br label %98

98:                                               ; preds = %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21
  %99 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %100 = call i32 @nn_global_rele_socket(%struct.nn_sock* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @nn_global_hold_socket(%struct.nn_sock**, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_global_rele_socket(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
