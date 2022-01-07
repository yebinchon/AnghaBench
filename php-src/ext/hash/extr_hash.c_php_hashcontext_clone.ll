; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash.c_php_hashcontext_clone.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash.c_php_hashcontext_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64, i32*, i32 }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, i32*, i32*)*, i32, i32 (i32*)*, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @php_hashcontext_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @php_hashcontext_clone(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call %struct.TYPE_12__* @php_hashcontext_from_object(%struct.TYPE_11__* %7)
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_11__* @php_hashcontext_create(i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call %struct.TYPE_12__* @php_hashcontext_from_object(%struct.TYPE_11__* %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @zend_objects_clone_members(%struct.TYPE_11__* %15, %struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @emalloc(i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32 (i32*)*, i32 (i32*)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 %40(i32* %43)
  %45 = load i64, i64* @SUCCESS, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64 (%struct.TYPE_13__*, i32*, i32*)*, i64 (%struct.TYPE_13__*, i32*, i32*)** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 %50(%struct.TYPE_13__* %53, i32* %56, i32* %59)
  %61 = icmp ne i64 %45, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @efree(i32* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %2, align 8
  br label %98

70:                                               ; preds = %1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ecalloc(i32 1, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %70
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(i64 %86, i64 %89, i32 %94)
  br label %96

96:                                               ; preds = %83, %70
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %2, align 8
  br label %98

98:                                               ; preds = %96, %62
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %99
}

declare dso_local %struct.TYPE_12__* @php_hashcontext_from_object(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @php_hashcontext_create(i32) #1

declare dso_local i32 @zend_objects_clone_members(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32* @emalloc(i32) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
