; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_log.c_RTMP_LogHexString.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_log.c_RTMP_LogHexString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTMP_debuglevel = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@hexdig = common dso_local global i8* null, align 8
@BP_GRAPH = common dso_local global i32 0, align 4
@BP_LEN = common dso_local global i32 0, align 4
@BP_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTMP_LogHexString(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @RTMP_debuglevel, align 8
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  br label %148

19:                                               ; preds = %13
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %20, align 16
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %141, %19
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %144

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = urem i64 %26, 16
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %77, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %37 = call i32 @RTMP_Log(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %40 = call i32 @memset(i8* %39, i8 signext 32, i32 78)
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 78
  store i8 0, i8* %41, align 2
  %42 = load i64, i64* %8, align 8
  %43 = urem i64 %42, 65535
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i8*, i8** @hexdig, align 8
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 12
  %48 = and i32 15, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 2
  store i8 %51, i8* %52, align 2
  %53 = load i8*, i8** @hexdig, align 8
  %54 = load i32, i32* %10, align 4
  %55 = lshr i32 %54, 8
  %56 = and i32 15, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 3
  store i8 %59, i8* %60, align 1
  %61 = load i8*, i8** @hexdig, align 8
  %62 = load i32, i32* %10, align 4
  %63 = lshr i32 %62, 4
  %64 = and i32 15, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 4
  store i8 %67, i8* %68, align 4
  %69 = load i8*, i8** @hexdig, align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 15, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 5
  store i8 %74, i8* %75, align 1
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 6
  store i8 58, i8* %76, align 2
  br label %77

77:                                               ; preds = %38, %25
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, 3
  %80 = add nsw i32 9, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 8
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = add nsw i32 %80, %84
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** @hexdig, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 4
  %92 = and i32 15, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %86, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %97
  store i8 %95, i8* %98, align 1
  %99 = load i8*, i8** @hexdig, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 15, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %99, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %110
  store i8 %107, i8* %111, align 1
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 60, %112
  %114 = load i32, i32* %9, align 4
  %115 = icmp sge i32 %114, 8
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = add nsw i32 %113, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @isprint(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %77
  %126 = load i32*, i32** %5, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 60, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %133
  store i8 %130, i8* %134, align 1
  br label %140

135:                                              ; preds = %77
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 60, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %138
  store i8 46, i8* %139, align 1
  br label %140

140:                                              ; preds = %135, %125
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %8, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %8, align 8
  br label %21

144:                                              ; preds = %21
  %145 = load i32, i32* %4, align 4
  %146 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %147 = call i32 @RTMP_Log(i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %144, %18
  ret void
}

declare dso_local i32 @RTMP_Log(i32, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
