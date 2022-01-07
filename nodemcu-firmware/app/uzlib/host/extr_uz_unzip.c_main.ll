; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/host/extr_uz_unzip.c_main.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/host/extr_uz_unzip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_5__**, i32, i32, i32* }

@in = common dso_local global %struct.TYPE_5__* null, align 8
@out = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Inflating in=%s out=%s\0A\00", align 1
@DICTIONARY_WINDOW = common dso_local global i32 0, align 4
@WRITE_BLOCKS = common dso_local global i32 0, align 4
@WRITE_BLOCKSIZE = common dso_local global i32 0, align 4
@processOutRec = common dso_local global i32 0, align 4
@get_byte = common dso_local global i32 0, align 4
@put_byte = common dso_local global i32 0, align 4
@recall_byte = common dso_local global i32 0, align 4
@UZLIB_CHKSUM_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error during decompression: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 3
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = call i32 @assert(i32 1)
  %24 = call i8* @uz_malloc(i32 40)
  %25 = bitcast i8* %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** @in, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i8* @uz_malloc(i32 40)
  %30 = bitcast i8* %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** @out, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %35 = call i32 @memset(%struct.TYPE_5__* %34, i32 0, i32 40)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %37 = call i32 @memset(%struct.TYPE_5__* %36, i32 0, i32 40)
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @fopen(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = icmp ne i32* %40, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @SEEK_END, align 4
  %50 = call i32 @fseek(i32* %48, i32 -4, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @fread(i32* %52, i32 1, i32 4, i32* %55)
  %57 = icmp eq i32 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ftell(i32* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @fseek(i32* %68, i32 0, i32 %69)
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @fopen(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  %76 = icmp ne i32* %73, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DICTIONARY_WINDOW, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %2
  %88 = load i32, i32* @WRITE_BLOCKS, align 4
  br label %97

89:                                               ; preds = %2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* @WRITE_BLOCKSIZE, align 4
  %95 = sdiv i32 %93, %94
  %96 = add nsw i32 1, %95
  br label %97

97:                                               ; preds = %89, %87
  %98 = phi i32 [ %88, %87 ], [ %96, %89 ]
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @WRITE_BLOCKS, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %121, %97
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @WRITE_BLOCKS, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = call i8* @uz_malloc(i32 4)
  %109 = bitcast i8* %108 to %struct.TYPE_5__*
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @WRITE_BLOCKS, align 4
  %115 = srem i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %116
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %117, align 8
  %118 = icmp ne %struct.TYPE_5__* %109, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %103

124:                                              ; preds = %103
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @WRITE_BLOCKSIZE, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  br label %136

134:                                              ; preds = %124
  %135 = load i32, i32* @WRITE_BLOCKSIZE, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i32 [ %133, %130 ], [ %135, %134 ]
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @processOutRec, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  store i32 -1, i32* %144, align 8
  %145 = load i32, i32* @get_byte, align 4
  %146 = load i32, i32* @put_byte, align 4
  %147 = load i32, i32* @recall_byte, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @uzlib_inflate(i32 %145, i32 %146, i32 %147, i32 %150, i32* %11, i8** %12)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %136
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = xor i32 %158, -1
  %160 = icmp ne i32 %155, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @UZLIB_CHKSUM_ERROR, align 4
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %161, %154, %136
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %177, %163
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @WRITE_BLOCKS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %171, i64 %173
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = call i32 @FREE(%struct.TYPE_5__* %175)
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %164

180:                                              ; preds = %164
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @fclose(i32* %183)
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in, align 8
  %186 = call i32 @FREE(%struct.TYPE_5__* %185)
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** @out, align 8
  %188 = call i32 @FREE(%struct.TYPE_5__* %187)
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load i32, i32* %10, align 4
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191, %180
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 1, i32 0
  ret i32 %198
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @uz_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @uzlib_inflate(i32, i32, i32, i32, i32*, i8**) #1

declare dso_local i32 @FREE(%struct.TYPE_5__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
