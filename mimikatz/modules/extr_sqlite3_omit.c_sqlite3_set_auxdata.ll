; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_set_auxdata.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_set_auxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i64, void (i8*)*, i8*, %struct.TYPE_12__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3_set_auxdata(%struct.TYPE_10__* %0, i32 %1, i8* %2, void (i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store void (i8*)* %3, void (i8*)** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sqlite3_mutex_held(i32 %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %9, align 8
  br label %30

30:                                               ; preds = %52, %4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %39
  br label %56

51:                                               ; preds = %47, %33
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %9, align 8
  br label %30

56:                                               ; preds = %50, %30
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_12__* @sqlite3DbMallocZero(i32 %62, i32 40)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %9, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %112

67:                                               ; preds = %59
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %67
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 -1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %67
  br label %105

92:                                               ; preds = %56
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load void (i8*)*, void (i8*)** %94, align 8
  %96 = icmp ne void (i8*)* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load void (i8*)*, void (i8*)** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  call void %100(i8* %103)
  br label %104

104:                                              ; preds = %97, %92
  br label %105

105:                                              ; preds = %104, %91
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load void (i8*)*, void (i8*)** %8, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store void (i8*)* %109, void (i8*)** %111, align 8
  br label %118

112:                                              ; preds = %66
  %113 = load void (i8*)*, void (i8*)** %8, align 8
  %114 = icmp ne void (i8*)* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load void (i8*)*, void (i8*)** %8, align 8
  %117 = load i8*, i8** %7, align 8
  call void %116(i8* %117)
  br label %118

118:                                              ; preds = %105, %115, %112
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local %struct.TYPE_12__* @sqlite3DbMallocZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
