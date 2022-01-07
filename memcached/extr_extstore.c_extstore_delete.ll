; ModuleID = '/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_delete.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extstore_delete(i8* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %11, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %90, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %65

62:                                               ; preds = %50
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %67 = call i32 @STAT_L(%struct.TYPE_9__* %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = call i32 @STAT_UL(%struct.TYPE_9__* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %65
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = call i32 @extstore_run_maint(%struct.TYPE_9__* %87)
  br label %89

89:                                               ; preds = %86, %65
  br label %91

90:                                               ; preds = %29, %5
  store i32 -1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = call i32 @pthread_mutex_unlock(i32* %93)
  %95 = load i32, i32* %13, align 4
  ret i32 %95
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @STAT_L(%struct.TYPE_9__*) #1

declare dso_local i32 @STAT_UL(%struct.TYPE_9__*) #1

declare dso_local i32 @extstore_run_maint(%struct.TYPE_9__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
