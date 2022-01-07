; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjSaveImage.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjSaveImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32 (i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)*, i32*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32* }

@TJ_NUMPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tjSaveImage(): Invalid argument\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"tjSaveImage(): Cannot open output file\00", align 1
@pf2cs = common dso_local global i32* null, align 8
@DSTATE_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"tjSaveImage(): Could not initialize bitmap writer\00", align 1
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"tjSaveImage(): Could not initialize PPM writer\00", align 1
@tjPixelSize = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tjSaveImage(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %19, align 8
  store i32* null, i32** %21, align 8
  store i8* null, i8** %22, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %7
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @TJ_NUMPF, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %39, %36, %33, %30, %27, %7
  %47 = call i32 @_throwg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = call i32* (...) @tjInitDecompress()
  store i32* %49, i32** %17, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 -1, i32* %8, align 4
  br label %233

52:                                               ; preds = %48
  %53 = load i32*, i32** %17, align 8
  %54 = bitcast i32* %53 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %18, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %19, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32* @fopen(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %58, i32** %21, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @_throwunix(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %52
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @setjmp(i32 %66) #3
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %16, align 4
  br label %219

70:                                               ; preds = %62
  %71 = load i32*, i32** @pf2cs, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 8
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @DSTATE_READY, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i8* @strrchr(i8* %92, i8 signext 46)
  store i8* %93, i8** %22, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %70
  %97 = load i8*, i8** %22, align 8
  %98 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %96
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %102 = load i32, i32* @FALSE, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = call %struct.TYPE_20__* @jinit_write_bmp(%struct.TYPE_19__* %101, i32 %102, i32 %103)
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %20, align 8
  %105 = icmp eq %struct.TYPE_20__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @_throwg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %23, align 4
  br label %126

114:                                              ; preds = %96, %70
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %116 = call %struct.TYPE_20__* @jinit_write_ppm(%struct.TYPE_19__* %115)
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %20, align 8
  %117 = icmp eq %struct.TYPE_20__* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @_throwg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %23, align 4
  br label %126

126:                                              ; preds = %120, %108
  %127 = load i32*, i32** %21, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 4
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 3
  %132 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)** %131, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %135 = call i32 %132(%struct.TYPE_19__* %133, %struct.TYPE_20__* %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32 (i32)*, i32 (i32)** %139, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %142 = ptrtoint %struct.TYPE_19__* %141 to i32
  %143 = call i32 %140(i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %126
  %147 = load i32, i32* %11, align 4
  %148 = load i32*, i32** @tjPixelSize, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %147, %152
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %146, %126
  br label %155

155:                                              ; preds = %187, %154
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %212

163:                                              ; preds = %155
  %164 = load i32, i32* %23, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  %173 = sub nsw i32 %172, 1
  %174 = load i32, i32* %12, align 4
  %175 = mul nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %167, i64 %176
  store i8* %177, i8** %24, align 8
  br label %187

178:                                              ; preds = %163
  %179 = load i8*, i8** %10, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %179, i64 %185
  store i8* %186, i8** %24, align 8
  br label %187

187:                                              ; preds = %178, %166
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %24, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load i32*, i32** @tjPixelSize, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %194, %199
  %201 = call i32 @memcpy(i32 %192, i8* %193, i32 %200)
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)** %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %207 = call i32 %204(%struct.TYPE_19__* %205, %struct.TYPE_20__* %206, i32 1)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %155

212:                                              ; preds = %155
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)** %214, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %218 = call i32 %215(%struct.TYPE_19__* %216, %struct.TYPE_20__* %217)
  br label %219

219:                                              ; preds = %212, %69
  %220 = load i32*, i32** %17, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %17, align 8
  %224 = call i32 @tjDestroy(i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32*, i32** %21, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32*, i32** %21, align 8
  %230 = call i32 @fclose(i32* %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i32, i32* %16, align 4
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %231, %51
  %234 = load i32, i32* %8, align 4
  ret i32 %234
}

declare dso_local i32 @_throwg(i8*) #1

declare dso_local i32* @tjInitDecompress(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @_throwunix(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @jinit_write_bmp(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @jinit_write_ppm(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @tjDestroy(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
