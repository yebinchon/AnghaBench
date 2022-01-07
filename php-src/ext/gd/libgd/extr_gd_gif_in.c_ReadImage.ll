; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_ReadImage.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_ReadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32*, i32 }

@MAX_LWZ_BITS = common dso_local global i8 0, align 1
@gdMaxColors = common dso_local global i32 0, align 4
@CM_RED = common dso_local global i64 0, align 8
@CM_GREEN = common dso_local global i64 0, align 8
@CM_BLUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32, [256 x i8]*, i32, i32*)* @ReadImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadImage(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, [256 x i8]* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8]*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store [256 x i8]* %4, [256 x i8]** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @ReadOK(i32* %22, i8* %15, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  br label %185

26:                                               ; preds = %7
  %27 = load i8, i8* %15, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @MAX_LWZ_BITS, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %185

33:                                               ; preds = %26
  store i32 0, i32* %20, align 4
  br label %34

34:                                               ; preds = %84, %33
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* @gdMaxColors, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %34
  %39 = load [256 x i8]*, [256 x i8]** %12, align 8
  %40 = load i64, i64* @CM_RED, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %39, i64 %40
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %45, i8* %51, align 1
  %52 = load [256 x i8]*, [256 x i8]** %12, align 8
  %53 = load i64, i64* @CM_GREEN, align 8
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %52, i64 %53
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %54, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %58, i8* %64, align 1
  %65 = load [256 x i8]*, [256 x i8]** %12, align 8
  %66 = load i64, i64* @CM_BLUE, align 8
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %65, i64 %66
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %67, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %71, i8* %77, align 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %38
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %20, align 4
  br label %34

87:                                               ; preds = %34
  %88 = load i32, i32* @gdMaxColors, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = load i8, i8* %15, align 1
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @LWZReadByte(i32* %91, i32* %21, i32 %92, i8 zeroext %93, i32* %94)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %185

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %175, %98
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i8, i8* %15, align 1
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @LWZReadByte(i32* %100, i32* %21, i32 %101, i8 zeroext %102, i32* %103)
  store i32 %104, i32* %16, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %176

106:                                              ; preds = %99
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* @gdMaxColors, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %106
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %111
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @gdImageSetPixel(%struct.TYPE_4__* %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %170

138:                                              ; preds = %127
  store i32 0, i32* %17, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %138
  %142 = load i32, i32* %19, align 4
  switch i32 %142, label %152 [
    i32 0, label %143
    i32 1, label %143
    i32 2, label %146
    i32 3, label %149
  ]

143:                                              ; preds = %141, %141
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 8
  store i32 %145, i32* %18, align 4
  br label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 4
  store i32 %148, i32* %18, align 4
  br label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 2
  store i32 %151, i32* %18, align 4
  br label %152

152:                                              ; preds = %141, %149, %146, %143
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %19, align 4
  switch i32 %159, label %163 [
    i32 1, label %160
    i32 2, label %161
    i32 3, label %162
  ]

160:                                              ; preds = %156
  store i32 4, i32* %18, align 4
  br label %164

161:                                              ; preds = %156
  store i32 2, i32* %18, align 4
  br label %164

162:                                              ; preds = %156
  store i32 1, i32* %18, align 4
  br label %164

163:                                              ; preds = %156
  br label %177

164:                                              ; preds = %162, %161, %160
  br label %165

165:                                              ; preds = %164, %152
  br label %169

166:                                              ; preds = %138
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %166, %165
  br label %170

170:                                              ; preds = %169, %127
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %176

175:                                              ; preds = %170
  br label %99

176:                                              ; preds = %174, %99
  br label %177

177:                                              ; preds = %176, %163
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* @FALSE, align 4
  %180 = load i8, i8* %15, align 1
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @LWZReadByte(i32* %178, i32* %21, i32 %179, i8 zeroext %180, i32* %181)
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %25, %32, %97, %184, %177
  ret void
}

declare dso_local i32 @ReadOK(i32*, i8*, i32) #1

declare dso_local i32 @LWZReadByte(i32*, i32*, i32, i8 zeroext, i32*) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
