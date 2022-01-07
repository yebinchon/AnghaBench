; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_to_direction.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_to_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__move_to_direction(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = call %struct.TYPE_15__* @__get_cur_panel(%struct.TYPE_14__* %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %7, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %34, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %54, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %188, %2
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %191

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__* %70, i32 %71)
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %17, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %84, %90
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %104, %110
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %5, align 4
  switch i32 %113, label %186 [
    i32 130, label %114
    i32 129, label %132
    i32 128, label %150
    i32 131, label %168
  ]

114:                                              ; preds = %69
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %118
  br label %188

127:                                              ; preds = %122
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @__set_curnode(%struct.TYPE_16__* %128, i32 %129)
  store i32 1, i32* %3, align 4
  br label %192

131:                                              ; preds = %114
  br label %187

132:                                              ; preds = %69
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %136
  br label %188

145:                                              ; preds = %140
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @__set_curnode(%struct.TYPE_16__* %146, i32 %147)
  store i32 1, i32* %3, align 4
  br label %192

149:                                              ; preds = %132
  br label %187

150:                                              ; preds = %69
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %154
  br label %188

163:                                              ; preds = %158
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @__set_curnode(%struct.TYPE_16__* %164, i32 %165)
  store i32 1, i32* %3, align 4
  br label %192

167:                                              ; preds = %150
  br label %187

168:                                              ; preds = %69
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176, %172
  br label %188

181:                                              ; preds = %176
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @__set_curnode(%struct.TYPE_16__* %182, i32 %183)
  store i32 1, i32* %3, align 4
  br label %192

185:                                              ; preds = %168
  br label %187

186:                                              ; preds = %69
  br label %187

187:                                              ; preds = %186, %185, %167, %149, %131
  br label %188

188:                                              ; preds = %187, %180, %162, %144, %126
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %63

191:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %181, %163, %145, %127
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.TYPE_15__* @__get_cur_panel(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
