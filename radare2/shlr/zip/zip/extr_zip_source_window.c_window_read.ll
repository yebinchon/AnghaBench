; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_window.c_window_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_window.c_window_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.window = type { i32, i32, i8**, i32 }
%struct.zip_stat = type { i32, i32 }

@ZIP_SOURCE_ERR_LOWER = common dso_local global i32 0, align 4
@ZIP_ER_EOF = common dso_local global i8* null, align 8
@ZIP_STAT_SIZE = common dso_local global i32 0, align 4
@ZIP_STAT_CRC = common dso_local global i32 0, align 4
@ZIP_STAT_COMP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, i8*, i8*, i32, i32)* @window_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_read(%struct.zip_source* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.window*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8192 x i8], align 16
  %17 = alloca %struct.zip_stat*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.window*
  store %struct.window* %19, %struct.window** %12, align 8
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %152 [
    i32 130, label %21
    i32 129, label %73
    i32 133, label %121
    i32 128, label %122
    i32 132, label %143
    i32 131, label %149
  ]

21:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %68, %21
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.window*, %struct.window** %12, align 8
  %25 = getelementptr inbounds %struct.window, %struct.window* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load %struct.window*, %struct.window** %12, align 8
  %30 = getelementptr inbounds %struct.window, %struct.window* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %34, 8192
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %44

37:                                               ; preds = %28
  %38 = load %struct.window*, %struct.window** %12, align 8
  %39 = getelementptr inbounds %struct.window, %struct.window* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %37, %36
  %45 = phi i64 [ 8192, %36 ], [ %43, %37 ]
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @zip_source_read(%struct.zip_source* %47, i8* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  store i32 %53, i32* %6, align 4
  br label %153

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i8*, i8** @ZIP_ER_EOF, align 8
  %59 = load %struct.window*, %struct.window** %12, align 8
  %60 = getelementptr inbounds %struct.window, %struct.window* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %58, i8** %62, align 8
  %63 = load %struct.window*, %struct.window** %12, align 8
  %64 = getelementptr inbounds %struct.window, %struct.window* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* null, i8** %66, align 8
  store i32 -1, i32* %6, align 4
  br label %153

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %22

72:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %153

73:                                               ; preds = %5
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.window*, %struct.window** %12, align 8
  %76 = getelementptr inbounds %struct.window, %struct.window* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.window*, %struct.window** %12, align 8
  %81 = getelementptr inbounds %struct.window, %struct.window* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %153

87:                                               ; preds = %83
  %88 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @zip_source_read(%struct.zip_source* %88, i8* %89, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  store i32 %94, i32* %6, align 4
  br label %153

95:                                               ; preds = %87
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.window*, %struct.window** %12, align 8
  %98 = getelementptr inbounds %struct.window, %struct.window* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %95
  %104 = load %struct.window*, %struct.window** %12, align 8
  %105 = getelementptr inbounds %struct.window, %struct.window* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i8*, i8** @ZIP_ER_EOF, align 8
  %110 = load %struct.window*, %struct.window** %12, align 8
  %111 = getelementptr inbounds %struct.window, %struct.window* %110, i32 0, i32 2
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  store i8* %109, i8** %113, align 8
  %114 = load %struct.window*, %struct.window** %12, align 8
  %115 = getelementptr inbounds %struct.window, %struct.window* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* null, i8** %117, align 8
  store i32 -1, i32* %6, align 4
  br label %153

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %153

121:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %153

122:                                              ; preds = %5
  %123 = load i8*, i8** %9, align 8
  %124 = bitcast i8* %123 to %struct.zip_stat*
  store %struct.zip_stat* %124, %struct.zip_stat** %17, align 8
  %125 = load %struct.window*, %struct.window** %12, align 8
  %126 = getelementptr inbounds %struct.window, %struct.window* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.zip_stat*, %struct.zip_stat** %17, align 8
  %129 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @ZIP_STAT_SIZE, align 4
  %131 = load %struct.zip_stat*, %struct.zip_stat** %17, align 8
  %132 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @ZIP_STAT_CRC, align 4
  %136 = load i32, i32* @ZIP_STAT_COMP_SIZE, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = load %struct.zip_stat*, %struct.zip_stat** %17, align 8
  %140 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  store i32 0, i32* %6, align 4
  br label %153

143:                                              ; preds = %5
  %144 = load i8*, i8** %9, align 8
  %145 = load %struct.window*, %struct.window** %12, align 8
  %146 = getelementptr inbounds %struct.window, %struct.window* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = call i32 @memcpy(i8* %144, i8** %147, i32 8)
  store i32 0, i32* %6, align 4
  br label %153

149:                                              ; preds = %5
  %150 = load %struct.window*, %struct.window** %12, align 8
  %151 = call i32 @free(%struct.window* %150)
  store i32 0, i32* %6, align 4
  br label %153

152:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %149, %143, %122, %121, %119, %108, %93, %86, %72, %57, %52
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @zip_source_read(%struct.zip_source*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
