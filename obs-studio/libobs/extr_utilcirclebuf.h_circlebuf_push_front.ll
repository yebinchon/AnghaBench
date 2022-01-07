; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_push_front.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_push_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i8*, i64)* @circlebuf_push_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_push_front(%struct.circlebuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.circlebuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %10 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, %8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %14 = call i32 @circlebuf_ensure_capacity(%struct.circlebuf* %13)
  %15 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %16 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %23 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %27 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %32 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %38 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @memcpy(i8* %33, i8* %36, i64 %39)
  br label %41

41:                                               ; preds = %30, %20
  %42 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %43 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %44, %45
  %47 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %48 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %50 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %53 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr i8, i8* %51, i64 %54
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  br label %75

59:                                               ; preds = %3
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %62 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %66 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %69 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr i8, i8* %67, i64 %70
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %59, %41
  ret void
}

declare dso_local i32 @circlebuf_ensure_capacity(%struct.circlebuf*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
