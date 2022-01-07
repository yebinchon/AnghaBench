; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_init.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reliable = type { i32, i32, i32, %struct.reliable_entry* }
%struct.reliable_entry = type { i32 }

@RELIABLE_CAPACITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reliable_init(%struct.reliable* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.reliable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.reliable_entry*, align 8
  store %struct.reliable* %0, %struct.reliable** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.reliable*, %struct.reliable** %6, align 8
  %14 = call i32 @CLEAR(%struct.reliable* byval(%struct.reliable) align 8 %13)
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @RELIABLE_CAPACITY, align 4
  %20 = icmp sle i32 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.reliable*, %struct.reliable** %6, align 8
  %27 = getelementptr inbounds %struct.reliable, %struct.reliable* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.reliable*, %struct.reliable** %6, align 8
  %30 = getelementptr inbounds %struct.reliable, %struct.reliable* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.reliable*, %struct.reliable** %6, align 8
  %33 = getelementptr inbounds %struct.reliable, %struct.reliable* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %56, %21
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.reliable*, %struct.reliable** %6, align 8
  %37 = getelementptr inbounds %struct.reliable, %struct.reliable* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.reliable*, %struct.reliable** %6, align 8
  %42 = getelementptr inbounds %struct.reliable, %struct.reliable* %41, i32 0, i32 3
  %43 = load %struct.reliable_entry*, %struct.reliable_entry** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %43, i64 %45
  store %struct.reliable_entry* %46, %struct.reliable_entry** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @alloc_buf(i32 %47)
  %49 = load %struct.reliable_entry*, %struct.reliable_entry** %12, align 8
  %50 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.reliable_entry*, %struct.reliable_entry** %12, align 8
  %52 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @buf_init(i32* %52, i32 %53)
  %55 = call i32 @ASSERT(i32 %54)
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %34

59:                                               ; preds = %34
  ret void
}

declare dso_local i32 @CLEAR(%struct.reliable* byval(%struct.reliable) align 8) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @alloc_buf(i32) #1

declare dso_local i32 @buf_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
