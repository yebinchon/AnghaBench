; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_push_back.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_push_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i8*, i64)* @circlebuf_push_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_push_back(%struct.circlebuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.circlebuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %11 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %17 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %21 = call i32 @circlebuf_ensure_capacity(%struct.circlebuf* %20)
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %24 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %29 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %32 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %27
  %41 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %42 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %45 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr i8, i8* %43, i64 %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @memcpy(i8* %47, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %40, %27
  %52 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %53 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @memcpy(i8* %54, i8* %57, i64 %58)
  %60 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %61 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %7, align 8
  br label %76

65:                                               ; preds = %3
  %66 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %67 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %70 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  br label %76

76:                                               ; preds = %65, %51
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %79 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
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
