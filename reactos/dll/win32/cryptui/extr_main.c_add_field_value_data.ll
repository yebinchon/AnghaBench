; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_field_value_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_field_value_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detail_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.detail_data*, i32, i8*)* @add_field_value_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_field_value_data(%struct.detail_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.detail_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.detail_data* %0, %struct.detail_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %8 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %14 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %17 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_4__* @HeapReAlloc(i32 %12, i32 0, %struct.TYPE_4__* %15, i32 %22)
  %24 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %25 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %24, i32 0, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  br label %31

26:                                               ; preds = %3
  %27 = call i32 (...) @GetProcessHeap()
  %28 = call %struct.TYPE_4__* @HeapAlloc(i32 %27, i32 0, i32 4)
  %29 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %30 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %29, i32 0, i32 1
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  br label %31

31:                                               ; preds = %26, %11
  %32 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %33 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %39 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %42 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %37, i32* %46, align 8
  %47 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %48 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %51 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %58 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %61 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %56, i8** %65, align 8
  %66 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %67 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.TYPE_4__* @HeapReAlloc(i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
