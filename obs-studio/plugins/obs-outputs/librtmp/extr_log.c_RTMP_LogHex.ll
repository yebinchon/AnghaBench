; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_log.c_RTMP_LogHex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_log.c_RTMP_LogHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTMP_debuglevel = common dso_local global i64 0, align 8
@hexdig = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTMP_LogHex(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [50 x i8], align 16
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* @RTMP_debuglevel, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %72

15:                                               ; preds = %3
  %16 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  store i8* %16, i8** %9, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %60, %15
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = load i8**, i8*** @hexdig, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 15, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %22, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %31 to i8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i8**, i8*** @hexdig, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 15, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %35, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, 15
  %49 = icmp eq i64 %48, 15
  br i1 %49, label %50, label %56

50:                                               ; preds = %21
  %51 = load i8*, i8** %9, align 8
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %55 = call i32 @RTMP_Log(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %59

56:                                               ; preds = %21
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  store i8 32, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %17

63:                                               ; preds = %17
  %64 = load i64, i64* %7, align 8
  %65 = and i64 %64, 15
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %4, align 4
  %70 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %71 = call i32 @RTMP_Log(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %14, %67, %63
  ret void
}

declare dso_local i32 @RTMP_Log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
