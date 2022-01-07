; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_getlabel.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_getlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@BPB_VolIDEx = common dso_local global i32 0, align 4
@BS_VolID32 = common dso_local global i32 0, align 4
@BS_VolID = common dso_local global i32 0, align 4
@CODEPAGE = common dso_local global i32 0, align 4
@XDIR_Label = common dso_local global i32 0, align 4
@XDIR_NumLabel = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_getlabel(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = call i64 @find_volume(i8** %5, %struct.TYPE_10__** %10, i32 0)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @FR_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %86

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %86

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = call i64 @dir_sdi(%struct.TYPE_11__* %9, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @FR_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %21
  %32 = call i64 @DIR_READ_LABEL(%struct.TYPE_11__* %9)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @FR_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %40, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 11
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = trunc i64 %49 to i8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  br label %37

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %75

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %57, label %75

75:                                               ; preds = %66, %64
  br label %76

76:                                               ; preds = %75, %31
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @FR_NO_FILE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 0, i8* %83, align 1
  %84 = load i64, i64* @FR_OK, align 8
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %18, %3
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FR_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @move_window(%struct.TYPE_10__* %94, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @FR_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %93
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %110 [
    i32 129, label %106
    i32 128, label %108
  ]

106:                                              ; preds = %102
  %107 = load i32, i32* @BPB_VolIDEx, align 4
  store i32 %107, i32* %12, align 4
  br label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @BS_VolID32, align 4
  store i32 %109, i32* %12, align 4
  br label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @BS_VolID, align 4
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %110, %108, %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = call i32 @ld_dword(i64 %118)
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %93
  br label %122

122:                                              ; preds = %121, %90, %86
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @LEAVE_FF(%struct.TYPE_10__* %123, i64 %124)
  %126 = load i64, i64* %4, align 8
  ret i64 %126
}

declare dso_local i64 @find_volume(i8**, %struct.TYPE_10__**, i32) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @DIR_READ_LABEL(%struct.TYPE_11__*) #1

declare dso_local i64 @move_window(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ld_dword(i64) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
