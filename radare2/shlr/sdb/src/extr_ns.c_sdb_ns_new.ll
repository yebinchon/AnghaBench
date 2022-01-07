; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ns.c_sdb_ns_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_ns.c_sdb_ns_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8* }

@SDB_MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i8*, i32)* @sdb_ns_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @sdb_ns_new(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @SDB_MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 3
  %48 = load i32, i32* @SDB_MAX_PATH, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %147

51:                                               ; preds = %37
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @memcpy(i8* %17, i8* %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %17, i64 %58
  %60 = call i32 @memcpy(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %17, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @memcpy(i8* %64, i8* %65, i32 %67)
  br label %71

69:                                               ; preds = %32, %29, %22, %3
  %70 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %70, align 16
  br label %71

71:                                               ; preds = %69, %51
  %72 = call %struct.TYPE_9__* @malloc(i32 24)
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %10, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %147

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = call %struct.TYPE_9__* @strdup(i8* %83)
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi %struct.TYPE_9__* [ %84, %82 ], [ null, %85 ]
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %89, align 8
  %90 = call %struct.TYPE_11__* (...) @sdb_new0()
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %97, label %138

97:                                               ; preds = %86
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = call i32 @free(%struct.TYPE_9__* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %107, align 8
  %108 = load i8, i8* %17, align 16
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %97
  %111 = call %struct.TYPE_9__* @strdup(i8* %17)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %115, align 8
  br label %116

116:                                              ; preds = %110, %97
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @free(%struct.TYPE_9__* %121)
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %116
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i8*, i8** %6, align 8
  %132 = call %struct.TYPE_9__* @strdup(i8* %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %136, align 8
  br label %137

137:                                              ; preds = %130, %125, %116
  br label %145

138:                                              ; preds = %86
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = call i32 @free(%struct.TYPE_9__* %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %144 = call i32 @free(%struct.TYPE_9__* %143)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %145

145:                                              ; preds = %138, %137
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %147

147:                                              ; preds = %145, %75, %50
  %148 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_9__* @malloc(i32) #2

declare dso_local %struct.TYPE_9__* @strdup(i8*) #2

declare dso_local %struct.TYPE_11__* @sdb_new0(...) #2

declare dso_local i32 @free(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
