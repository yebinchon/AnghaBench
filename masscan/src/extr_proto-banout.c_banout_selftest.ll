; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i64 }
%struct.BannerBase64 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"xxxx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"yyyyy\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mno\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stuv\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"eA==\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"YmM=\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bW5v\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"c3R1dg==\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ZmdoaWo=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @banout_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x %struct.BannerOutput], align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.BannerOutput], align 8
  %5 = alloca [1 x %struct.BannerBase64], align 4
  %6 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %7 = call i32 @banout_init(%struct.BannerOutput* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %16, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %13 = call i32 @banout_append(%struct.BannerOutput* %12, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %15 = call i32 @banout_append(%struct.BannerOutput* %14, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %8

19:                                               ; preds = %8
  %20 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %21 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %1, align 4
  br label %113

25:                                               ; preds = %19
  %26 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %27 = call i32 @banout_string_length(%struct.BannerOutput* %26, i32 1)
  %28 = icmp ne i32 %27, 40
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %113

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %32 = call i32 @banout_string_length(%struct.BannerOutput* %31, i32 2)
  %33 = icmp ne i32 %32, 50
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %1, align 4
  br label %113

35:                                               ; preds = %30
  %36 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %37 = call i32 @banout_release(%struct.BannerOutput* %36)
  %38 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %2, i64 0, i64 0
  %39 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %113

43:                                               ; preds = %35
  %44 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %45 = call i32 @banout_init(%struct.BannerOutput* %44)
  %46 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %47 = call i32 @banout_init_base64(%struct.BannerBase64* %46)
  %48 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %49 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %50 = call i32 @banout_append_base64(%struct.BannerOutput* %48, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.BannerBase64* %49)
  %51 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %52 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %53 = call i32 @banout_finalize_base64(%struct.BannerOutput* %51, i32 1, %struct.BannerBase64* %52)
  %54 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %55 = call i32 @banout_init_base64(%struct.BannerBase64* %54)
  %56 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %57 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %58 = call i32 @banout_append_base64(%struct.BannerOutput* %56, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, %struct.BannerBase64* %57)
  %59 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %60 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %61 = call i32 @banout_finalize_base64(%struct.BannerOutput* %59, i32 2, %struct.BannerBase64* %60)
  %62 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %63 = call i32 @banout_init_base64(%struct.BannerBase64* %62)
  %64 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %65 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %66 = call i32 @banout_append_base64(%struct.BannerOutput* %64, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3, %struct.BannerBase64* %65)
  %67 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %68 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %69 = call i32 @banout_finalize_base64(%struct.BannerOutput* %67, i32 3, %struct.BannerBase64* %68)
  %70 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %71 = call i32 @banout_init_base64(%struct.BannerBase64* %70)
  %72 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %73 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %74 = call i32 @banout_append_base64(%struct.BannerOutput* %72, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, %struct.BannerBase64* %73)
  %75 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %76 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %77 = call i32 @banout_finalize_base64(%struct.BannerOutput* %75, i32 4, %struct.BannerBase64* %76)
  %78 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %79 = call i32 @banout_init_base64(%struct.BannerBase64* %78)
  %80 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %81 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %82 = call i32 @banout_append_base64(%struct.BannerOutput* %80, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5, %struct.BannerBase64* %81)
  %83 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %84 = getelementptr inbounds [1 x %struct.BannerBase64], [1 x %struct.BannerBase64]* %5, i64 0, i64 0
  %85 = call i32 @banout_finalize_base64(%struct.BannerOutput* %83, i32 5, %struct.BannerBase64* %84)
  %86 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %87 = call i32 @banout_string_equals(%struct.BannerOutput* %86, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %43
  store i32 1, i32* %1, align 4
  br label %113

90:                                               ; preds = %43
  %91 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %92 = call i32 @banout_string_equals(%struct.BannerOutput* %91, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 1, i32* %1, align 4
  br label %113

95:                                               ; preds = %90
  %96 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %97 = call i32 @banout_string_equals(%struct.BannerOutput* %96, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store i32 1, i32* %1, align 4
  br label %113

100:                                              ; preds = %95
  %101 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %102 = call i32 @banout_string_equals(%struct.BannerOutput* %101, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 1, i32* %1, align 4
  br label %113

105:                                              ; preds = %100
  %106 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %107 = call i32 @banout_string_equals(%struct.BannerOutput* %106, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 1, i32* %1, align 4
  br label %113

110:                                              ; preds = %105
  %111 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %4, i64 0, i64 0
  %112 = call i32 @banout_release(%struct.BannerOutput* %111)
  store i32 0, i32* %1, align 4
  br label %113

113:                                              ; preds = %110, %109, %104, %99, %94, %89, %42, %34, %29, %24
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

declare dso_local i32 @banout_init_base64(%struct.BannerBase64*) #1

declare dso_local i32 @banout_append_base64(%struct.BannerOutput*, i32, i8*, i32, %struct.BannerBase64*) #1

declare dso_local i32 @banout_finalize_base64(%struct.BannerOutput*, i32, %struct.BannerBase64*) #1

declare dso_local i32 @banout_string_equals(%struct.BannerOutput*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
