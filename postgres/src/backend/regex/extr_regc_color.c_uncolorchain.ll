; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_uncolorchain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_uncolorchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { %struct.colordesc* }
%struct.colordesc = type { %struct.arc* }
%struct.arc = type { i64, %struct.arc*, %struct.arc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.colormap*, %struct.arc*)* @uncolorchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncolorchain(%struct.colormap* %0, %struct.arc* %1) #0 {
  %3 = alloca %struct.colormap*, align 8
  %4 = alloca %struct.arc*, align 8
  %5 = alloca %struct.colordesc*, align 8
  %6 = alloca %struct.arc*, align 8
  store %struct.colormap* %0, %struct.colormap** %3, align 8
  store %struct.arc* %1, %struct.arc** %4, align 8
  %7 = load %struct.colormap*, %struct.colormap** %3, align 8
  %8 = getelementptr inbounds %struct.colormap, %struct.colormap* %7, i32 0, i32 0
  %9 = load %struct.colordesc*, %struct.colordesc** %8, align 8
  %10 = load %struct.arc*, %struct.arc** %4, align 8
  %11 = getelementptr inbounds %struct.arc, %struct.arc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %9, i64 %12
  store %struct.colordesc* %13, %struct.colordesc** %5, align 8
  %14 = load %struct.arc*, %struct.arc** %4, align 8
  %15 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 1
  %16 = load %struct.arc*, %struct.arc** %15, align 8
  store %struct.arc* %16, %struct.arc** %6, align 8
  %17 = load %struct.arc*, %struct.arc** %6, align 8
  %18 = icmp eq %struct.arc* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %21 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %20, i32 0, i32 0
  %22 = load %struct.arc*, %struct.arc** %21, align 8
  %23 = load %struct.arc*, %struct.arc** %4, align 8
  %24 = icmp eq %struct.arc* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.arc*, %struct.arc** %4, align 8
  %28 = getelementptr inbounds %struct.arc, %struct.arc* %27, i32 0, i32 2
  %29 = load %struct.arc*, %struct.arc** %28, align 8
  %30 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %31 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %30, i32 0, i32 0
  store %struct.arc* %29, %struct.arc** %31, align 8
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.arc*, %struct.arc** %6, align 8
  %34 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 0, i32 2
  %35 = load %struct.arc*, %struct.arc** %34, align 8
  %36 = load %struct.arc*, %struct.arc** %4, align 8
  %37 = icmp eq %struct.arc* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.arc*, %struct.arc** %4, align 8
  %41 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 2
  %42 = load %struct.arc*, %struct.arc** %41, align 8
  %43 = load %struct.arc*, %struct.arc** %6, align 8
  %44 = getelementptr inbounds %struct.arc, %struct.arc* %43, i32 0, i32 2
  store %struct.arc* %42, %struct.arc** %44, align 8
  br label %45

45:                                               ; preds = %32, %19
  %46 = load %struct.arc*, %struct.arc** %4, align 8
  %47 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 2
  %48 = load %struct.arc*, %struct.arc** %47, align 8
  %49 = icmp ne %struct.arc* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.arc*, %struct.arc** %6, align 8
  %52 = load %struct.arc*, %struct.arc** %4, align 8
  %53 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 2
  %54 = load %struct.arc*, %struct.arc** %53, align 8
  %55 = getelementptr inbounds %struct.arc, %struct.arc* %54, i32 0, i32 1
  store %struct.arc* %51, %struct.arc** %55, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.arc*, %struct.arc** %4, align 8
  %58 = getelementptr inbounds %struct.arc, %struct.arc* %57, i32 0, i32 2
  store %struct.arc* null, %struct.arc** %58, align 8
  %59 = load %struct.arc*, %struct.arc** %4, align 8
  %60 = getelementptr inbounds %struct.arc, %struct.arc* %59, i32 0, i32 1
  store %struct.arc* null, %struct.arc** %60, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
