; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_bdiff.c_diff.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_bdiff.c_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hunk = type { i32, i32, i32, i32 }
%struct.line = type { i32 }
%struct.hunklist = type { %struct.hunk*, %struct.hunk* }
%struct.pos = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ %struct.hunk*, %struct.hunk* } (%struct.line*, i32, %struct.line*, i32)* @diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { %struct.hunk*, %struct.hunk* } @diff(%struct.line* %0, i32 %1, %struct.line* %2, i32 %3) #0 {
  %5 = alloca %struct.hunklist, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.line*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hunk*, align 8
  %11 = alloca %struct.pos*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hunk*, align 8
  %14 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.line* %2, %struct.line** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.line*, %struct.line** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.line*, %struct.line** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @equatelines(%struct.line* %15, i32 %16, %struct.line* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 1, %24 ]
  %27 = call i64 @calloc(i32 %26, i32 4)
  %28 = inttoptr i64 %27 to %struct.pos*
  store %struct.pos* %28, %struct.pos** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 16, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to %struct.hunk*
  %44 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 1
  store %struct.hunk* %43, %struct.hunk** %44, align 8
  %45 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  store %struct.hunk* %43, %struct.hunk** %45, align 8
  %46 = load %struct.pos*, %struct.pos** %11, align 8
  %47 = icmp ne %struct.pos* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 1
  %50 = load %struct.hunk*, %struct.hunk** %49, align 8
  %51 = icmp ne %struct.hunk* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load %struct.line*, %struct.line** %6, align 8
  %57 = load %struct.line*, %struct.line** %8, align 8
  %58 = load %struct.pos*, %struct.pos** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @recurse(%struct.line* %56, %struct.line* %57, %struct.pos* %58, i32 0, i32 %59, i32 0, i32 %60, %struct.hunklist* %5)
  %62 = load i32, i32* %7, align 4
  %63 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %64 = load %struct.hunk*, %struct.hunk** %63, align 8
  %65 = getelementptr inbounds %struct.hunk, %struct.hunk* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %67 = load %struct.hunk*, %struct.hunk** %66, align 8
  %68 = getelementptr inbounds %struct.hunk, %struct.hunk* %67, i32 0, i32 0
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %71 = load %struct.hunk*, %struct.hunk** %70, align 8
  %72 = getelementptr inbounds %struct.hunk, %struct.hunk* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %74 = load %struct.hunk*, %struct.hunk** %73, align 8
  %75 = getelementptr inbounds %struct.hunk, %struct.hunk* %74, i32 0, i32 2
  store i32 %69, i32* %75, align 4
  %76 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %77 = load %struct.hunk*, %struct.hunk** %76, align 8
  %78 = getelementptr inbounds %struct.hunk, %struct.hunk* %77, i32 1
  store %struct.hunk* %78, %struct.hunk** %76, align 8
  br label %79

79:                                               ; preds = %55, %52, %48, %36
  %80 = load %struct.pos*, %struct.pos** %11, align 8
  %81 = call i32 @free(%struct.pos* %80)
  %82 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 1
  %83 = load %struct.hunk*, %struct.hunk** %82, align 8
  store %struct.hunk* %83, %struct.hunk** %10, align 8
  br label %84

84:                                               ; preds = %229, %79
  %85 = load %struct.hunk*, %struct.hunk** %10, align 8
  %86 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %87 = load %struct.hunk*, %struct.hunk** %86, align 8
  %88 = icmp ne %struct.hunk* %85, %87
  br i1 %88, label %89, label %232

89:                                               ; preds = %84
  %90 = load %struct.hunk*, %struct.hunk** %10, align 8
  %91 = getelementptr inbounds %struct.hunk, %struct.hunk* %90, i64 1
  store %struct.hunk* %91, %struct.hunk** %13, align 8
  store i32 0, i32* %14, align 4
  %92 = load %struct.hunk*, %struct.hunk** %13, align 8
  %93 = getelementptr inbounds %struct.hunklist, %struct.hunklist* %5, i32 0, i32 0
  %94 = load %struct.hunk*, %struct.hunk** %93, align 8
  %95 = icmp eq %struct.hunk* %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %232

