; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_parse_vdr_modulation.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_parse_vdr_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"16\00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@QAM_32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@QAM_128 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@QAM_256 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"998\00", align 1
@QAM_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@QPSK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@PSK_8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@APSK_16 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@APSK_32 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@VSB_8 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@VSB_16 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@DQPSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_vdr_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_vdr_modulation(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* @QAM_16, align 4
  store i32 %12, i32* %2, align 4
  br label %135

13:                                               ; preds = %1
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %21, i8** %19, align 8
  %22 = load i32, i32* @QAM_32, align 4
  store i32 %22, i32* %2, align 4
  br label %135

23:                                               ; preds = %13
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %29, align 8
  %32 = load i32, i32* @QAM_64, align 4
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %23
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8**, i8*** %3, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  store i8* %41, i8** %39, align 8
  %42 = load i32, i32* @QAM_128, align 4
  store i32 %42, i32* %2, align 4
  br label %135

43:                                               ; preds = %33
  %44 = load i8**, i8*** %3, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8**, i8*** %3, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8* %51, i8** %49, align 8
  %52 = load i32, i32* @QAM_256, align 4
  store i32 %52, i32* %2, align 4
  br label %135

53:                                               ; preds = %43
  %54 = load i8**, i8*** %3, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8**, i8*** %3, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %59, align 8
  %62 = load i32, i32* @QAM_AUTO, align 4
  store i32 %62, i32* %2, align 4
  br label %135

63:                                               ; preds = %53
  %64 = load i8**, i8*** %3, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i8**, i8*** %3, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load i32, i32* @QPSK, align 4
  store i32 %72, i32* %2, align 4
  br label %135

73:                                               ; preds = %63
  %74 = load i8**, i8*** %3, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8**, i8*** %3, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  %82 = load i32, i32* @PSK_8, align 4
  store i32 %82, i32* %2, align 4
  br label %135

83:                                               ; preds = %73
  %84 = load i8**, i8*** %3, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8**, i8*** %3, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %89, align 8
  %92 = load i32, i32* @APSK_16, align 4
  store i32 %92, i32* %2, align 4
  br label %135

93:                                               ; preds = %83
  %94 = load i8**, i8*** %3, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strncmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8**, i8*** %3, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %99, align 8
  %102 = load i32, i32* @APSK_32, align 4
  store i32 %102, i32* %2, align 4
  br label %135

103:                                              ; preds = %93
  %104 = load i8**, i8*** %3, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i8**, i8*** %3, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %109, align 8
  %112 = load i32, i32* @VSB_8, align 4
  store i32 %112, i32* %2, align 4
  br label %135

113:                                              ; preds = %103
  %114 = load i8**, i8*** %3, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i8**, i8*** %3, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  store i8* %121, i8** %119, align 8
  %122 = load i32, i32* @VSB_16, align 4
  store i32 %122, i32* %2, align 4
  br label %135

123:                                              ; preds = %113
  %124 = load i8**, i8*** %3, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i8**, i8*** %3, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %131, i8** %129, align 8
  %132 = load i32, i32* @DQPSK, align 4
  store i32 %132, i32* %2, align 4
  br label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @QAM_AUTO, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %128, %118, %108, %98, %88, %78, %68, %58, %48, %38, %28, %18, %8
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
