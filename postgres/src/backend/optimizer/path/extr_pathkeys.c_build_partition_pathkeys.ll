; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_pathkeys.c_build_partition_pathkeys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_pathkeys.c_build_partition_pathkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @build_partition_pathkeys(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @partitions_are_ordered(i32 %25, i32 %28)
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = call i32 @IS_SIMPLE_REL(%struct.TYPE_6__* %31)
  %33 = call i32 @Assert(i32 %32)
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %103, %4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @linitial(i32 %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ScanDirectionIsBackward(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @ScanDirectionIsBackward(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32* @make_pathkey_from_sortinfo(i32* %50, i32* %51, i32* null, i32 %58, i32 %65, i32 %72, i32 %74, i32 %76, i32 0, i32 %79, i32 0)
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %40
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @pathkey_is_redundant(i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = call i32* @lappend(i32* %89, i32* %90)
  store i32* %91, i32** %10, align 8
  br label %92

92:                                               ; preds = %88, %83
  br label %102

93:                                               ; preds = %40
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @partkey_is_bool_constant_for_query(%struct.TYPE_6__* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %9, align 8
  store i32 1, i32* %99, align 4
  %100 = load i32*, i32** %10, align 8
  store i32* %100, i32** %5, align 8
  br label %109

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %34

106:                                              ; preds = %34
  %107 = load i32*, i32** %9, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32*, i32** %10, align 8
  store i32* %108, i32** %5, align 8
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i32*, i32** %5, align 8
  ret i32* %110
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @partitions_are_ordered(i32, i32) #1

declare dso_local i32 @IS_SIMPLE_REL(%struct.TYPE_6__*) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i32* @make_pathkey_from_sortinfo(i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ScanDirectionIsBackward(i32) #1

declare dso_local i32 @pathkey_is_redundant(i32*, i32*) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32 @partkey_is_bool_constant_for_query(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
