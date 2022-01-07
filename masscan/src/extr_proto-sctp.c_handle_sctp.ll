; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-sctp.c_handle_sctp.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-sctp.c_handle_sctp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32, i32 }

@PortStatus_Open = common dso_local global i32 0, align 4
@PortStatus_Closed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_sctp(%struct.Output* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.PreprocessedInfo* %5, i32 %6) #0 {
  %8 = alloca %struct.Output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.PreprocessedInfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.PreprocessedInfo* %5, %struct.PreprocessedInfo** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %20 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  %22 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %23 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @UNUSEDPARM(i32 %25)
  %27 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %28 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %34 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %32, %38
  %40 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %41 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %39, %45
  %47 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %48 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 0
  %53 = or i32 %46, %52
  store i32 %53, i32* %15, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %18, align 4
  %56 = add i32 %55, 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 24
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %18, align 4
  %64 = add i32 %63, 5
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 16
  %70 = or i32 %61, %69
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %18, align 4
  %73 = add i32 %72, 6
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 8
  %79 = or i32 %70, %78
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %18, align 4
  %82 = add i32 %81, 7
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %79, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %7
  br label %133

92:                                               ; preds = %7
  %93 = load i32, i32* %18, align 4
  %94 = add i32 %93, 16
  %95 = load i32, i32* %11, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %133

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %18, align 4
  %101 = add i32 %100, 12
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  switch i32 %105, label %132 [
    i32 2, label %106
    i32 6, label %119
  ]

106:                                              ; preds = %98
  %107 = load %struct.Output*, %struct.Output** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @PortStatus_Open, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %113 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %116 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @output_report_status(%struct.Output* %107, i32 %108, i32 %109, i32 %110, i32 132, i32 %111, i32 0, i32 %114, i32 %117)
  br label %133

119:                                              ; preds = %98
  %120 = load %struct.Output*, %struct.Output** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @PortStatus_Closed, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %126 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %13, align 8
  %129 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @output_report_status(%struct.Output* %120, i32 %121, i32 %122, i32 %123, i32 132, i32 %124, i32 0, i32 %127, i32 %130)
  br label %133

132:                                              ; preds = %98
  br label %133

133:                                              ; preds = %91, %97, %132, %119, %106
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @output_report_status(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
