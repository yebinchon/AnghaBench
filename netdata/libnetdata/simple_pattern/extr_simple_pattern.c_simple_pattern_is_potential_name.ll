; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_simple_pattern_is_potential_name.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_simple_pattern_is_potential_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_pattern = type { i64, %struct.simple_pattern*, i32* }

@SIMPLE_PATTERN_EXACT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_pattern_is_potential_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.simple_pattern*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.simple_pattern*
  store %struct.simple_pattern* %8, %struct.simple_pattern** %6, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load %struct.simple_pattern*, %struct.simple_pattern** %6, align 8
  %11 = icmp ne %struct.simple_pattern* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.simple_pattern*, %struct.simple_pattern** %6, align 8
  %14 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.simple_pattern*, %struct.simple_pattern** %6, align 8
  %19 = call i32 @scan_is_potential_name(%struct.simple_pattern* %18, i32* %3, i32* %4, i32* %5)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.simple_pattern*, %struct.simple_pattern** %6, align 8
  %22 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SIMPLE_PATTERN_EXACT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.simple_pattern*, %struct.simple_pattern** %6, align 8
  %29 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %28, i32 0, i32 1
  %30 = load %struct.simple_pattern*, %struct.simple_pattern** %29, align 8
  store %struct.simple_pattern* %30, %struct.simple_pattern** %6, align 8
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @scan_is_potential_name(%struct.simple_pattern*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
