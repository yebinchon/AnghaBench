; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_chooseNextStatEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_chooseNextStatEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_4__*, i32, i32, i32)* @chooseNextStatEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chooseNextStatEntry(i32 %0, i32* %1, %struct.TYPE_4__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %14, align 4
  %21 = add nsw i32 %19, %20
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @insertStatEntry(i32 %39, i32* %40, %struct.TYPE_4__* %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %30, %26, %6
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @insertStatEntry(i32 %69, i32* %70, %struct.TYPE_4__* %71, i32 %74)
  br label %76

76:                                               ; preds = %68, %60, %56, %46
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  call void @chooseNextStatEntry(i32 %81, i32* %82, %struct.TYPE_4__* %83, i32 %84, i32 %85, i32 %86)
  br label %87

87:                                               ; preds = %80, %76
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  call void @chooseNextStatEntry(i32 %93, i32* %94, %struct.TYPE_4__* %95, i32 %97, i32 %98, i32 %99)
  br label %100

100:                                              ; preds = %92, %87
  ret void
}

declare dso_local i32 @insertStatEntry(i32, i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
