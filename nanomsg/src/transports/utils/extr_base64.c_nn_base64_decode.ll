; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_base64.c_nn_base64_decode.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_base64.c_nn_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.nn_base64_decode.DECODEMAP = private unnamed_addr constant [256 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 62, i32 255, i32 255, i32 255, i32 63, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 255, i32 255, i32 255, i32 62, i32 255, i32 255, i32 255, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_base64_decode(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i32], align 16
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = bitcast [256 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([256 x i32]* @__const.nn_base64_decode.DECODEMAP to i8*), i64 1024, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %83, %4
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %83

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 61
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %86

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %86

53:                                               ; preds = %40
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 6
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 6
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp uge i32 %60, 8
  br i1 %61, label %62, label %82

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = sub i32 %63, 8
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @ENOBUFS, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %111

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %53
  br label %83

83:                                               ; preds = %82, %30
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %17

86:                                               ; preds = %52, %39, %17
  %87 = load i32, i32* %12, align 4
  %88 = icmp uge i32 %87, 8
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = sub i32 %90, 8
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %9, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOBUFS, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %111

99:                                               ; preds = %89
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = ashr i32 %100, %101
  %103 = and i32 %102, 255
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  br label %109

109:                                              ; preds = %99, %86
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %96, %69
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @isspace(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
