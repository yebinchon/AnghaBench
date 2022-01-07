; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_bdiff.c_longest_match.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_bdiff.c_longest_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i64 }
%struct.pos = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line*, %struct.line*, %struct.pos*, i32, i32, i32, i32, i32*, i32*)* @longest_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longest_match(%struct.line* %0, %struct.line* %1, %struct.pos* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.line*, align 8
  %11 = alloca %struct.line*, align 8
  %12 = alloca %struct.pos*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %10, align 8
  store %struct.line* %1, %struct.line** %11, align 8
  store %struct.pos* %2, %struct.pos** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %23, align 4
  br label %29

29:                                               ; preds = %115, %9
  %30 = load i32, i32* %23, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %118

33:                                               ; preds = %29
  %34 = load %struct.line*, %struct.line** %10, align 8
  %35 = load i32, i32* %23, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.line, %struct.line* %34, i64 %36
  %38 = getelementptr inbounds %struct.line, %struct.line* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %24, align 4
  br label %40

40:                                               ; preds = %45, %33
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.line*, %struct.line** %11, align 8
  %47 = load i32, i32* %24, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.line, %struct.line* %46, i64 %48
  %50 = getelementptr inbounds %struct.line, %struct.line* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %24, align 4
  br label %40

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %107, %52
  %54 = load i32, i32* %24, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %57
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load %struct.pos*, %struct.pos** %12, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pos, %struct.pos* %66, i64 %69
  %71 = getelementptr inbounds %struct.pos, %struct.pos* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %23, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %65
  %77 = load %struct.pos*, %struct.pos** %12, align 8
  %78 = load i32, i32* %24, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pos, %struct.pos* %77, i64 %80
  %82 = getelementptr inbounds %struct.pos, %struct.pos* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %25, align 4
  br label %86

85:                                               ; preds = %65, %61, %57
  store i32 1, i32* %25, align 4
  br label %86

86:                                               ; preds = %85, %76
  %87 = load i32, i32* %23, align 4
  %88 = load %struct.pos*, %struct.pos** %12, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pos, %struct.pos* %88, i64 %90
  %92 = getelementptr inbounds %struct.pos, %struct.pos* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load %struct.pos*, %struct.pos** %12, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pos, %struct.pos* %94, i64 %96
  %98 = getelementptr inbounds %struct.pos, %struct.pos* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %21, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %86
  %103 = load i32, i32* %23, align 4
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %24, align 4
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %25, align 4
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %102, %86
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.line*, %struct.line** %11, align 8
  %109 = load i32, i32* %24, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.line, %struct.line* %108, i64 %110
  %112 = getelementptr inbounds %struct.line, %struct.line* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %24, align 4
  br label %53

114:                                              ; preds = %53
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %23, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %23, align 4
  br label %29

118:                                              ; preds = %29
  %119 = load i32, i32* %21, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %21, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %21, align 4
  %128 = sub nsw i32 %126, %127
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  br label %130

130:                                              ; preds = %121, %118
  br label %131

131:                                              ; preds = %165, %130
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %22, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %131
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %22, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %15, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %137
  %144 = load %struct.line*, %struct.line** %10, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %22, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.line, %struct.line* %144, i64 %149
  %151 = getelementptr inbounds %struct.line, %struct.line* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.line*, %struct.line** %11, align 8
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %22, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.line, %struct.line* %153, i64 %158
  %160 = getelementptr inbounds %struct.line, %struct.line* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %152, %161
  br label %163

163:                                              ; preds = %143, %137, %131
  %164 = phi i1 [ false, %137 ], [ false, %131 ], [ %162, %143 ]
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = load i32, i32* %22, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %22, align 4
  br label %131

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %201, %168
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %21, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %14, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %169
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %175
  %182 = load %struct.line*, %struct.line** %10, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %21, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.line, %struct.line* %182, i64 %186
  %188 = getelementptr inbounds %struct.line, %struct.line* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.line*, %struct.line** %11, align 8
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %21, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.line, %struct.line* %190, i64 %194
  %196 = getelementptr inbounds %struct.line, %struct.line* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %189, %197
  br label %199

199:                                              ; preds = %181, %175, %169
  %200 = phi i1 [ false, %175 ], [ false, %169 ], [ %198, %181 ]
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %21, align 4
  br label %169

204:                                              ; preds = %199
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %22, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32*, i32** %17, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %22, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32*, i32** %18, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %22, align 4
  %215 = add nsw i32 %213, %214
  ret i32 %215
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
