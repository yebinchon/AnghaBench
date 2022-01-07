; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_remove_typedefs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_remove_typedefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typedefs = type { i32, i64, %struct.typedefs*, %struct.typedefs*, %struct.typedefs*, %struct.typedefs* }

@types = common dso_local global %struct.typedefs* null, align 8
@ECPGt_struct = common dso_local global i64 0, align 8
@ECPGt_union = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_typedefs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.typedefs*, align 8
  %4 = alloca %struct.typedefs*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.typedefs*, %struct.typedefs** @types, align 8
  store %struct.typedefs* %5, %struct.typedefs** %4, align 8
  store %struct.typedefs* %5, %struct.typedefs** %3, align 8
  br label %6

6:                                                ; preds = %82, %1
  %7 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %8 = icmp ne %struct.typedefs* %7, null
  br i1 %8, label %9, label %83

9:                                                ; preds = %6
  %10 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %11 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %9
  %16 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %17 = load %struct.typedefs*, %struct.typedefs** @types, align 8
  %18 = icmp eq %struct.typedefs* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %21 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %20, i32 0, i32 2
  %22 = load %struct.typedefs*, %struct.typedefs** %21, align 8
  store %struct.typedefs* %22, %struct.typedefs** @types, align 8
  store %struct.typedefs* %22, %struct.typedefs** %4, align 8
  br label %29

23:                                               ; preds = %15
  %24 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %25 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %24, i32 0, i32 2
  %26 = load %struct.typedefs*, %struct.typedefs** %25, align 8
  %27 = load %struct.typedefs*, %struct.typedefs** %4, align 8
  %28 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %27, i32 0, i32 2
  store %struct.typedefs* %26, %struct.typedefs** %28, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %31 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %30, i32 0, i32 4
  %32 = load %struct.typedefs*, %struct.typedefs** %31, align 8
  %33 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ECPGt_struct, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %39 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %38, i32 0, i32 4
  %40 = load %struct.typedefs*, %struct.typedefs** %39, align 8
  %41 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ECPGt_union, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37, %29
  %46 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %47 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %46, i32 0, i32 5
  %48 = load %struct.typedefs*, %struct.typedefs** %47, align 8
  %49 = call i32 @free(%struct.typedefs* %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %52 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %51, i32 0, i32 4
  %53 = load %struct.typedefs*, %struct.typedefs** %52, align 8
  %54 = call i32 @free(%struct.typedefs* %53)
  %55 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %56 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %55, i32 0, i32 3
  %57 = load %struct.typedefs*, %struct.typedefs** %56, align 8
  %58 = call i32 @free(%struct.typedefs* %57)
  %59 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %60 = call i32 @free(%struct.typedefs* %59)
  %61 = load %struct.typedefs*, %struct.typedefs** %4, align 8
  %62 = load %struct.typedefs*, %struct.typedefs** @types, align 8
  %63 = icmp eq %struct.typedefs* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load %struct.typedefs*, %struct.typedefs** @types, align 8
  store %struct.typedefs* %65, %struct.typedefs** %3, align 8
  br label %76

66:                                               ; preds = %50
  %67 = load %struct.typedefs*, %struct.typedefs** %4, align 8
  %68 = icmp ne %struct.typedefs* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.typedefs*, %struct.typedefs** %4, align 8
  %71 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %70, i32 0, i32 2
  %72 = load %struct.typedefs*, %struct.typedefs** %71, align 8
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi %struct.typedefs* [ %72, %69 ], [ null, %73 ]
  store %struct.typedefs* %75, %struct.typedefs** %3, align 8
  br label %76

76:                                               ; preds = %74, %64
  br label %82

77:                                               ; preds = %9
  %78 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  store %struct.typedefs* %78, %struct.typedefs** %4, align 8
  %79 = load %struct.typedefs*, %struct.typedefs** %4, align 8
  %80 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %79, i32 0, i32 2
  %81 = load %struct.typedefs*, %struct.typedefs** %80, align 8
  store %struct.typedefs* %81, %struct.typedefs** %3, align 8
  br label %82

82:                                               ; preds = %77, %76
  br label %6

83:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free(%struct.typedefs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
