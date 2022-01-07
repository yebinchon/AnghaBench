; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_test.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banner1.c_banner1_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PcapFile = type { i32 }
%struct.PreprocessedInfo = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: can't open capture file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banner1_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.PcapFile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [65536 x i8], align 16
  %11 = alloca %struct.PreprocessedInfo, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct.PcapFile* @pcapfile_openread(i8* %13)
  store %struct.PcapFile* %14, %struct.PcapFile** %3, align 8
  %15 = load %struct.PcapFile*, %struct.PcapFile** %3, align 8
  %16 = icmp eq %struct.PcapFile* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.PcapFile*, %struct.PcapFile** %3, align 8
  %23 = call i32 @pcapfile_datalink(%struct.PcapFile* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %38, %21
  %25 = load %struct.PcapFile*, %struct.PcapFile** %3, align 8
  %26 = getelementptr inbounds [65536 x i8], [65536 x i8]* %10, i64 0, i64 0
  %27 = call i32 @pcapfile_readframe(%struct.PcapFile* %25, i32* %6, i32* %7, i32* %8, i32* %9, i8* %26, i32 65536)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %40

31:                                               ; preds = %24
  %32 = getelementptr inbounds [65536 x i8], [65536 x i8]* %10, i64 0, i64 0
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @preprocess_frame(i8* %32, i32 %33, i32 %34, %struct.PreprocessedInfo* %11)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %24

39:                                               ; preds = %31
  br label %24

40:                                               ; preds = %30
  %41 = load %struct.PcapFile*, %struct.PcapFile** %3, align 8
  %42 = call i32 @pcapfile_close(%struct.PcapFile* %41)
  br label %43

43:                                               ; preds = %40, %17
  ret void
}

declare dso_local %struct.PcapFile* @pcapfile_openread(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @pcapfile_datalink(%struct.PcapFile*) #1

declare dso_local i32 @pcapfile_readframe(%struct.PcapFile*, i32*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @preprocess_frame(i8*, i32, i32, %struct.PreprocessedInfo*) #1

declare dso_local i32 @pcapfile_close(%struct.PcapFile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
