; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_doTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_doTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure.\00", align 1
@TJSAMP_422 = common dso_local global i32 0, align 4
@TJSAMP_420 = common dso_local global i32 0, align 4
@TJSAMP_440 = common dso_local global i32 0, align 4
@TJSAMP_411 = common dso_local global i32 0, align 4
@TJFLAG_FASTUPSAMPLE = common dso_local global i32 0, align 4
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@TJPF_RGBX = common dso_local global i32 0, align 4
@TJPF_XRGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TJPF_RGBA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"--------------------\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doTest(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %21 = load i32, i32* @alloc, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @tjBufSize(i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %16, align 8
  br label %28

28:                                               ; preds = %23, %6
  %29 = load i64, i64* %16, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* %16, align 8
  %33 = call i64 @tjAlloc(i64 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %15, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @_throw(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  br label %39

39:                                               ; preds = %38, %28
  %40 = call i32* (...) @tjInitCompress()
  store i32* %40, i32** %13, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32* (...) @tjInitDecompress()
  store i32* %43, i32** %14, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39
  %46 = call i32 (...) @_throwtj()
  br label %47

47:                                               ; preds = %45, %42
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %136, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %139

52:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  br label %53

53:                                               ; preds = %132, %52
  %54 = load i32, i32* %19, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %135

56:                                               ; preds = %53
  store i32 0, i32* %20, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @TJSAMP_422, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @TJSAMP_420, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @TJSAMP_440, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @TJSAMP_411, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %64, %60, %56
  %73 = load i32, i32* @TJFLAG_FASTUPSAMPLE, align 4
  %74 = load i32, i32* %20, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %19, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %81 = load i32, i32* %20, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %20, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %18, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @compTest(i32* %89, i8** %15, i64* %16, i32 %90, i32 %91, i32 %92, i8* %93, i32 %94, i32 100, i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %20, align 4
  %106 = call i32 @decompTest(i32* %97, i8* %98, i64 %99, i32 %100, i32 %101, i32 %102, i8* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @TJPF_RGBX, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %83
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @TJPF_XRGB, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32*, i32** %14, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @TJPF_RGBA, align 4
  %123 = load i32, i32* @TJPF_RGBX, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %121, %124
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @decompTest(i32* %116, i8* %117, i64 %118, i32 %119, i32 %120, i32 %125, i8* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %114, %110, %83
  %131 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %53

135:                                              ; preds = %53
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %48

139:                                              ; preds = %48
  %140 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139
  %142 = load i32*, i32** %13, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @tjDestroy(i32* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32*, i32** %14, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @tjDestroy(i32* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i8*, i8** %15, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %15, align 8
  %158 = call i32 @tjFree(i8* %157)
  br label %159

159:                                              ; preds = %156, %153
  ret void
}

declare dso_local i64 @tjBufSize(i32, i32, i32) #1

declare dso_local i64 @tjAlloc(i64) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32* @tjInitCompress(...) #1

declare dso_local i32* @tjInitDecompress(...) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @compTest(i32*, i8**, i64*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @decompTest(i32*, i8*, i64, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tjDestroy(i32*) #1

declare dso_local i32 @tjFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
