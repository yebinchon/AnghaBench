; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_is_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_is_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64*, i64, %struct.TYPE_9__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intset_is_member(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @intset_binsrch_uint64(i64 %26, i64* %29, i64 %32, i32 0)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %155

41:                                               ; preds = %25
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %155

52:                                               ; preds = %17, %2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %155

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %99, %58
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %12, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @intset_binsrch_uint64(i64 %79, i64* %82, i64 %85, i32 1)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %155

90:                                               ; preds = %69
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %93, i64 %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %6, align 8
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  br label %66

102:                                              ; preds = %66
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @Assert(i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = bitcast %struct.TYPE_9__* %109 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %7, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @intset_binsrch_leaf(i64 %111, %struct.TYPE_8__* %114, i32 %117, i32 1)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %155

122:                                              ; preds = %102
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %128
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %10, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %155

136:                                              ; preds = %122
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %137, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @Assert(i32 %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @simple8b_contains(i32 %146, i64 %147, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %155

154:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %153, %135, %121, %89, %57, %41, %40
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @intset_binsrch_uint64(i64, i64*, i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @intset_binsrch_leaf(i64, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @simple8b_contains(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
