; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_isOrderedColumn.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_isOrderedColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i32* }

@WHERE_ALL_UNIQUE = common dso_local global i32 0, align 4
@WHERE_ORDERED = common dso_local global i32 0, align 4
@WHERE_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @isOrderedColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isOrderedColumn(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %21
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %10, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %162, %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %167

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %162

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WHERE_ALL_UNIQUE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %168

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WHERE_ORDERED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %11, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %121

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WHERE_REVERSE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @testcase(i32 %73)
  br label %120

75:                                               ; preds = %62
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %95, %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %84, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %98

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %79

98:                                               ; preds = %93, %79
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %168

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %12, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @WHERE_REVERSE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @testcase(i32 %118)
  br label %120

120:                                              ; preds = %103, %65
  br label %135

121:                                              ; preds = %46
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %168

125:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @WHERE_REVERSE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @testcase(i32 %133)
  br label %135

135:                                              ; preds = %125, %120
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @WHERE_REVERSE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %135
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 1
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i1 [ true, %143 ], [ %148, %146 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = icmp eq i32 %153, 1
  %155 = zext i1 %154 to i32
  %156 = call i32 @testcase(i32 %155)
  %157 = load i32, i32* %12, align 4
  %158 = sub nsw i32 1, %157
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %149, %135
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %4, align 4
  br label %168

162:                                              ; preds = %36
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %8, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 -1
  store %struct.TYPE_9__* %166, %struct.TYPE_9__** %10, align 8
  br label %27

167:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %159, %124, %102, %45
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
