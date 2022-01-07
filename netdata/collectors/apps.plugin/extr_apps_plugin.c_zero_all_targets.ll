; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_zero_all_targets.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_zero_all_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32, %struct.pid_on_target*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.target* }
%struct.pid_on_target = type { %struct.pid_on_target* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.target*)* @zero_all_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zero_all_targets(%struct.target* %0) #0 {
  %2 = alloca %struct.target*, align 8
  %3 = alloca %struct.target*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pid_on_target*, align 8
  %6 = alloca %struct.pid_on_target*, align 8
  store %struct.target* %0, %struct.target** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.target*, %struct.target** %2, align 8
  store %struct.target* %7, %struct.target** %3, align 8
  br label %8

8:                                                ; preds = %123, %1
  %9 = load %struct.target*, %struct.target** %3, align 8
  %10 = icmp ne %struct.target* %9, null
  br i1 %10, label %11, label %127

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load %struct.target*, %struct.target** %3, align 8
  %15 = getelementptr inbounds %struct.target, %struct.target* %14, i32 0, i32 37
  store i64 0, i64* %15, align 8
  %16 = load %struct.target*, %struct.target** %3, align 8
  %17 = getelementptr inbounds %struct.target, %struct.target* %16, i32 0, i32 36
  store i64 0, i64* %17, align 8
  %18 = load %struct.target*, %struct.target** %3, align 8
  %19 = getelementptr inbounds %struct.target, %struct.target* %18, i32 0, i32 35
  store i64 0, i64* %19, align 8
  %20 = load %struct.target*, %struct.target** %3, align 8
  %21 = getelementptr inbounds %struct.target, %struct.target* %20, i32 0, i32 34
  store i64 0, i64* %21, align 8
  %22 = load %struct.target*, %struct.target** %3, align 8
  %23 = getelementptr inbounds %struct.target, %struct.target* %22, i32 0, i32 33
  store i64 0, i64* %23, align 8
  %24 = load %struct.target*, %struct.target** %3, align 8
  %25 = getelementptr inbounds %struct.target, %struct.target* %24, i32 0, i32 32
  store i64 0, i64* %25, align 8
  %26 = load %struct.target*, %struct.target** %3, align 8
  %27 = getelementptr inbounds %struct.target, %struct.target* %26, i32 0, i32 31
  store i64 0, i64* %27, align 8
  %28 = load %struct.target*, %struct.target** %3, align 8
  %29 = getelementptr inbounds %struct.target, %struct.target* %28, i32 0, i32 30
  store i64 0, i64* %29, align 8
  %30 = load %struct.target*, %struct.target** %3, align 8
  %31 = getelementptr inbounds %struct.target, %struct.target* %30, i32 0, i32 29
  store i64 0, i64* %31, align 8
  %32 = load %struct.target*, %struct.target** %3, align 8
  %33 = getelementptr inbounds %struct.target, %struct.target* %32, i32 0, i32 28
  store i64 0, i64* %33, align 8
  %34 = load %struct.target*, %struct.target** %3, align 8
  %35 = getelementptr inbounds %struct.target, %struct.target* %34, i32 0, i32 27
  store i64 0, i64* %35, align 8
  %36 = load %struct.target*, %struct.target** %3, align 8
  %37 = getelementptr inbounds %struct.target, %struct.target* %36, i32 0, i32 26
  store i64 0, i64* %37, align 8
  %38 = load %struct.target*, %struct.target** %3, align 8
  %39 = getelementptr inbounds %struct.target, %struct.target* %38, i32 0, i32 25
  store i64 0, i64* %39, align 8
  %40 = load %struct.target*, %struct.target** %3, align 8
  %41 = getelementptr inbounds %struct.target, %struct.target* %40, i32 0, i32 24
  store i64 0, i64* %41, align 8
  %42 = load %struct.target*, %struct.target** %3, align 8
  %43 = getelementptr inbounds %struct.target, %struct.target* %42, i32 0, i32 23
  store i64 0, i64* %43, align 8
  %44 = load %struct.target*, %struct.target** %3, align 8
  %45 = getelementptr inbounds %struct.target, %struct.target* %44, i32 0, i32 22
  store i64 0, i64* %45, align 8
  %46 = load %struct.target*, %struct.target** %3, align 8
  %47 = getelementptr inbounds %struct.target, %struct.target* %46, i32 0, i32 21
  store i64 0, i64* %47, align 8
  %48 = load %struct.target*, %struct.target** %3, align 8
  %49 = getelementptr inbounds %struct.target, %struct.target* %48, i32 0, i32 20
  store i64 0, i64* %49, align 8
  %50 = load %struct.target*, %struct.target** %3, align 8
  %51 = getelementptr inbounds %struct.target, %struct.target* %50, i32 0, i32 19
  store i64 0, i64* %51, align 8
  %52 = load %struct.target*, %struct.target** %3, align 8
  %53 = getelementptr inbounds %struct.target, %struct.target* %52, i32 0, i32 18
  store i64 0, i64* %53, align 8
  %54 = load %struct.target*, %struct.target** %3, align 8
  %55 = getelementptr inbounds %struct.target, %struct.target* %54, i32 0, i32 17
  store i64 0, i64* %55, align 8
  %56 = load %struct.target*, %struct.target** %3, align 8
  %57 = getelementptr inbounds %struct.target, %struct.target* %56, i32 0, i32 16
  store i64 0, i64* %57, align 8
  %58 = load %struct.target*, %struct.target** %3, align 8
  %59 = getelementptr inbounds %struct.target, %struct.target* %58, i32 0, i32 15
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %11
  %63 = load %struct.target*, %struct.target** %3, align 8
  %64 = getelementptr inbounds %struct.target, %struct.target* %63, i32 0, i32 15
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.target*, %struct.target** %3, align 8
  %67 = getelementptr inbounds %struct.target, %struct.target* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(i64 %65, i32 0, i32 %71)
  %73 = load %struct.target*, %struct.target** %3, align 8
  %74 = getelementptr inbounds %struct.target, %struct.target* %73, i32 0, i32 14
  store i64 0, i64* %74, align 8
  %75 = load %struct.target*, %struct.target** %3, align 8
  %76 = getelementptr inbounds %struct.target, %struct.target* %75, i32 0, i32 13
  store i64 0, i64* %76, align 8
  %77 = load %struct.target*, %struct.target** %3, align 8
  %78 = getelementptr inbounds %struct.target, %struct.target* %77, i32 0, i32 12
  store i64 0, i64* %78, align 8
  %79 = load %struct.target*, %struct.target** %3, align 8
  %80 = getelementptr inbounds %struct.target, %struct.target* %79, i32 0, i32 11
  store i64 0, i64* %80, align 8
  %81 = load %struct.target*, %struct.target** %3, align 8
  %82 = getelementptr inbounds %struct.target, %struct.target* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  %83 = load %struct.target*, %struct.target** %3, align 8
  %84 = getelementptr inbounds %struct.target, %struct.target* %83, i32 0, i32 9
  store i64 0, i64* %84, align 8
  %85 = load %struct.target*, %struct.target** %3, align 8
  %86 = getelementptr inbounds %struct.target, %struct.target* %85, i32 0, i32 8
  store i64 0, i64* %86, align 8
  %87 = load %struct.target*, %struct.target** %3, align 8
  %88 = getelementptr inbounds %struct.target, %struct.target* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.target*, %struct.target** %3, align 8
  %90 = getelementptr inbounds %struct.target, %struct.target* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %62, %11
  %92 = load %struct.target*, %struct.target** %3, align 8
  %93 = getelementptr inbounds %struct.target, %struct.target* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.target*, %struct.target** %3, align 8
  %95 = getelementptr inbounds %struct.target, %struct.target* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.target*, %struct.target** %3, align 8
  %97 = getelementptr inbounds %struct.target, %struct.target* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.target*, %struct.target** %3, align 8
  %99 = getelementptr inbounds %struct.target, %struct.target* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.target*, %struct.target** %3, align 8
  %101 = getelementptr inbounds %struct.target, %struct.target* %100, i32 0, i32 1
  %102 = load %struct.pid_on_target*, %struct.pid_on_target** %101, align 8
  %103 = call i64 @unlikely(%struct.pid_on_target* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %91
  %106 = load %struct.target*, %struct.target** %3, align 8
  %107 = getelementptr inbounds %struct.target, %struct.target* %106, i32 0, i32 1
  %108 = load %struct.pid_on_target*, %struct.pid_on_target** %107, align 8
  store %struct.pid_on_target* %108, %struct.pid_on_target** %6, align 8
  br label %109

109:                                              ; preds = %112, %105
  %110 = load %struct.pid_on_target*, %struct.pid_on_target** %6, align 8
  %111 = icmp ne %struct.pid_on_target* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.pid_on_target*, %struct.pid_on_target** %6, align 8
  store %struct.pid_on_target* %113, %struct.pid_on_target** %5, align 8
  %114 = load %struct.pid_on_target*, %struct.pid_on_target** %6, align 8
  %115 = getelementptr inbounds %struct.pid_on_target, %struct.pid_on_target* %114, i32 0, i32 0
  %116 = load %struct.pid_on_target*, %struct.pid_on_target** %115, align 8
  store %struct.pid_on_target* %116, %struct.pid_on_target** %6, align 8
  %117 = load %struct.pid_on_target*, %struct.pid_on_target** %5, align 8
  %118 = call i32 @free(%struct.pid_on_target* %117)
  br label %109

119:                                              ; preds = %109
  %120 = load %struct.target*, %struct.target** %3, align 8
  %121 = getelementptr inbounds %struct.target, %struct.target* %120, i32 0, i32 1
  store %struct.pid_on_target* null, %struct.pid_on_target** %121, align 8
  br label %122

122:                                              ; preds = %119, %91
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.target*, %struct.target** %3, align 8
  %125 = getelementptr inbounds %struct.target, %struct.target* %124, i32 0, i32 38
  %126 = load %struct.target*, %struct.target** %125, align 8
  store %struct.target* %126, %struct.target** %3, align 8
  br label %8

127:                                              ; preds = %8
  %128 = load i64, i64* %4, align 8
  ret i64 %128
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @unlikely(%struct.pid_on_target*) #1

declare dso_local i32 @free(%struct.pid_on_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
