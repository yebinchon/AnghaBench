; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_push.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.json_stack*, %struct.TYPE_5__ }
%struct.json_stack = type { i32, i64 }
%struct.TYPE_5__ = type { i64 (%struct.json_stack*, i32)* }

@STACK_INC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@JSON_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.json_stack*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64 (%struct.json_stack*, i32)*, i64 (%struct.json_stack*, i32)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.json_stack*, %struct.json_stack** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STACK_INC, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call i64 %22(%struct.json_stack* %25, i32 %33)
  %35 = inttoptr i64 %34 to %struct.json_stack*
  store %struct.json_stack* %35, %struct.json_stack** %6, align 8
  %36 = load %struct.json_stack*, %struct.json_stack** %6, align 8
  %37 = icmp eq %struct.json_stack* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @json_error_s(%struct.TYPE_6__* %39, i32 %40)
  %42 = load i32, i32* @JSON_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %73

43:                                               ; preds = %18
  %44 = load i32, i32* @STACK_INC, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.json_stack*, %struct.json_stack** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store %struct.json_stack* %49, %struct.json_stack** %51, align 8
  br label %52

52:                                               ; preds = %43, %2
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.json_stack*, %struct.json_stack** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.json_stack, %struct.json_stack* %56, i64 %60
  %62 = getelementptr inbounds %struct.json_stack, %struct.json_stack* %61, i32 0, i32 0
  store i32 %53, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.json_stack*, %struct.json_stack** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.json_stack, %struct.json_stack* %65, i64 %69
  %71 = getelementptr inbounds %struct.json_stack, %struct.json_stack* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %52, %38
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @json_error_s(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
