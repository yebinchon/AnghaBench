; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_follow_path.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_follow_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32*, i64, i32, i64, i64 }

@NS_NONAME = common dso_local global i8* null, align 8
@NSFLAG = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@FF_FS_RPATH = common dso_local global i64 0, align 8
@NS_DOT = common dso_local global i32 0, align 4
@NS_LAST = common dso_local global i32 0, align 4
@FR_NO_PATH = common dso_local global i64 0, align 8
@AM_DIR = common dso_local global i32 0, align 4
@FS_EXFAT = common dso_local global i64 0, align 8
@XDIR_FileSize = common dso_local global i32 0, align 4
@XDIR_GenFlags = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i8*)* @follow_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @follow_path(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 92
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ true, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %12

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i8*, i8** @NS_NONAME, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @NSFLAG, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %37, i32* %42, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = call i64 @dir_sdi(%struct.TYPE_14__* %43, i32 0)
  store i64 %44, i64* %5, align 8
  br label %136

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %118, %82, %45
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = call i64 @create_name(%struct.TYPE_14__* %47, i8** %4)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @FR_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %135

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = call i64 @dir_find(%struct.TYPE_14__* %54)
  store i64 %55, i64* %5, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @NSFLAG, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @FR_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %102

65:                                               ; preds = %53
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @FR_NO_FILE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load i64, i64* @FF_FS_RPATH, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @NS_DOT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @NS_LAST, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %46

83:                                               ; preds = %77
  %84 = load i8*, i8** @NS_NONAME, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @NSFLAG, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i64, i64* @FR_OK, align 8
  store i64 %91, i64* %5, align 8
  br label %100

92:                                               ; preds = %72, %69
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NS_LAST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* @FR_NO_PATH, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %65
  br label %135

102:                                              ; preds = %53
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @NS_LAST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %135

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @AM_DIR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = load i64, i64* @FR_NO_PATH, align 8
  store i64 %117, i64* %5, align 8
  br label %135

118:                                              ; preds = %108
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = call i32 @SS(%struct.TYPE_13__* %126)
  %128 = srem i32 %125, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %122, %129
  %131 = call i64 @ld_clust(%struct.TYPE_13__* %119, i64 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  store i64 %131, i64* %134, align 8
  br label %46

135:                                              ; preds = %116, %107, %101, %52
  br label %136

136:                                              ; preds = %135, %35
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i64 @dir_sdi(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @create_name(%struct.TYPE_14__*, i8**) #1

declare dso_local i64 @dir_find(%struct.TYPE_14__*) #1

declare dso_local i64 @ld_clust(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @SS(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
