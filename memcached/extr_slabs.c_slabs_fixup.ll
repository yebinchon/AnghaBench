; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_slabs_fixup.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_slabs_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__* }

@slabclass = common dso_local global %struct.TYPE_5__* null, align 8
@ITEM_SLABBED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slabs_fixup(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = call i32 @ITEM_clsid(%struct.TYPE_6__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @slabclass, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = call i32 @grow_slab_list(i32 0)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8*, i8** %22, i64 %27
  store i8* %19, i8** %28, align 8
  store i32 -1, i32* %3, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @slabclass, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @grow_slab_list(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8*, i8** %42, i64 %47
  store i8* %39, i8** %48, align 8
  br label %49

49:                                               ; preds = %36, %29
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ITEM_SLABBED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %72, align 8
  br label %73

73:                                               ; preds = %67, %55
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %49
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ITEM_clsid(%struct.TYPE_6__*) #1

declare dso_local i32 @grow_slab_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
