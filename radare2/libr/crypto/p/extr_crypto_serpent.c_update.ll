; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_serpent.c_update.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_serpent.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@st = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @BLOCK_SIZE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BLOCK_SIZE, align 4
  %22 = srem i32 %20, %21
  %23 = sub nsw i32 %19, %22
  %24 = load i32, i32* @BLOCK_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @BLOCK_SIZE, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sdiv i32 %32, 4
  %34 = call i32* @calloc(i32 4, i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %204

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %39, 4
  %41 = call i32* @calloc(i32 4, i32 %40)
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @free(i32* %45)
  store i32 0, i32* %4, align 4
  br label %204

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %48, 4
  %50 = call i32* @calloc(i32 4, i32 %49)
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @free(i32* %54)
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @free(i32* %56)
  store i32 0, i32* %4, align 4
  br label %204

58:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sdiv i32 %61, 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 4, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = call i32 @r_read_le32(i32* %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* @BLOCK_SIZE, align 4
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sdiv i32 %91, 4
  store i32 %92, i32* %16, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @serpent_encrypt(i32* @st, i32* %96, i32* %100)
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %84

105:                                              ; preds = %84
  br label %135

106:                                              ; preds = %78
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load i32, i32* @BLOCK_SIZE, align 4
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sdiv i32 %119, 4
  store i32 %120, i32* %17, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i32 @serpent_decrypt(i32* @st, i32* %124, i32* %128)
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %112

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133, %106
  br label %135

135:                                              ; preds = %134, %105
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %190, %135
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %9, align 4
  %139 = sdiv i32 %138, 4
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %136
  %142 = load i32, i32* %12, align 4
  %143 = mul nsw i32 4, %142
  store i32 %143, i32* %18, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 255
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 8
  %160 = and i32 %159, 255
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %172, i32* %177, align 4
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 24
  %184 = and i32 %183, 255
  %185 = load i32*, i32** %13, align 8
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  br label %190

190:                                              ; preds = %141
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %136

193:                                              ; preds = %136
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @r_crypto_append(%struct.TYPE_4__* %194, i32* %195, i32 %196)
  %198 = load i32*, i32** %13, align 8
  %199 = call i32 @free(i32* %198)
  %200 = load i32*, i32** %14, align 8
  %201 = call i32 @free(i32* %200)
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @free(i32* %202)
  store i32 1, i32* %4, align 4
  br label %204

204:                                              ; preds = %193, %53, %44, %37
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @r_read_le32(i32*) #1

declare dso_local i32 @serpent_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @serpent_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @r_crypto_append(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
