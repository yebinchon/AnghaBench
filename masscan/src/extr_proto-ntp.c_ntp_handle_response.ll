; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ntp.c_ntp_handle_response.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ntp.c_ntp_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32, i32 }
%struct.BannerOutput = type { i32 }

@PROTO_NTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntp_handle_response(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PreprocessedInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1 x %struct.BannerOutput], align 4
  %17 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %19 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @UNUSEDPARM(i32 %21)
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @UNUSEDPARM(i32 %23)
  %25 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %26 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %103

30:                                               ; preds = %6
  %31 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %16, i64 0, i64 0
  %32 = call i32 @banout_init(%struct.BannerOutput* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %17, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = ashr i32 %38, 3
  %40 = and i32 %39, 7
  switch i32 %40, label %53 [
    i32 2, label %41
  ]

41:                                               ; preds = %30
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %44 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %49 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %16, i64 0, i64 0
  %52 = call i32 @ntp_v2_parse(i8* %47, i32 %50, %struct.BannerOutput* %51, i32* %15)
  br label %56

53:                                               ; preds = %30
  %54 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %16, i64 0, i64 0
  %55 = call i32 @banout_release(%struct.BannerOutput* %54)
  store i32 0, i32* %7, align 4
  br label %103

56:                                               ; preds = %41
  %57 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %58 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 24
  %63 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %64 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %62, %68
  %70 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %71 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %69, %75
  %77 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %78 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 0
  %83 = or i32 %76, %82
  store i32 %83, i32* %14, align 4
  %84 = load %struct.Output*, %struct.Output** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %88 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PROTO_NTP, align 4
  %91 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %92 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %16, i64 0, i64 0
  %95 = load i32, i32* @PROTO_NTP, align 4
  %96 = call i32 @banout_string(%struct.BannerOutput* %94, i32 %95)
  %97 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %16, i64 0, i64 0
  %98 = load i32, i32* @PROTO_NTP, align 4
  %99 = call i32 @banout_string_length(%struct.BannerOutput* %97, i32 %98)
  %100 = call i32 @output_report_banner(%struct.Output* %84, i32 %85, i32 %86, i32 17, i32 %89, i32 %90, i32 %93, i32 %96, i32 %99)
  %101 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %16, i64 0, i64 0
  %102 = call i32 @banout_release(%struct.BannerOutput* %101)
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %56, %53, %29
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @ntp_v2_parse(i8*, i32, %struct.BannerOutput*, i32*) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_string_length(%struct.BannerOutput*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
