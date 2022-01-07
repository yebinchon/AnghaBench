; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjDecompressToYUV2.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjDecompressToYUV2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@TJFLAG_STOPONWARNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@this = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"tjDecompressToYUV2(): Invalid argument\00", align 1
@dinfo = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"tjDecompressToYUV2(): Could not determine subsampling type for JPEG image\00", align 1
@NUMSF = common dso_local global i32 0, align 4
@sf = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"tjDecompressToYUV2(): Could not scale down to desired image dimensions\00", align 1
@TJSAMP_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tjDecompressToYUV2(i32 %0, i8* %1, i64 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i8*], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [3 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @getdinstance(i32 %31)
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @TJFLAG_STOPONWARNING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = load i8*, i8** @TRUE, align 8
  br label %41

39:                                               ; preds = %8
  %40 = load i8*, i8** @FALSE, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %67, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %12, align 8
  %50 = icmp ule i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @isPow2(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %60, %57, %54, %51, %48, %41
  %68 = call i32 @_throw(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @setjmp(i32 %73) #3
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 -1, i32* %9, align 4
  br label %214

77:                                               ; preds = %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dinfo, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @jpeg_mem_src_tj(%struct.TYPE_9__* %78, i8* %79, i64 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dinfo, align 8
  %83 = load i8*, i8** @TRUE, align 8
  %84 = call i32 @jpeg_read_header(%struct.TYPE_9__* %82, i8* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dinfo, align 8
  %86 = call i32 @getSubsamp(%struct.TYPE_9__* %85)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = call i32 @_throw(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %77
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dinfo, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %25, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dinfo, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %26, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %25, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %100, %91
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %26, align 4
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %105, %102
  store i32 0, i32* %24, align 4
  br label %108

108:                                              ; preds = %136, %107
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* @NUMSF, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %108
  %113 = load i32, i32* %25, align 4
  %114 = load i32*, i32** @sf, align 8
  %115 = load i32, i32* %24, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @TJSCALED(i32 %113, i32 %118)
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %26, align 4
  %121 = load i32*, i32** @sf, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @TJSCALED(i32 %120, i32 %125)
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %27, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %112
  %131 = load i32, i32* %28, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %139

135:                                              ; preds = %130, %112
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %24, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %24, align 4
  br label %108

139:                                              ; preds = %134, %108
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* @NUMSF, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 @_throw(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %23, align 4
  %148 = call i32 @tjPlaneWidth(i32 0, i32 %146, i32 %147)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %23, align 4
  %151 = call i32 @tjPlaneHeight(i32 0, i32 %149, i32 %150)
  store i32 %151, i32* %20, align 4
  %152 = load i8*, i8** %13, align 8
  %153 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  store i8* %152, i8** %153, align 16
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @PAD(i32 %154, i32 %155)
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* @TJSAMP_GRAY, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %145
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 2
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 1
  store i32 0, i32* %163, align 4
  %164 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  store i8* null, i8** %164, align 16
  %165 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  store i8* null, i8** %165, align 8
  br label %196

166:                                              ; preds = %145
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %23, align 4
  %169 = call i32 @tjPlaneWidth(i32 1, i32 %167, i32 %168)
  store i32 %169, i32* %29, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %23, align 4
  %172 = call i32 @tjPlaneHeight(i32 1, i32 %170, i32 %171)
  store i32 %172, i32* %30, align 4
  %173 = load i32, i32* %29, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @PAD(i32 %173, i32 %174)
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 2
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 1
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %179 = load i8*, i8** %178, align 16
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %20, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %179, i64 %184
  %186 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  store i8* %185, i8** %186, align 8
  %187 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %30, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %188, i64 %193
  %195 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  store i8* %194, i8** %195, align 16
  br label %196

196:                                              ; preds = %166, %161
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %203 = load i32, i32* %14, align 4
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %17, align 4
  %207 = call i32 @tjDecompressToYUVPlanes(i32 %199, i8* %200, i64 %201, i8** %202, i32 %203, i32* %204, i32 %205, i32 %206)
  store i32 %207, i32* %9, align 4
  br label %214

208:                                              ; No predecessors!
  %209 = load i8*, i8** @FALSE, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  store i8* %209, i8** %212, align 8
  %213 = load i32, i32* %22, align 4
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %208, %196, %76
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i32 @getdinstance(i32) #1

declare dso_local i32 @isPow2(i32) #1

declare dso_local i32 @_throw(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_mem_src_tj(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @jpeg_read_header(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @getSubsamp(%struct.TYPE_9__*) #1

declare dso_local i32 @TJSCALED(i32, i32) #1

declare dso_local i32 @tjPlaneWidth(i32, i32, i32) #1

declare dso_local i32 @tjPlaneHeight(i32, i32, i32) #1

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i32 @tjDecompressToYUVPlanes(i32, i8*, i64, i8**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
