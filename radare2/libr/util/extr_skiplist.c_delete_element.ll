; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_skiplist.c_delete_element.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_skiplist.c_delete_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (i32, i8*)*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__**, i32 }

@SKIPLIST_MAX_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32)* @delete_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_element(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @SKIPLIST_MAX_DEPTH, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca %struct.TYPE_9__*, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_9__* @find_insertpoint(%struct.TYPE_10__* %18, i8* %19, %struct.TYPE_9__** %17, i32 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %11, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp eq %struct.TYPE_9__* %22, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64 (i32, i8*)*, i64 (i32, i8*)** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 %30(i32 %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %116

38:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %76, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %51, i64 %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = icmp ne %struct.TYPE_9__* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %79

59:                                               ; preds = %45
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %62, i64 %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %74
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %75, align 8
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %39

79:                                               ; preds = %58, %39
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = call i32 @r_skiplist_node_free(%struct.TYPE_10__* %80, %struct.TYPE_9__* %81)
  br label %83

83:                                               ; preds = %106, %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %93, i64 %97
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = icmp eq %struct.TYPE_9__* %99, %102
  br label %104

104:                                              ; preds = %88, %83
  %105 = phi i1 [ false, %83 ], [ %103, %88 ]
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 8
  br label %83

111:                                              ; preds = %104
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %116

116:                                              ; preds = %111, %37
  %117 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @find_insertpoint(%struct.TYPE_10__*, i8*, %struct.TYPE_9__**, i32) #2

declare dso_local i32 @r_skiplist_node_free(%struct.TYPE_10__*, %struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
