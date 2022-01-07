; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges-avl.c_ravl_insert.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges-avl.c_ravl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RavlNode = type { i32, i32, %struct.RavlNode*, %struct.RavlNode*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.RavlNode* @ravl_insert(i32 %0, i32 %1, %struct.RavlNode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.RavlNode*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.RavlNode* %2, %struct.RavlNode** %6, align 8
  %7 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %8 = icmp eq %struct.RavlNode* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = call %struct.RavlNode* @MALLOC(i32 32)
  store %struct.RavlNode* %10, %struct.RavlNode** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %13 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %16 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %18 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %20 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %19, i32 0, i32 2
  store %struct.RavlNode* null, %struct.RavlNode** %20, align 8
  %21 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %22 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %21, i32 0, i32 3
  store %struct.RavlNode* null, %struct.RavlNode** %22, align 8
  br label %108

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %26 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %33 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %32, i32 0, i32 3
  %34 = load %struct.RavlNode*, %struct.RavlNode** %33, align 8
  %35 = call %struct.RavlNode* @ravl_insert(i32 %30, i32 %31, %struct.RavlNode* %34)
  %36 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %37 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %36, i32 0, i32 3
  store %struct.RavlNode* %35, %struct.RavlNode** %37, align 8
  %38 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %39 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %38, i32 0, i32 3
  %40 = load %struct.RavlNode*, %struct.RavlNode** %39, align 8
  %41 = call i32 @height(%struct.RavlNode* %40)
  %42 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %43 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %42, i32 0, i32 2
  %44 = load %struct.RavlNode*, %struct.RavlNode** %43, align 8
  %45 = call i32 @height(%struct.RavlNode* %44)
  %46 = sub nsw i32 %41, %45
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %63

48:                                               ; preds = %29
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %51 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %50, i32 0, i32 3
  %52 = load %struct.RavlNode*, %struct.RavlNode** %51, align 8
  %53 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %49, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %58 = call %struct.RavlNode* @single_rotate_with_left(%struct.RavlNode* %57)
  store %struct.RavlNode* %58, %struct.RavlNode** %6, align 8
  br label %62

59:                                               ; preds = %48
  %60 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %61 = call %struct.RavlNode* @double_rotate_with_left(%struct.RavlNode* %60)
  store %struct.RavlNode* %61, %struct.RavlNode** %6, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %29
  br label %107

64:                                               ; preds = %23
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %67 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ugt i32 %65, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %74 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %73, i32 0, i32 2
  %75 = load %struct.RavlNode*, %struct.RavlNode** %74, align 8
  %76 = call %struct.RavlNode* @ravl_insert(i32 %71, i32 %72, %struct.RavlNode* %75)
  %77 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %78 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %77, i32 0, i32 2
  store %struct.RavlNode* %76, %struct.RavlNode** %78, align 8
  %79 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %80 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %79, i32 0, i32 2
  %81 = load %struct.RavlNode*, %struct.RavlNode** %80, align 8
  %82 = call i32 @height(%struct.RavlNode* %81)
  %83 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %84 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %83, i32 0, i32 3
  %85 = load %struct.RavlNode*, %struct.RavlNode** %84, align 8
  %86 = call i32 @height(%struct.RavlNode* %85)
  %87 = sub nsw i32 %82, %86
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %104

89:                                               ; preds = %70
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %92 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %91, i32 0, i32 2
  %93 = load %struct.RavlNode*, %struct.RavlNode** %92, align 8
  %94 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ugt i32 %90, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %99 = call %struct.RavlNode* @single_rotate_with_right(%struct.RavlNode* %98)
  store %struct.RavlNode* %99, %struct.RavlNode** %6, align 8
  br label %103

100:                                              ; preds = %89
  %101 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %102 = call %struct.RavlNode* @double_rotate_with_right(%struct.RavlNode* %101)
  store %struct.RavlNode* %102, %struct.RavlNode** %6, align 8
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %70
  br label %106

105:                                              ; preds = %64
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %63
  br label %108

108:                                              ; preds = %107, %9
  %109 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %110 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %109, i32 0, i32 3
  %111 = load %struct.RavlNode*, %struct.RavlNode** %110, align 8
  %112 = call i32 @height(%struct.RavlNode* %111)
  %113 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %114 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %113, i32 0, i32 2
  %115 = load %struct.RavlNode*, %struct.RavlNode** %114, align 8
  %116 = call i32 @height(%struct.RavlNode* %115)
  %117 = call i64 @max(i32 %112, i32 %116)
  %118 = add nsw i64 %117, 1
  %119 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  %120 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.RavlNode*, %struct.RavlNode** %6, align 8
  ret %struct.RavlNode* %121
}

declare dso_local %struct.RavlNode* @MALLOC(i32) #1

declare dso_local i32 @height(%struct.RavlNode*) #1

declare dso_local %struct.RavlNode* @single_rotate_with_left(%struct.RavlNode*) #1

declare dso_local %struct.RavlNode* @double_rotate_with_left(%struct.RavlNode*) #1

declare dso_local %struct.RavlNode* @single_rotate_with_right(%struct.RavlNode*) #1

declare dso_local %struct.RavlNode* @double_rotate_with_right(%struct.RavlNode*) #1

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
