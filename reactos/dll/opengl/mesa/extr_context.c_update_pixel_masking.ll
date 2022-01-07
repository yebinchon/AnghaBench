; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_update_pixel_masking.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_update_pixel_masking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_13__*, i32)*, i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)* }
%struct.TYPE_10__ = type { i64 }

@GL_TRUE = common dso_local global i8* null, align 8
@GL_FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @update_pixel_masking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pixel_masking(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)*, i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)** %22, align 8
  %24 = icmp ne i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)*, i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = load i8*, i8** @GL_TRUE, align 8
  %32 = load i8*, i8** @GL_TRUE, align 8
  %33 = load i8*, i8** @GL_TRUE, align 8
  %34 = load i8*, i8** @GL_TRUE, align 8
  %35 = call i64 %29(%struct.TYPE_13__* %30, i8* %31, i8* %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %25, %19
  %37 = load i8*, i8** @GL_FALSE, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  br label %118

41:                                               ; preds = %13
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i8*, i8** @GL_TRUE, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load i8*, i8** @GL_FALSE, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  store i8* %53, i8** %3, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i8*, i8** @GL_TRUE, align 8
  br label %64

62:                                               ; preds = %52
  %63 = load i8*, i8** @GL_FALSE, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  store i8* %65, i8** %4, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i8*, i8** @GL_TRUE, align 8
  br label %76

74:                                               ; preds = %64
  %75 = load i8*, i8** @GL_FALSE, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8* [ %73, %72 ], [ %75, %74 ]
  store i8* %77, i8** %5, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i8*, i8** @GL_TRUE, align 8
  br label %88

86:                                               ; preds = %76
  %87 = load i8*, i8** @GL_FALSE, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i8* [ %85, %84 ], [ %87, %86 ]
  store i8* %89, i8** %6, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)*, i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)** %92, align 8
  %94 = icmp ne i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %88
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)*, i64 (%struct.TYPE_13__*, i8*, i8*, i8*, i8*)** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i64 %99(%struct.TYPE_13__* %100, i8* %101, i8* %102, i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %95
  %108 = load i8*, i8** @GL_FALSE, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  br label %117

112:                                              ; preds = %95, %88
  %113 = load i8*, i8** @GL_TRUE, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  store i8* %113, i8** %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %36
  br label %173

119:                                              ; preds = %1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64 (%struct.TYPE_13__*, i32)*, i64 (%struct.TYPE_13__*, i32)** %128, align 8
  %130 = icmp ne i64 (%struct.TYPE_13__*, i32)* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64 (%struct.TYPE_13__*, i32)*, i64 (%struct.TYPE_13__*, i32)** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %137 = call i64 %135(%struct.TYPE_13__* %136, i32 -1)
  br label %138

138:                                              ; preds = %131, %125
  %139 = load i8*, i8** @GL_FALSE, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store i8* %139, i8** %142, align 8
  br label %172

143:                                              ; preds = %119
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64 (%struct.TYPE_13__*, i32)*, i64 (%struct.TYPE_13__*, i32)** %146, align 8
  %148 = icmp ne i64 (%struct.TYPE_13__*, i32)* %147, null
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64 (%struct.TYPE_13__*, i32)*, i64 (%struct.TYPE_13__*, i32)** %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i64 %153(%struct.TYPE_13__* %154, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %149
  %162 = load i8*, i8** @GL_FALSE, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  store i8* %162, i8** %165, align 8
  br label %171

166:                                              ; preds = %149, %143
  %167 = load i8*, i8** @GL_TRUE, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  store i8* %167, i8** %170, align 8
  br label %171

171:                                              ; preds = %166, %161
  br label %172

172:                                              ; preds = %171, %138
  br label %173

173:                                              ; preds = %172, %118
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
