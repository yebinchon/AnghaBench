; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexport.c_traverse_lacons.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexport.c_traverse_lacons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnfa = type { i64, i32, %struct.carc** }
%struct.carc = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@COLORLESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnfa*, i32, i32*, %struct.TYPE_3__*, i32)* @traverse_lacons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverse_lacons(%struct.cnfa* %0, i32 %1, i32* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca %struct.cnfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.carc*, align 8
  %12 = alloca i32, align 4
  store %struct.cnfa* %0, %struct.cnfa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i32 (...) @check_stack_depth()
  %14 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %15 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %14, i32 0, i32 2
  %16 = load %struct.carc**, %struct.carc*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.carc*, %struct.carc** %16, i64 %18
  %20 = load %struct.carc*, %struct.carc** %19, align 8
  store %struct.carc* %20, %struct.carc** %11, align 8
  br label %21

21:                                               ; preds = %78, %5
  %22 = load %struct.carc*, %struct.carc** %11, align 8
  %23 = getelementptr inbounds %struct.carc, %struct.carc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @COLORLESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %21
  %28 = load %struct.carc*, %struct.carc** %11, align 8
  %29 = getelementptr inbounds %struct.carc, %struct.carc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %32 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %27
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.carc*, %struct.carc** %11, align 8
  %44 = getelementptr inbounds %struct.carc, %struct.carc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load %struct.carc*, %struct.carc** %11, align 8
  %52 = getelementptr inbounds %struct.carc, %struct.carc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 8
  br label %59

59:                                               ; preds = %42, %35
  br label %77

60:                                               ; preds = %27
  %61 = load %struct.carc*, %struct.carc** %11, align 8
  %62 = getelementptr inbounds %struct.carc, %struct.carc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %65 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @Assert(i32 %68)
  %70 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %71 = load %struct.carc*, %struct.carc** %11, align 8
  %72 = getelementptr inbounds %struct.carc, %struct.carc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = load i32, i32* %10, align 4
  call void @traverse_lacons(%struct.cnfa* %70, i32 %73, i32* %74, %struct.TYPE_3__* %75, i32 %76)
  br label %77

77:                                               ; preds = %60, %59
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.carc*, %struct.carc** %11, align 8
  %80 = getelementptr inbounds %struct.carc, %struct.carc* %79, i32 1
  store %struct.carc* %80, %struct.carc** %11, align 8
  br label %21

81:                                               ; preds = %21
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
