; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-udp.c_handle_udp.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-udp.c_handle_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32*, i32, i32, i32 }

@PortStatus_Open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_udp(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca %struct.Output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.PreprocessedInfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %17 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %20 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 24
  %25 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %26 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %24, %30
  %32 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %33 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %31, %37
  %39 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %40 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 0
  %45 = or i32 %38, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  switch i32 %46, label %119 [
    i32 53, label %47
    i32 123, label %55
    i32 137, label %63
    i32 161, label %71
    i32 5683, label %79
    i32 11211, label %94
    i32 16464, label %111
    i32 16465, label %111
    i32 16470, label %111
    i32 16471, label %111
  ]

47:                                               ; preds = %6
  %48 = load %struct.Output*, %struct.Output** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @handle_dns(%struct.Output* %48, i32 %49, i8* %50, i32 %51, %struct.PreprocessedInfo* %52, i32 %53)
  store i32 %54, i32* %15, align 4
  br label %136

55:                                               ; preds = %6
  %56 = load %struct.Output*, %struct.Output** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ntp_handle_response(%struct.Output* %56, i32 %57, i8* %58, i32 %59, %struct.PreprocessedInfo* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  br label %136

63:                                               ; preds = %6
  %64 = load %struct.Output*, %struct.Output** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @handle_nbtstat(%struct.Output* %64, i32 %65, i8* %66, i32 %67, %struct.PreprocessedInfo* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  br label %136

71:                                               ; preds = %6
  %72 = load %struct.Output*, %struct.Output** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @handle_snmp(%struct.Output* %72, i32 %73, i8* %74, i32 %75, %struct.PreprocessedInfo* %76, i32 %77)
  store i32 %78, i32* %15, align 4
  br label %136

79:                                               ; preds = %6
  %80 = load %struct.Output*, %struct.Output** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %84 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %89 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @coap_handle_response(%struct.Output* %80, i32 %81, i8* %87, i32 %90, %struct.PreprocessedInfo* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  br label %136

94:                                               ; preds = %6
  %95 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %96 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %9, align 8
  %101 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %102 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.Output*, %struct.Output** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @memcached_udp_parse(%struct.Output* %104, i32 %105, i8* %106, i32 %107, %struct.PreprocessedInfo* %108, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %136

111:                                              ; preds = %6, %6, %6, %6
  %112 = load %struct.Output*, %struct.Output** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @handle_zeroaccess(%struct.Output* %112, i32 %113, i8* %114, i32 %115, %struct.PreprocessedInfo* %116, i32 %117)
  store i32 %118, i32* %15, align 4
  br label %136

119:                                              ; preds = %6
  %120 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %121 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %9, align 8
  %126 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %127 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %10, align 4
  %129 = load %struct.Output*, %struct.Output** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @default_udp_parse(%struct.Output* %129, i32 %130, i8* %131, i32 %132, %struct.PreprocessedInfo* %133, i32 %134)
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %119, %111, %94, %79, %71, %63, %55, %47
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load %struct.Output*, %struct.Output** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @PortStatus_Open, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %146 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @output_report_status(%struct.Output* %140, i32 %141, i32 %142, i32 %143, i32 17, i32 %144, i32 0, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %139, %136
  ret void
}

declare dso_local i32 @handle_dns(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @ntp_handle_response(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @handle_nbtstat(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @handle_snmp(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @coap_handle_response(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @memcached_udp_parse(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @handle_zeroaccess(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @default_udp_parse(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

declare dso_local i32 @output_report_status(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
