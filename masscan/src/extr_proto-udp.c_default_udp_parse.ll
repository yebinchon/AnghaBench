; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-udp.c_default_udp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-udp.c_default_udp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32*, i32 }

@PROTO_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_udp_parse(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca %struct.Output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.PreprocessedInfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %16 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @UNUSEDPARM(i32 %18)
  %20 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %21 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %27 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %25, %31
  %33 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %34 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %32, %38
  %40 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %41 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 0
  %46 = or i32 %39, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ugt i32 %47, 64
  br i1 %48, label %49, label %50

49:                                               ; preds = %6
  store i32 64, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %6
  %51 = load %struct.Output*, %struct.Output** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @PROTO_NONE, align 4
  %56 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %57 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @output_report_banner(%struct.Output* %51, i32 %52, i32 %53, i32 17, i32 %54, i32 %55, i32 %58, i8* %59, i32 %60)
  ret i32 0
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
