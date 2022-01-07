; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_lookup_attr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_lookup_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_attr = type { %struct.switch_attr*, i32 }
%struct.switch_dev = type { %struct.switch_attr*, %struct.switch_attr*, %struct.switch_attr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.switch_attr*, align 8
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.switch_attr*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %13 = icmp ne %struct.switch_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store %struct.switch_attr* null, %struct.switch_attr** %4, align 8
  br label %47

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %29 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %15
  %18 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %19 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %18, i32 0, i32 2
  %20 = load %struct.switch_attr*, %struct.switch_attr** %19, align 8
  store %struct.switch_attr* %20, %struct.switch_attr** %8, align 8
  br label %29

21:                                               ; preds = %15
  %22 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %23 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %22, i32 0, i32 1
  %24 = load %struct.switch_attr*, %struct.switch_attr** %23, align 8
  store %struct.switch_attr* %24, %struct.switch_attr** %8, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %27 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %26, i32 0, i32 0
  %28 = load %struct.switch_attr*, %struct.switch_attr** %27, align 8
  store %struct.switch_attr* %28, %struct.switch_attr** %8, align 8
  br label %29

29:                                               ; preds = %15, %25, %21, %17
  br label %30

30:                                               ; preds = %42, %29
  %31 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %32 = icmp ne %struct.switch_attr* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %36 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strcmp(i8* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  store %struct.switch_attr* %41, %struct.switch_attr** %4, align 8
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %44 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %43, i32 0, i32 0
  %45 = load %struct.switch_attr*, %struct.switch_attr** %44, align 8
  store %struct.switch_attr* %45, %struct.switch_attr** %8, align 8
  br label %30

46:                                               ; preds = %30
  store %struct.switch_attr* null, %struct.switch_attr** %4, align 8
  br label %47

47:                                               ; preds = %46, %40, %14
  %48 = load %struct.switch_attr*, %struct.switch_attr** %4, align 8
  ret %struct.switch_attr* %48
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
