; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c__store_item_copy_data.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c__store_item_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@NREAD_APPEND = common dso_local global i32 0, align 4
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @_store_item_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_store_item_copy_data(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NREAD_APPEND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ITEM_CHUNKED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 2
  %27 = call i32 @_store_item_copy_chunks(%struct.TYPE_8__* %21, %struct.TYPE_8__* %22, i64 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %37, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @_store_item_copy_chunks(%struct.TYPE_8__* %30, %struct.TYPE_8__* %31, i64 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %20
  store i32 -1, i32* %5, align 4
  br label %112

38:                                               ; preds = %29
  br label %61

39:                                               ; preds = %13
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = call i64 @ITEM_data(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = call i64 @ITEM_data(%struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @memcpy(i64 %41, i64 %43, i64 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = call i64 @ITEM_data(%struct.TYPE_8__* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = sub nsw i64 %53, 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = call i64 @ITEM_data(%struct.TYPE_8__* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @memcpy(i64 %54, i64 %56, i64 %59)
  br label %61

61:                                               ; preds = %39, %38
  br label %111

62:                                               ; preds = %4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ITEM_CHUNKED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 2
  %76 = call i32 @_store_item_copy_chunks(%struct.TYPE_8__* %70, %struct.TYPE_8__* %71, i64 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @_store_item_copy_chunks(%struct.TYPE_8__* %79, %struct.TYPE_8__* %80, i64 %83)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %69
  store i32 -1, i32* %5, align 4
  br label %112

87:                                               ; preds = %78
  br label %110

88:                                               ; preds = %62
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call i64 @ITEM_data(%struct.TYPE_8__* %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = call i64 @ITEM_data(%struct.TYPE_8__* %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @memcpy(i64 %90, i64 %92, i64 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = call i64 @ITEM_data(%struct.TYPE_8__* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = sub nsw i64 %102, 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = call i64 @ITEM_data(%struct.TYPE_8__* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @memcpy(i64 %103, i64 %105, i64 %108)
  br label %110

110:                                              ; preds = %88, %87
  br label %111

111:                                              ; preds = %110, %61
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %86, %37
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @_store_item_copy_chunks(%struct.TYPE_8__*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i64 @ITEM_data(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
