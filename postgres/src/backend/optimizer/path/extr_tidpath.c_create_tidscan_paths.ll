; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_tidpath.c_create_tidscan_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_tidpath.c_create_tidscan_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i64, i32, i32 }

@ec_member_matches_ctid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_tidscan_paths(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32* @TidQualFromRestrictInfoList(i32 %10, %struct.TYPE_8__* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @create_tidscan_path(i32* %20, %struct.TYPE_8__* %21, i32* %22, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @add_path(%struct.TYPE_8__* %19, i32* %25)
  br label %27

27:                                               ; preds = %15, %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32, i32* @ec_member_matches_ctid, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @generate_implied_equalities_for_column(i32* %33, %struct.TYPE_8__* %34, i32 %35, i32* null, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @BuildParameterizedTidPaths(i32* %40, %struct.TYPE_8__* %41, i32* %42)
  br label %44

44:                                               ; preds = %32, %27
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @BuildParameterizedTidPaths(i32* %45, %struct.TYPE_8__* %46, i32* %49)
  ret void
}

declare dso_local i32* @TidQualFromRestrictInfoList(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @add_path(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @create_tidscan_path(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32* @generate_implied_equalities_for_column(i32*, %struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @BuildParameterizedTidPaths(i32*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
