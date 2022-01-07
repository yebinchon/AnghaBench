; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_handle_snmp.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_handle_snmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32, i32*, i32*, i32, i32 }
%struct.BannerOutput = type { i32 }

@Templ_UDP = common dso_local global i32 0, align 4
@PROTO_SNMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_snmp(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
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
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %22 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %25 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @UNUSEDPARM(i32 %27)
  %29 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %30 = call i32 @banout_init(%struct.BannerOutput* %29)
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %33 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %38 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %41 = call i32 @snmp_parse(i8* %36, i32 %39, %struct.BannerOutput* %40, i32* %19)
  %42 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %43 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 24
  %48 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %49 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %47, %53
  %55 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %56 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %54, %60
  %62 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %63 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 0
  %68 = or i32 %61, %67
  store i32 %68, i32* %14, align 4
  %69 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %70 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 24
  %75 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %76 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %74, %80
  %82 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %83 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %81, %87
  %89 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %90 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 0
  %95 = or i32 %88, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @Templ_UDP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @syn_cookie(i32 %96, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = and i32 %105, 2147483647
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %6
  store i32 1, i32* %7, align 4
  br label %130

110:                                              ; preds = %6
  %111 = load %struct.Output*, %struct.Output** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %115 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PROTO_SNMP, align 4
  %118 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %119 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %122 = load i32, i32* @PROTO_SNMP, align 4
  %123 = call i32 @banout_string(%struct.BannerOutput* %121, i32 %122)
  %124 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %125 = load i32, i32* @PROTO_SNMP, align 4
  %126 = call i32 @banout_string_length(%struct.BannerOutput* %124, i32 %125)
  %127 = call i32 @output_report_banner(%struct.Output* %111, i32 %112, i32 %113, i32 17, i32 %116, i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %20, i64 0, i64 0
  %129 = call i32 @banout_release(%struct.BannerOutput* %128)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %110, %109
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @snmp_parse(i8*, i32, %struct.BannerOutput*, i32*) #1

declare dso_local i64 @syn_cookie(i32, i32, i32, i32, i32) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
