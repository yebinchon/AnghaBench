; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_mbulk_variant_resp.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_mbulk_variant_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @cluster_mbulk_variant_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_mbulk_variant_resp(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %74 [
    i32 130, label %10
    i32 129, label %16
    i32 131, label %34
    i32 128, label %52
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @add_next_index_long(i32* %11, i32 %14)
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @add_next_index_stringl(i32* %22, i32 %25, i32 %28)
  br label %33

30:                                               ; preds = %16
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @add_next_index_bool(i32* %31, i32 1)
  br label %33

33:                                               ; preds = %30, %21
  br label %77

34:                                               ; preds = %2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @add_next_index_stringl(i32* %40, i32 %43, i32 %46)
  br label %51

48:                                               ; preds = %34
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @add_next_index_null(i32* %49)
  br label %51

51:                                               ; preds = %48, %39
  br label %77

52:                                               ; preds = %2
  %53 = call i32 @array_init(i32* %5)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %68, %52
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  call void @cluster_mbulk_variant_resp(%struct.TYPE_3__* %67, i32* %5)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @add_next_index_zval(i32* %72, i32* %5)
  br label %77

74:                                               ; preds = %2
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @add_next_index_bool(i32* %75, i32 0)
  br label %77

77:                                               ; preds = %74, %71, %51, %33, %10
  ret void
}

declare dso_local i32 @add_next_index_long(i32*, i32) #1

declare dso_local i32 @add_next_index_stringl(i32*, i32, i32) #1

declare dso_local i32 @add_next_index_bool(i32*, i32) #1

declare dso_local i32 @add_next_index_null(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
