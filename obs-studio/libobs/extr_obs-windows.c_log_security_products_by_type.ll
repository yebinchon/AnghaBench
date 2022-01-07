; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_security_products_by_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_security_products_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__**)*, i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)* }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\09%S: %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @log_security_products_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_security_products_by_type(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %14, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %15(%struct.TYPE_18__* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i32 (%struct.TYPE_18__*, i32*)*, i32 (%struct.TYPE_18__*, i32*)** %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = call i32 %28(%struct.TYPE_18__* %29, i32* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = call i32 %39(%struct.TYPE_18__* %40)
  br label %114

42:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %103, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__**)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__**)** %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 %52(%struct.TYPE_18__* %53, i32 %54, %struct.TYPE_17__** %7)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %103

60:                                               ; preds = %47
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = call i32 %65(%struct.TYPE_17__* %66, i32* %8)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %103

72:                                               ; preds = %60
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = call i32 %77(%struct.TYPE_17__* %78, i32* %9)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @SysFreeString(i32 %84)
  br label %103

86:                                               ; preds = %72
  %87 = load i32, i32* @LOG_INFO, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @get_str_for_state(i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @get_str_for_type(i32 %91)
  %93 = call i32 @blog(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %90, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @SysFreeString(i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %99, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = call i32 %100(%struct.TYPE_17__* %101)
  br label %103

103:                                              ; preds = %86, %83, %71, %59
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %43

106:                                              ; preds = %43
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = call i32 %111(%struct.TYPE_18__* %112)
  br label %114

114:                                              ; preds = %106, %34, %22
  ret void
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @blog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_str_for_state(i32) #1

declare dso_local i32 @get_str_for_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
