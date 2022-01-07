; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_rule_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_rule_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rule*, %struct.rule*)* @rule_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rule_cmp(%struct.rule* %0, %struct.rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rule*, align 8
  %5 = alloca %struct.rule*, align 8
  store %struct.rule* %0, %struct.rule** %4, align 8
  store %struct.rule* %1, %struct.rule** %5, align 8
  %6 = load %struct.rule*, %struct.rule** %4, align 8
  %7 = icmp ne %struct.rule* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load %struct.rule*, %struct.rule** %5, align 8
  %10 = icmp ne %struct.rule* %9, null
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.rule*, %struct.rule** %5, align 8
  %17 = icmp ne %struct.rule* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %63

19:                                               ; preds = %15
  %20 = load %struct.rule*, %struct.rule** %4, align 8
  %21 = getelementptr inbounds %struct.rule, %struct.rule* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rule*, %struct.rule** %5, align 8
  %24 = getelementptr inbounds %struct.rule, %struct.rule* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.rule*, %struct.rule** %4, align 8
  %29 = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rule*, %struct.rule** %5, align 8
  %32 = getelementptr inbounds %struct.rule, %struct.rule* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 -1, i32 1
  store i32 %36, i32* %3, align 4
  br label %63

37:                                               ; preds = %19
  %38 = load %struct.rule*, %struct.rule** %4, align 8
  %39 = getelementptr inbounds %struct.rule, %struct.rule* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rule*, %struct.rule** %5, align 8
  %42 = getelementptr inbounds %struct.rule, %struct.rule* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.rule*, %struct.rule** %4, align 8
  %48 = getelementptr inbounds %struct.rule, %struct.rule* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rule*, %struct.rule** %5, align 8
  %51 = getelementptr inbounds %struct.rule, %struct.rule* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %37
  %56 = load %struct.rule*, %struct.rule** %4, align 8
  %57 = getelementptr inbounds %struct.rule, %struct.rule* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rule*, %struct.rule** %5, align 8
  %60 = getelementptr inbounds %struct.rule, %struct.rule* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %46, %27, %18, %8
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
