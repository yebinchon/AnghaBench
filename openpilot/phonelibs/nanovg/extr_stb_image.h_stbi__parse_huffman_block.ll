; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__parse_huffman_block.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__parse_huffman_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@stbi__zlength_base = common dso_local global i32* null, align 8
@stbi__zlength_extra = common dso_local global i64* null, align 8
@stbi__zdist_base = common dso_local global i32* null, align 8
@stbi__zdist_extra = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"bad dist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @stbi__parse_huffman_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__parse_huffman_block(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %189, %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = call i32 @stbi__zhuffman_decode(%struct.TYPE_6__* %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %46

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %190

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp uge i8* %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @stbi__zexpand(%struct.TYPE_6__* %32, i8* %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %190

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %37, %25
  %42 = load i32, i32* %5, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  store i8 %43, i8* %44, align 1
  br label %189

46:                                               ; preds = %13
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 256
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  store i32 1, i32* %2, align 4
  br label %190

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 257
  store i32 %55, i32* %5, align 4
  %56 = load i32*, i32** @stbi__zlength_base, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i64*, i64** @stbi__zlength_extra, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %53
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = load i64*, i64** @stbi__zlength_extra, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @stbi__zreceive(%struct.TYPE_6__* %68, i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %67, %53
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = call i32 @stbi__zhuffman_decode(%struct.TYPE_6__* %80, i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %87, i32* %2, align 4
  br label %190

88:                                               ; preds = %79
  %89 = load i32*, i32** @stbi__zdist_base, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i64*, i64** @stbi__zdist_extra, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = load i64*, i64** @stbi__zdist_extra, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @stbi__zreceive(%struct.TYPE_6__* %101, i64 %106)
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %100, %88
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %113 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = call i32 @stbi__err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %124, i32* %2, align 4
  br label %190

125:                                              ; preds = %112
  %126 = load i8*, i8** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ugt i8* %129, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %125
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @stbi__zexpand(%struct.TYPE_6__* %135, i8* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %190

141:                                              ; preds = %134
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %4, align 8
  br label %145

145:                                              ; preds = %141, %125
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 0, %148
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = bitcast i8* %150 to i32*
  store i32* %151, i32** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %171

154:                                              ; preds = %145
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %165, %159
  %161 = load i32, i32* %9, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  store i8 %162, i8* %163, align 1
  br label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %160, label %169

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %154
  br label %188

171:                                              ; preds = %145
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %182, %174
  %176 = load i32*, i32** %6, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %6, align 8
  %178 = load i32, i32* %176, align 4
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %4, align 8
  store i8 %179, i8* %180, align 1
  br label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %175, label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %171
  br label %188

188:                                              ; preds = %187, %170
  br label %189

189:                                              ; preds = %188, %41
  br label %13

190:                                              ; preds = %140, %123, %86, %49, %36, %23
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @stbi__zhuffman_decode(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__zexpand(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @stbi__zreceive(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
