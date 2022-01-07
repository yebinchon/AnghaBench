; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_rbtree.c_rbt_delete_node.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_rbtree.c_rbt_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32 (%struct.TYPE_15__*, i32)*, %struct.TYPE_15__* }

@RBTNIL = common dso_local global %struct.TYPE_15__* null, align 8
@RBTBLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @rbt_delete_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbt_delete_node(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = icmp ne %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RBTNIL, align 8
  %12 = icmp eq %struct.TYPE_15__* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %125

14:                                               ; preds = %9
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RBTNIL, align 8
  %19 = icmp eq %struct.TYPE_15__* %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RBTNIL, align 8
  %25 = icmp eq %struct.TYPE_15__* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %14
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %6, align 8
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %6, align 8
  br label %32

32:                                               ; preds = %38, %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RBTNIL, align 8
  %37 = icmp ne %struct.TYPE_15__* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %6, align 8
  br label %32

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RBTNIL, align 8
  %48 = icmp ne %struct.TYPE_15__* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %5, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %5, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = icmp ne %struct.TYPE_13__* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %57
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = icmp eq %struct.TYPE_15__* %68, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %80, align 8
  br label %87

81:                                               ; preds = %67
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %86, align 8
  br label %87

87:                                               ; preds = %81, %75
  br label %92

88:                                               ; preds = %57
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %91, align 8
  br label %92

92:                                               ; preds = %88, %87
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = icmp ne %struct.TYPE_15__* %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = call i32 @rbt_copy_data(%struct.TYPE_14__* %97, %struct.TYPE_15__* %98, %struct.TYPE_15__* %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RBTBLACK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = call i32 @rbt_delete_fixup(%struct.TYPE_14__* %108, %struct.TYPE_15__* %109)
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %113, align 8
  %115 = icmp ne i32 (%struct.TYPE_15__*, i32)* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %119(%struct.TYPE_15__* %120, i32 %123)
  br label %125

125:                                              ; preds = %13, %116, %111
  ret void
}

declare dso_local i32 @rbt_copy_data(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @rbt_delete_fixup(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
