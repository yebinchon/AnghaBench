; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_read_pcap.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_read_pcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PayloadsUDP = type { i32 }
%struct.PcapFile = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RangeList = type { i32, i32, %struct.Range*, i32 }
%struct.Range = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"payloads:'%s': opening packet capture\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"payloads: can't read from file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"payloads:'%s': imported %u unique payloads\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"payloads:'%s': closed packet capture\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @payloads_read_pcap(i8* %0, %struct.PayloadsUDP* %1, %struct.PayloadsUDP* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.PayloadsUDP*, align 8
  %6 = alloca %struct.PayloadsUDP*, align 8
  %7 = alloca %struct.PcapFile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [65536 x i8], align 16
  %12 = alloca %struct.PreprocessedInfo, align 4
  %13 = alloca [1 x %struct.RangeList], align 16
  %14 = alloca [1 x %struct.Range], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.PayloadsUDP* %1, %struct.PayloadsUDP** %5, align 8
  store %struct.PayloadsUDP* %2, %struct.PayloadsUDP** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.PcapFile* @pcapfile_openread(i8* %20)
  store %struct.PcapFile* %21, %struct.PcapFile** %7, align 8
  %22 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %23 = icmp eq %struct.PcapFile* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %116

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %107, %106, %44, %28
  %30 = bitcast [1 x %struct.RangeList]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 24, i1 false)
  %31 = bitcast [1 x %struct.Range]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 12, i1 false)
  %32 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %33 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %34 = call i32 @pcapfile_readframe(%struct.PcapFile* %32, i32* %15, i32* %16, i32* %17, i32* %10, i8* %33, i32 65536)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %108

38:                                               ; preds = %29
  %39 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @preprocess_frame(i8* %39, i32 %40, i32 1, %struct.PreprocessedInfo* %12)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %29

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %106 [
    i32 130, label %48
    i32 128, label %48
    i32 129, label %77
  ]

48:                                               ; preds = %45, %45
  %49 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %50 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %51 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %50, i32 0, i32 2
  store %struct.Range* %49, %struct.Range** %51, align 8
  %52 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %53 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %52, i32 0, i32 0
  store i32 1, i32* %53, align 16
  %54 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %55 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %59 = getelementptr inbounds %struct.Range, %struct.Range* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %61 = getelementptr inbounds %struct.Range, %struct.Range* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %64 = getelementptr inbounds %struct.Range, %struct.Range* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %5, align 8
  %66 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %74 = call i32 @payloads_datagram_add(%struct.PayloadsUDP* %65, i8* %70, i32 %72, %struct.RangeList* %73, i32 65536, i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %107

77:                                               ; preds = %45
  %78 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %79 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %80 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %79, i32 0, i32 2
  store %struct.Range* %78, %struct.Range** %80, align 8
  %81 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %82 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %81, i32 0, i32 0
  store i32 1, i32* %82, align 16
  %83 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %84 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %88 = getelementptr inbounds %struct.Range, %struct.Range* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %90 = getelementptr inbounds %struct.Range, %struct.Range* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [1 x %struct.Range], [1 x %struct.Range]* %14, i64 0, i64 0
  %93 = getelementptr inbounds %struct.Range, %struct.Range* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %6, align 8
  %95 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %96 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %12, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %13, i64 0, i64 0
  %103 = call i32 @payloads_datagram_add(%struct.PayloadsUDP* %94, i8* %99, i32 %101, %struct.RangeList* %102, i32 65536, i32 0)
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %107

106:                                              ; preds = %45
  br label %29

107:                                              ; preds = %77, %48
  br label %29

108:                                              ; preds = %37
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %109, i32 %110)
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 (i32, i8*, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  %114 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %115 = call i32 @pcapfile_close(%struct.PcapFile* %114)
  br label %116

116:                                              ; preds = %108, %24
  ret void
}

declare dso_local i32 @LOG(i32, i8*, i8*, ...) #1

declare dso_local %struct.PcapFile* @pcapfile_openread(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pcapfile_readframe(%struct.PcapFile*, i32*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @preprocess_frame(i8*, i32, i32, %struct.PreprocessedInfo*) #1

declare dso_local i32 @payloads_datagram_add(%struct.PayloadsUDP*, i8*, i32, %struct.RangeList*, i32, i32) #1

declare dso_local i32 @pcapfile_close(%struct.PcapFile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
