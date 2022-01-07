; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_property_list_find.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_property_list_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_property* @m_property_list_find(%struct.m_property* %0, i8* %1) #0 {
  %3 = alloca %struct.m_property*, align 8
  %4 = alloca %struct.m_property*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.m_property* %0, %struct.m_property** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load %struct.m_property*, %struct.m_property** %4, align 8
  %9 = icmp ne %struct.m_property* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.m_property*, %struct.m_property** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.m_property, %struct.m_property* %11, i64 %13
  %15 = getelementptr inbounds %struct.m_property, %struct.m_property* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %39

20:                                               ; preds = %18
  %21 = load %struct.m_property*, %struct.m_property** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.m_property, %struct.m_property* %21, i64 %23
  %25 = getelementptr inbounds %struct.m_property, %struct.m_property* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcmp(i64 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.m_property*, %struct.m_property** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.m_property, %struct.m_property* %31, i64 %33
  store %struct.m_property* %34, %struct.m_property** %3, align 8
  br label %40

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %18
  store %struct.m_property* null, %struct.m_property** %3, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.m_property*, %struct.m_property** %3, align 8
  ret %struct.m_property* %41
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
