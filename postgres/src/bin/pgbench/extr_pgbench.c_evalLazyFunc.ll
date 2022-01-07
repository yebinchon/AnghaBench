; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_evalLazyFunc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_evalLazyFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }

@PGBT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_11__*, %struct.TYPE_10__*)* @evalLazyFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evalLazyFunc(i32* %0, i32 %1, %struct.TYPE_11__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @isLazyFunc(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br label %25

25:                                               ; preds = %20, %17, %4
  %26 = phi i1 [ false, %17 ], [ false, %4 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @evaluateExpr(i32* %29, i32 %32, %struct.TYPE_10__* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %158

36:                                               ; preds = %25
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %8, align 8
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %155 [
    i32 130, label %41
    i32 128, label %83
    i32 129, label %125
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PGBT_NULL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = call i32 @setNullValue(%struct.TYPE_10__* %47)
  store i32 1, i32* %5, align 4
  br label %158

49:                                               ; preds = %41
  %50 = call i32 @coerceToBool(%struct.TYPE_10__* %10, i32* %12)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %158

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = call i32 @setBoolValue(%struct.TYPE_10__* %57, i32 0)
  store i32 1, i32* %5, align 4
  br label %158

59:                                               ; preds = %53
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @evaluateExpr(i32* %60, i32 %63, %struct.TYPE_10__* %11)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %158

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PGBT_NULL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = call i32 @setNullValue(%struct.TYPE_10__* %73)
  store i32 1, i32* %5, align 4
  br label %158

75:                                               ; preds = %67
  %76 = call i32 @coerceToBool(%struct.TYPE_10__* %11, i32* %13)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %158

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @setBoolValue(%struct.TYPE_10__* %80, i32 %81)
  store i32 1, i32* %5, align 4
  br label %158

83:                                               ; preds = %36
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PGBT_NULL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = call i32 @setNullValue(%struct.TYPE_10__* %89)
  store i32 1, i32* %5, align 4
  br label %158

91:                                               ; preds = %83
  %92 = call i32 @coerceToBool(%struct.TYPE_10__* %10, i32* %12)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %158

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = call i32 @setBoolValue(%struct.TYPE_10__* %99, i32 1)
  store i32 1, i32* %5, align 4
  br label %158

101:                                              ; preds = %95
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @evaluateExpr(i32* %102, i32 %105, %struct.TYPE_10__* %11)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %158

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PGBT_NULL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = call i32 @setNullValue(%struct.TYPE_10__* %115)
  store i32 1, i32* %5, align 4
  br label %158

117:                                              ; preds = %109
  %118 = call i32 @coerceToBool(%struct.TYPE_10__* %11, i32* %13)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %158

121:                                              ; preds = %117
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @setBoolValue(%struct.TYPE_10__* %122, i32 %123)
  store i32 1, i32* %5, align 4
  br label %158

125:                                              ; preds = %36
  %126 = call i32 @valueTruth(%struct.TYPE_10__* %10)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = call i32 @evaluateExpr(i32* %129, i32 %132, %struct.TYPE_10__* %133)
  store i32 %134, i32* %5, align 4
  br label %158

135:                                              ; preds = %125
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  store %struct.TYPE_11__* %138, %struct.TYPE_11__** %8, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = icmp eq %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = call i32 @evaluateExpr(i32* %144, i32 %147, %struct.TYPE_10__* %148)
  store i32 %149, i32* %5, align 4
  br label %158

150:                                              ; preds = %135
  %151 = load i32*, i32** %6, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = call i32 @evalLazyFunc(i32* %151, i32 129, %struct.TYPE_11__* %152, %struct.TYPE_10__* %153)
  store i32 %154, i32* %5, align 4
  br label %158

155:                                              ; preds = %36
  %156 = call i32 @Assert(i32 0)
  br label %157

157:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %150, %143, %128, %121, %120, %114, %108, %98, %94, %88, %79, %78, %72, %66, %56, %52, %46, %35
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @isLazyFunc(i32) #1

declare dso_local i32 @evaluateExpr(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @setNullValue(%struct.TYPE_10__*) #1

declare dso_local i32 @coerceToBool(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @setBoolValue(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @valueTruth(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
