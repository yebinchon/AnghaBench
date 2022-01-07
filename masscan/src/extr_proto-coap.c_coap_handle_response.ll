; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_coap_handle_response.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_coap_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32*, i32 }
%struct.BannerOutput = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"[+] COAP\0A\00", align 1
@Templ_UDP = common dso_local global i32 0, align 4
@PROTO_COAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" IP-MISMATCH\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_handle_response(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PreprocessedInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [1 x %struct.BannerOutput], align 4
  %21 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %23 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %26 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %30 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 24
  %35 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %36 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %34, %40
  %42 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %43 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %41, %47
  %49 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %50 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 0
  %55 = or i32 %48, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %57 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 24
  %62 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %63 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %61, %67
  %69 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %70 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %68, %74
  %76 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %77 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 0
  %82 = or i32 %75, %81
  store i32 %82, i32* %15, align 4
  %83 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %84 = call i32 @banout_init(%struct.BannerOutput* %83)
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %88 = call i32 @coap_parse(i8* %85, i32 %86, %struct.BannerOutput* %87, i32* %18)
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @Templ_UDP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @syn_cookie(i32 %89, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = and i32 %98, 65535
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %6
  %103 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %104 = load i32, i32* @PROTO_COAP, align 4
  %105 = load i32, i32* @AUTO_LEN, align 4
  %106 = call i32 @banout_append(%struct.BannerOutput* %103, i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %6
  %108 = load i32, i32* %21, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load %struct.Output*, %struct.Output** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %115 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PROTO_COAP, align 4
  %118 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %119 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %122 = load i32, i32* @PROTO_COAP, align 4
  %123 = call i32 @banout_string(%struct.BannerOutput* %121, i32 %122)
  %124 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %125 = load i32, i32* @PROTO_COAP, align 4
  %126 = call i32 @banout_string_length(%struct.BannerOutput* %124, i32 %125)
  %127 = call i32 @output_report_banner(%struct.Output* %111, i32 %112, i32 %113, i32 17, i32 %116, i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %129 = call i32 @banout_release(%struct.BannerOutput* %128)
  store i32 0, i32* %7, align 4
  br label %140

130:                                              ; preds = %107
  %131 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %132 = call i32 @banout_release(%struct.BannerOutput* %131)
  %133 = load %struct.Output*, %struct.Output** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @default_udp_parse(%struct.Output* %133, i32 %134, i8* %135, i32 %136, %struct.PreprocessedInfo* %137, i32 %138)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %130, %110
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @coap_parse(i8*, i32, %struct.BannerOutput*, i32*) #1

declare dso_local i64 @syn_cookie(i32, i32, i32, i32, i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

declare dso_local i32 @default_udp_parse(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
