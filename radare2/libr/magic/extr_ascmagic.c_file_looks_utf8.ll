; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_file_looks_utf8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_file_looks_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_chars = common dso_local global i64* null, align 8
@T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_looks_utf8(i32* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %4
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %188, %20
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %191

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = load i64*, i64** @text_chars, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @T, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %47, %44
  br label %187

58:                                               ; preds = %25
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 64
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %203

66:                                               ; preds = %58
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 31
  store i32 %78, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %136

79:                                               ; preds = %66
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 15
  store i32 %91, i32* %12, align 4
  store i32 2, i32* %15, align 4
  br label %135

92:                                               ; preds = %79
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 7
  store i32 %104, i32* %12, align 4
  store i32 3, i32* %15, align 4
  br label %134

105:                                              ; preds = %92
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 3
  store i32 %117, i32* %12, align 4
  store i32 4, i32* %15, align 4
  br label %133

118:                                              ; preds = %105
  %119 = load i32*, i32** %6, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 1
  store i32 %130, i32* %12, align 4
  store i32 5, i32* %15, align 4
  br label %132

131:                                              ; preds = %118
  store i32 -1, i32* %5, align 4
  br label %203

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %112
  br label %134

134:                                              ; preds = %133, %99
  br label %135

135:                                              ; preds = %134, %86
  br label %136

136:                                              ; preds = %135, %73
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %172, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %137
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %10, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp uge i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %192

148:                                              ; preds = %141
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 128
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = load i32*, i32** %6, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 64
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155, %148
  store i32 -1, i32* %5, align 4
  br label %203

163:                                              ; preds = %155
  %164 = load i32, i32* %12, align 4
  %165 = shl i32 %164, 6
  %166 = load i32*, i32** %6, align 8
  %167 = load i64, i64* %10, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 63
  %171 = add nsw i32 %165, %170
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %137

175:                                              ; preds = %137
  %176 = load i32*, i32** %8, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  %184 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %178, %175
  store i32 1, i32* %13, align 4
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %57
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %10, align 8
  br label %21

191:                                              ; preds = %21
  br label %192

192:                                              ; preds = %191, %147
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %201

196:                                              ; preds = %192
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 2, i32 1
  br label %201

201:                                              ; preds = %196, %195
  %202 = phi i32 [ 0, %195 ], [ %200, %196 ]
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %162, %131, %65
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
