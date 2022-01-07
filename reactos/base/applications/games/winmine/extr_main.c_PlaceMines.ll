; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_PlaceMines.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_PlaceMines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i8* }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @PlaceMines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlaceMines(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i64 @time(i32* null)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @srand(i32 %12)
  %14 = load i8*, i8** @TRUE, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %14, i8** %25, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %73, %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = call i32 (...) @rand()
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %33, %36
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = call i32 (...) @rand()
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %39, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load i8*, i8** @TRUE, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i8* %61, i8** %72, align 8
  br label %73

73:                                               ; preds = %58, %32
  br label %26

74:                                               ; preds = %26
  %75 = load i8*, i8** @FALSE, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i8* %75, i8** %86, align 8
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %155, %74
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = icmp ult i32 %88, %92
  br i1 %93, label %94, label %158

94:                                               ; preds = %87
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %151, %94
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = icmp ult i32 %96, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %95
  store i32 -1, i32* %7, align 4
  br label %103

103:                                              ; preds = %147, %102
  %104 = load i32, i32* %7, align 4
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %106, label %150

106:                                              ; preds = %103
  store i32 -1, i32* %8, align 4
  br label %107

107:                                              ; preds = %143, %106
  %108 = load i32, i32* %8, align 4
  %109 = icmp sle i32 %108, 1
  br i1 %109, label %110, label %146

110:                                              ; preds = %107
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %120, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %110
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %131, i64 %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %128, %110
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %107

146:                                              ; preds = %107
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %103

150:                                              ; preds = %103
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %95

154:                                              ; preds = %95
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %87

158:                                              ; preds = %87
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
