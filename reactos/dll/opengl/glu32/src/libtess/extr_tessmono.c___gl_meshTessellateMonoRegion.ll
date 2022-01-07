; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_tessmono.c___gl_meshTessellateMonoRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_tessmono.c___gl_meshTessellateMonoRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gl_meshTessellateMonoRegion(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp ne %struct.TYPE_9__* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp ne %struct.TYPE_9__* %22, %23
  br label %25

25:                                               ; preds = %17, %1
  %26 = phi i1 [ false, %1 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %39, %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @VertLeq(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %4, align 8
  br label %29

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %54, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @VertLeq(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %4, align 8
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %5, align 8
  br label %62

62:                                               ; preds = %173, %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = icmp ne %struct.TYPE_9__* %65, %66
  br i1 %67, label %68, label %174

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @VertLeq(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %117, %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = icmp ne %struct.TYPE_9__* %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = call i64 @EdgeGoesLeft(%struct.TYPE_9__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @EdgeSign(i32 %93, i32 %96, i32 %101)
  %103 = icmp sle i64 %102, 0
  br label %104

104:                                              ; preds = %90, %84
  %105 = phi i1 [ true, %84 ], [ %103, %90 ]
  br label %106

106:                                              ; preds = %104, %78
  %107 = phi i1 [ false, %78 ], [ %105, %104 ]
  br i1 %107, label %108, label %121

108:                                              ; preds = %106
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = call %struct.TYPE_9__* @__gl_meshConnect(%struct.TYPE_9__* %111, %struct.TYPE_9__* %112)
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %6, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = icmp eq %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %204

117:                                              ; preds = %108
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %5, align 8
  br label %78

121:                                              ; preds = %106
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %5, align 8
  br label %173

125:                                              ; preds = %68
  br label %126

126:                                              ; preds = %165, %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = icmp ne %struct.TYPE_9__* %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %126
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i64 @EdgeGoesRight(%struct.TYPE_9__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @EdgeSign(i32 %141, i32 %144, i32 %149)
  %151 = icmp sge i64 %150, 0
  br label %152

152:                                              ; preds = %138, %132
  %153 = phi i1 [ true, %132 ], [ %151, %138 ]
  br label %154

154:                                              ; preds = %152, %126
  %155 = phi i1 [ false, %126 ], [ %153, %152 ]
  br i1 %155, label %156, label %169

156:                                              ; preds = %154
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = call %struct.TYPE_9__* @__gl_meshConnect(%struct.TYPE_9__* %157, %struct.TYPE_9__* %160)
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %7, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = icmp eq %struct.TYPE_9__* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %204

165:                                              ; preds = %156
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %4, align 8
  br label %126

169:                                              ; preds = %154
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  store %struct.TYPE_9__* %172, %struct.TYPE_9__** %4, align 8
  br label %173

173:                                              ; preds = %169, %121
  br label %62

174:                                              ; preds = %62
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = icmp ne %struct.TYPE_9__* %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  br label %182

182:                                              ; preds = %199, %174
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %189 = icmp ne %struct.TYPE_9__* %187, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %182
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = call %struct.TYPE_9__* @__gl_meshConnect(%struct.TYPE_9__* %193, %struct.TYPE_9__* %194)
  store %struct.TYPE_9__* %195, %struct.TYPE_9__** %8, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %197 = icmp eq %struct.TYPE_9__* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %204

199:                                              ; preds = %190
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  store %struct.TYPE_9__* %202, %struct.TYPE_9__** %5, align 8
  br label %182

203:                                              ; preds = %182
  store i32 1, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %198, %164, %116
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VertLeq(i32, i32) #1

declare dso_local i64 @EdgeGoesLeft(%struct.TYPE_9__*) #1

declare dso_local i64 @EdgeSign(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @__gl_meshConnect(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @EdgeGoesRight(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
