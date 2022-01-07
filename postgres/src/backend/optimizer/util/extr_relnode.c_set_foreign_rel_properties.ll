; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_relnode.c_set_foreign_rel_properties.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_relnode.c_set_foreign_rel_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @set_foreign_rel_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_foreign_rel_properties(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @OidIsValid(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %121

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %121

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %28
  %49 = phi i1 [ true, %28 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %120

58:                                               ; preds = %20
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @OidIsValid(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 (...) @GetUserId()
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %119

88:                                               ; preds = %64, %58
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @OidIsValid(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 (...) @GetUserId()
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %100, %94, %88
  br label %119

119:                                              ; preds = %118, %70
  br label %120

120:                                              ; preds = %119, %48
  br label %121

121:                                              ; preds = %120, %12, %3
  ret void
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @GetUserId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
