; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_stat.c_wceex_stat.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_stat.c_wceex_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64, i64, i64, i64, i64, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i64, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"?*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c".\\\00", align 1
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@TM_YEAR_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wceex_stat(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strpbrk(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = call i32 @mbstowcs(i32* %16, i8* %22, i64 %25)
  %27 = call i64 @FindFirstFile(i32* %16, %struct.TYPE_4__* %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @_stricmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  %43 = load i64, i64* @TM_YEAR_BASE, align 8
  %44 = sub nsw i64 1980, %43
  %45 = call i8* @wceex_local_to_time_r(i64 %44, i32 0, i32 1, i32 0, i32 0, i32 0)
  %46 = load %struct.stat*, %struct.stat** %5, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.stat*, %struct.stat** %5, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.stat*, %struct.stat** %5, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load %struct.stat*, %struct.stat** %5, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 8
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.stat*, %struct.stat** %5, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 9
  store i8* %55, i8** %57, align 8
  br label %59

58:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

59:                                               ; preds = %35
  br label %136

60:                                               ; preds = %21
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %62 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_5__* %61, i32* %12)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 @FileTimeToSystemTime(i32* %12, i32* %11)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %60
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @FindClose(i64 %68)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

70:                                               ; preds = %64
  %71 = call i8* @wceex_local_to_time(i32* %11)
  %72 = load %struct.stat*, %struct.stat** %5, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 8
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78, %70
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %85 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_5__* %84, i32* %12)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = call i32 @FileTimeToSystemTime(i32* %12, i32* %11)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87, %83
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @FindClose(i64 %91)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

93:                                               ; preds = %87
  %94 = call i8* @wceex_local_to_time(i32* %11)
  %95 = load %struct.stat*, %struct.stat** %5, align 8
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %95, i32 0, i32 10
  store i8* %94, i8** %96, align 8
  br label %103

97:                                               ; preds = %78
  %98 = load %struct.stat*, %struct.stat** %5, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 8
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.stat*, %struct.stat** %5, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %101, i32 0, i32 10
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %97, %93
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108, %103
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %115 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_5__* %114, i32* %12)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = call i32 @FileTimeToSystemTime(i32* %12, i32* %11)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117, %113
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @FindClose(i64 %121)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

123:                                              ; preds = %117
  %124 = call i8* @wceex_local_to_time(i32* %11)
  %125 = load %struct.stat*, %struct.stat** %5, align 8
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %125, i32 0, i32 9
  store i8* %124, i8** %126, align 8
  br label %133

127:                                              ; preds = %108
  %128 = load %struct.stat*, %struct.stat** %5, align 8
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %128, i32 0, i32 8
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.stat*, %struct.stat** %5, align 8
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %127, %123
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @FindClose(i64 %134)
  br label %136

136:                                              ; preds = %133, %59
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @__wceex_get_file_mode(i8* %137, i32 %139)
  %141 = load %struct.stat*, %struct.stat** %5, align 8
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.stat*, %struct.stat** %5, align 8
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %145, i32 0, i32 6
  store i64 %144, i64* %146, align 8
  %147 = load %struct.stat*, %struct.stat** %5, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %147, i32 0, i32 4
  store i64 0, i64* %148, align 8
  %149 = load %struct.stat*, %struct.stat** %5, align 8
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %149, i32 0, i32 5
  store i64 0, i64* %150, align 8
  %151 = load %struct.stat*, %struct.stat** %5, align 8
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  %153 = load %struct.stat*, %struct.stat** %5, align 8
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.stat*, %struct.stat** %5, align 8
  %156 = getelementptr inbounds %struct.stat, %struct.stat* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.stat*, %struct.stat** %5, align 8
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %159

159:                                              ; preds = %136, %120, %90, %67, %58, %20
  %160 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strpbrk(i8*, i8*) #2

declare dso_local i32 @mbstowcs(i32*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @FindFirstFile(i32*, %struct.TYPE_4__*) #2

declare dso_local i64 @_stricmp(i8*, i8*) #2

declare dso_local i8* @wceex_local_to_time_r(i64, i32, i32, i32, i32, i32) #2

declare dso_local i32 @FileTimeToLocalFileTime(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @FileTimeToSystemTime(i32*, i32*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i8* @wceex_local_to_time(i32*) #2

declare dso_local i32 @__wceex_get_file_mode(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
