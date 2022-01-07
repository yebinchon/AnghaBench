; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_print_attrs.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_print_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_attr = type { i32, i8*, i8*, %struct.switch_attr* }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\09Attribute %d (%s): %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_attr*)* @print_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attrs(%struct.switch_attr* %0) #0 {
  %2 = alloca %struct.switch_attr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.switch_attr* %0, %struct.switch_attr** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.switch_attr*, %struct.switch_attr** %2, align 8
  %7 = icmp ne %struct.switch_attr* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = load %struct.switch_attr*, %struct.switch_attr** %2, align 8
  %10 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %16 [
    i32 131, label %12
    i32 128, label %13
    i32 129, label %14
    i32 130, label %15
  ]

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %17

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %17

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %17

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %17

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.switch_attr*, %struct.switch_attr** %2, align 8
  %22 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.switch_attr*, %struct.switch_attr** %2, align 8
  %25 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %19, i8* %20, i8* %23, i8* %26)
  %28 = load %struct.switch_attr*, %struct.switch_attr** %2, align 8
  %29 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %28, i32 0, i32 3
  %30 = load %struct.switch_attr*, %struct.switch_attr** %29, align 8
  store %struct.switch_attr* %30, %struct.switch_attr** %2, align 8
  br label %5

31:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