97:                                               ; preds = %89
  %98 = load %struct.hunk*, %struct.hunk** %10, align 8
  %99 = getelementptr inbounds %struct.hunk, %struct.hunk* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hunk*, %struct.hunk** %13, align 8
  %102 = getelementptr inbounds %struct.hunk, %struct.hunk* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %150

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %146, %105
  %107 = load %struct.hunk*, %struct.hunk** %10, align 8
  %108 = getelementptr inbounds %struct.hunk, %struct.hunk* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %106
  %115 = load %struct.hunk*, %struct.hunk** %10, align 8
  %116 = getelementptr inbounds %struct.hunk, %struct.hunk* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %114
  %123 = load %struct.line*, %struct.line** %6, align 8
  %124 = load %struct.hunk*, %struct.hunk** %10, align 8
  %125 = getelementptr inbounds %struct.hunk, %struct.hunk* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.line, %struct.line* %123, i64 %127
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.line, %struct.line* %128, i64 %130
  %132 = load %struct.line*, %struct.line** %8, align 8
  %133 = load %struct.hunk*, %struct.hunk** %10, align 8
  %134 = getelementptr inbounds %struct.hunk, %struct.hunk* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.line, %struct.line* %132, i64 %136
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.line, %struct.line* %137, i64 %139
  %141 = call i32 @cmp(%struct.line* %131, %struct.line* %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %122, %114, %106
  %145 = phi i1 [ false, %114 ], [ false, %106 ], [ %143, %122 ]
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %106

149:                                              ; preds = %144
  br label %204

150:                                              ; preds = %97
  %151 = load %struct.hunk*, %struct.hunk** %10, align 8
  %152 = getelementptr inbounds %struct.hunk, %struct.hunk* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.hunk*, %struct.hunk** %13, align 8
  %155 = getelementptr inbounds %struct.hunk, %struct.hunk* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %199, %158
  %160 = load %struct.hunk*, %struct.hunk** %10, align 8
  %161 = getelementptr inbounds %struct.hunk, %struct.hunk* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %9, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %197

167:                                              ; preds = %159
  %168 = load %struct.hunk*, %struct.hunk** %10, align 8
  %169 = getelementptr inbounds %struct.hunk, %struct.hunk* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %7, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %167
  %176 = load %struct.line*, %struct.line** %8, align 8
  %177 = load %struct.hunk*, %struct.hunk** %10, align 8
  %178 = getelementptr inbounds %struct.hunk, %struct.hunk* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.line, %struct.line* %176, i64 %180
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.line, %struct.line* %181, i64 %183
  %185 = load %struct.line*, %struct.line** %6, align 8
  %186 = load %struct.hunk*, %struct.hunk** %10, align 8
  %187 = getelementptr inbounds %struct.hunk, %struct.hunk* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.line, %struct.line* %185, i64 %189
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.line, %struct.line* %190, i64 %192
  %194 = call i32 @cmp(%struct.line* %184, %struct.line* %193)
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %175, %167, %159
  %198 = phi i1 [ false, %167 ], [ false, %159 ], [ %196, %175 ]
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %159

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202, %150
  br label %204

204:                                              ; preds = %203, %149
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  br label %229

208:                                              ; preds = %204
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.hunk*, %struct.hunk** %10, align 8
  %211 = getelementptr inbounds %struct.hunk, %struct.hunk* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.hunk*, %struct.hunk** %13, align 8
  %216 = getelementptr inbounds %struct.hunk, %struct.hunk* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.hunk*, %struct.hunk** %10, align 8
  %221 = getelementptr inbounds %struct.hunk, %struct.hunk* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.hunk*, %struct.hunk** %13, align 8
  %226 = getelementptr inbounds %struct.hunk, %struct.hunk* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %208, %207
  %230 = load %struct.hunk*, %struct.hunk** %10, align 8
  %231 = getelementptr inbounds %struct.hunk, %struct.hunk* %230, i32 1
  store %struct.hunk* %231, %struct.hunk** %10, align 8
  br label %84

232:                                              ; preds = %96, %84
  %233 = bitcast %struct.hunklist* %5 to { %struct.hunk*, %struct.hunk* }*
  %234 = load { %struct.hunk*, %struct.hunk* }, { %struct.hunk*, %struct.hunk* }* %233, align 8
  ret { %struct.hunk*, %struct.hunk* } %234
}

declare dso_local i32 @equatelines(%struct.line*, i32, %struct.line*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @recurse(%struct.line*, %struct.line*, %struct.pos*, i32, i32, i32, i32, %struct.hunklist*) #1

declare dso_local i32 @free(%struct.pos*) #1

declare dso_local i32 @cmp(%struct.line*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
