; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_count_events.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_count_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_data = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"(unexpected event: %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.simple_data*, i32)* @count_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_events(%struct.simple_data* %0, i32 %1) #0 {
  %3 = alloca %struct.simple_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  store %struct.simple_data* %0, %struct.simple_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %38 [
    i32 131, label %7
    i32 134, label %8
    i32 132, label %13
    i32 130, label %18
    i32 129, label %23
    i32 133, label %28
    i32 128, label %33
  ]

7:                                                ; preds = %2
  br label %47

8:                                                ; preds = %2
  %9 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %10 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %15 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %20 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %25 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %30 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %35 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %47

38:                                               ; preds = %2
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.simple_data*, %struct.simple_data** %3, align 8
  %43 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %46 = call i32 @strcat(i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %38, %33, %28, %23, %18, %13, %8, %7
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
