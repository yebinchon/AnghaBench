; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_read_color_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_gl_read_color_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i64, i64, i64, i64*, i64*, i64*, i64*)* }
%struct.TYPE_8__ = type { i64, i64 }

@ALPHABUF_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_read_color_span(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %8
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %21, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %29, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %28, %20, %8
  store i64 0, i64* %17, align 8
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i64*, i64** %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 0, i64* %44, align 8
  %45 = load i64*, i64** %15, align 8
  %46 = load i64, i64* %17, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i64, i64* %17, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load i64*, i64** %13, align 8
  %52 = load i64, i64* %17, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %41
  %55 = load i64, i64* %17, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %17, align 8
  br label %37

57:                                               ; preds = %37
  br label %179

58:                                               ; preds = %28
  %59 = load i64, i64* %11, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %62, %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ule i64 %64, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %61
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_10__*, i64, i64, i64, i64*, i64*, i64*, i64*)*, i32 (%struct.TYPE_10__*, i64, i64, i64, i64*, i64*, i64*, i64*)** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64*, i64** %13, align 8
  %81 = load i64*, i64** %14, align 8
  %82 = load i64*, i64** %15, align 8
  %83 = load i64*, i64** %16, align 8
  %84 = call i32 %75(%struct.TYPE_10__* %76, i64 %77, i64 %78, i64 %79, i64* %80, i64* %81, i64* %82, i64* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ALPHABUF_BIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %71
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64*, i64** %16, align 8
  %97 = call i32 @gl_read_alpha_span(%struct.TYPE_10__* %92, i64 %93, i64 %94, i64 %95, i64* %96)
  br label %98

98:                                               ; preds = %91, %71
  br label %178

99:                                               ; preds = %61, %58
  store i64 0, i64* %17, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %111, %102
  %104 = load i64, i64* %11, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* %10, align 8
  %108 = icmp ugt i64 %107, 0
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ false, %103 ], [ %108, %106 ]
  br i1 %110, label %111, label %130

111:                                              ; preds = %109
  %112 = load i64*, i64** %16, align 8
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 0, i64* %114, align 8
  %115 = load i64*, i64** %15, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 0, i64* %117, align 8
  %118 = load i64*, i64** %14, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 0, i64* %120, align 8
  %121 = load i64*, i64** %13, align 8
  %122 = load i64, i64* %17, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  store i64 0, i64* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %10, align 8
  %128 = load i64, i64* %17, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %17, align 8
  br label %103

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130, %99
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub nsw i64 %137, %138
  %140 = call i64 @MIN2(i64 %132, i64 %139)
  store i64 %140, i64* %10, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32 (%struct.TYPE_10__*, i64, i64, i64, i64*, i64*, i64*, i64*)*, i32 (%struct.TYPE_10__*, i64, i64, i64, i64*, i64*, i64*, i64*)** %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i64*, i64** %13, align 8
  %150 = load i64, i64* %17, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64*, i64** %14, align 8
  %153 = load i64, i64* %17, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64*, i64** %15, align 8
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64*, i64** %16, align 8
  %159 = load i64, i64* %17, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = call i32 %144(%struct.TYPE_10__* %145, i64 %146, i64 %147, i64 %148, i64* %151, i64* %154, i64* %157, i64* %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @ALPHABUF_BIT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %131
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i64*, i64** %16, align 8
  %174 = load i64, i64* %17, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = call i32 @gl_read_alpha_span(%struct.TYPE_10__* %169, i64 %170, i64 %171, i64 %172, i64* %175)
  br label %177

177:                                              ; preds = %168, %131
  br label %178

178:                                              ; preds = %177, %98
  br label %179

179:                                              ; preds = %178, %57
  ret void
}

declare dso_local i32 @gl_read_alpha_span(%struct.TYPE_10__*, i64, i64, i64, i64*) #1

declare dso_local i64 @MIN2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
