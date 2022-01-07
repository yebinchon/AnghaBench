; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcoloronerow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcoloronerow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, %struct.colormap* }
%struct.colormap = type { i64*, i32 }
%struct.state = type { i32 }

@PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, i32, %struct.state*, %struct.state*, i64*)* @subcoloronerow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subcoloronerow(%struct.vars* %0, i32 %1, %struct.state* %2, %struct.state* %3, i64* %4) #0 {
  %6 = alloca %struct.vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.state*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.colormap*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.state* %2, %struct.state** %8, align 8
  store %struct.state* %3, %struct.state** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load %struct.vars*, %struct.vars** %6, align 8
  %16 = getelementptr inbounds %struct.vars, %struct.vars* %15, i32 0, i32 1
  %17 = load %struct.colormap*, %struct.colormap** %16, align 8
  store %struct.colormap* %17, %struct.colormap** %11, align 8
  %18 = load %struct.colormap*, %struct.colormap** %11, align 8
  %19 = getelementptr inbounds %struct.colormap, %struct.colormap* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.colormap*, %struct.colormap** %11, align 8
  %23 = getelementptr inbounds %struct.colormap, %struct.colormap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %20, i64 %26
  store i64* %27, i64** %12, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %56, %5
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.colormap*, %struct.colormap** %11, align 8
  %31 = getelementptr inbounds %struct.colormap, %struct.colormap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load %struct.colormap*, %struct.colormap** %11, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = call i64 @subcolorhi(%struct.colormap* %35, i64* %36)
  store i64 %37, i64* %14, align 8
  %38 = call i32 (...) @NOERR()
  %39 = load i64, i64* %14, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load %struct.vars*, %struct.vars** %6, align 8
  %45 = getelementptr inbounds %struct.vars, %struct.vars* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PLAIN, align 4
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.state*, %struct.state** %8, align 8
  %50 = load %struct.state*, %struct.state** %9, align 8
  %51 = call i32 @newarc(i32 %46, i32 %47, i64 %48, %struct.state* %49, %struct.state* %50)
  %52 = call i32 (...) @NOERR()
  %53 = load i64, i64* %14, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %43, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i64*, i64** %12, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %28

61:                                               ; preds = %28
  ret void
}

declare dso_local i64 @subcolorhi(%struct.colormap*, i64*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @newarc(i32, i32, i64, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
