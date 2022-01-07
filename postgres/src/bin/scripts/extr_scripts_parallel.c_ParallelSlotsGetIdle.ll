; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_scripts_parallel.c_ParallelSlotsGetIdle.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_scripts_parallel.c_ParallelSlotsGetIdle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ParallelSlotsGetIdle(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %3, align 8
  br label %179

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %14

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %168, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %169

44:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %45 = call i32 @FD_ZERO(i32* %8)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %70, %44
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PQsocket(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %70

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @FD_SET(i32 %62, i32* %8)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %61
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SetCancelConn(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @select_loop(i32 %78, i32* %8, i32* %10)
  store i32 %79, i32* %6, align 4
  %80 = call i32 (...) @ResetCancelConn()
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @consumeQueryResult(i32 %86)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %179

88:                                               ; preds = %73
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %165, %88
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %168

97:                                               ; preds = %93
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PQsocket(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @FD_ISSET(i32 %108, i32* %8)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PQconsumeInput(i32 %117)
  br label %119

119:                                              ; preds = %111, %107, %97
  br label %120

120:                                              ; preds = %163, %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @PQisBusy(i32 %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %164

130:                                              ; preds = %120
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @PQgetResult(i32 %136)
  store i32* %137, i32** %13, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %130
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @processQueryResult(i32 %146, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %140
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %179

151:                                              ; preds = %140
  br label %163

152:                                              ; preds = %130
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %160, %152
  br label %164

163:                                              ; preds = %151
  br label %120

164:                                              ; preds = %162, %120
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %93

168:                                              ; preds = %93
  br label %41

169:                                              ; preds = %41
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  store %struct.TYPE_4__* %178, %struct.TYPE_4__** %3, align 8
  br label %179

179:                                              ; preds = %169, %150, %83, %26
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %180
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @PQsocket(i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @SetCancelConn(i32) #1

declare dso_local i32 @select_loop(i32, i32*, i32*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @consumeQueryResult(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @PQconsumeInput(i32) #1

declare dso_local i32 @PQisBusy(i32) #1

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i32 @processQueryResult(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
