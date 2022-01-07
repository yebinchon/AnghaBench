; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_compute_vertical_nodes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_compute_vertical_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32** }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @compute_vertical_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compute_vertical_nodes(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %12 = call i32* (...) @sdb_new0()
  store i32* %12, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %96, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %99

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %92, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @hash_get_rlist(i32* %44, i32* %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call %struct.TYPE_7__* @get_anode(i32* %47)
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %31
  %52 = call i32* (...) @r_list_new()
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @hash_set(i32* %53, i32* %54, i32* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %51
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call %struct.TYPE_7__* @get_anode(i32* %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %11, align 8
  br label %65

65:                                               ; preds = %82, %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @r_list_append(i32* %71, i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32* @r_graph_nth_neighbour(i32 %76, i32* %77, i32 0)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %85

82:                                               ; preds = %70
  %83 = load i32*, i32** %10, align 8
  %84 = call %struct.TYPE_7__* @get_anode(i32* %83)
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %11, align 8
  br label %65

85:                                               ; preds = %81, %65
  br label %90

86:                                               ; preds = %51
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @r_list_append(i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %85
  br label %91

91:                                               ; preds = %90, %31
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %20

95:                                               ; preds = %20
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %13

99:                                               ; preds = %13
  %100 = load i32*, i32** %3, align 8
  ret i32* %100
}

declare dso_local i32* @sdb_new0(...) #1

declare dso_local i32* @hash_get_rlist(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @get_anode(i32*) #1

declare dso_local i32* @r_list_new(...) #1

declare dso_local i32 @hash_set(i32*, i32*, i32*) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

declare dso_local i32* @r_graph_nth_neighbour(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
