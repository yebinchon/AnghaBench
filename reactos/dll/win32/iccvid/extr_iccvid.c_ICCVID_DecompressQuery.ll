; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_ICCVID_DecompressQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_ICCVID_DecompressQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ICM_DECOMPRESS_QUERY %p %p %p\0A\00", align 1
@ICCVID_MAGIC = common dso_local global i64 0, align 8
@ICERR_BADPARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"in: \00", align 1
@ICERR_BADFORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"out: \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Detected inverted height for video output\0A\00", align 1
@BI_BITFIELDS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"unsupported output bit field(s) for 16-bit colors\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unsupported output bitcount = %d\0A\00", align 1
@ICERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @ICCVID_DecompressQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICCVID_DecompressQuery(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %8, %struct.TYPE_9__* %9, %struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ICCVID_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @ICERR_BADPARAM, align 4
  store i32 %21, i32* %4, align 4
  br label %129

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i32 @ICCVID_dump_BITMAPINFO(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ICCVID_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @ICERR_BADFORMAT, align 4
  store i32 %33, i32* %4, align 4
  br label %129

34:                                               ; preds = %22
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %127

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = call i32 @ICCVID_dump_BITMAPINFO(%struct.TYPE_9__* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @ICERR_BADFORMAT, align 4
  store i32 %51, i32* %4, align 4
  br label %129

52:                                               ; preds = %37
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @ICERR_BADFORMAT, align 4
  store i32 %74, i32* %4, align 4
  br label %129

75:                                               ; preds = %62
  %76 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %52
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @ICERR_BADFORMAT, align 4
  store i32 %88, i32* %4, align 4
  br label %129

89:                                               ; preds = %77
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %119 [
    i32 16, label %94
    i32 24, label %118
    i32 32, label %118
  ]

94:                                               ; preds = %89
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BI_BITFIELDS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %94
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ICCVID_CheckMask(i32 %104, i32 31744, i32 992, i32 31)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ICCVID_CheckMask(i32 %110, i32 63488, i32 2016, i32 31)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @ICERR_BADFORMAT, align 4
  store i32 %115, i32* %4, align 4
  br label %129

116:                                              ; preds = %107, %101
  br label %117

117:                                              ; preds = %116, %94
  br label %126

118:                                              ; preds = %89, %89
  br label %126

119:                                              ; preds = %89
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ICERR_BADFORMAT, align 4
  store i32 %125, i32* %4, align 4
  br label %129

126:                                              ; preds = %118, %117
  br label %127

127:                                              ; preds = %126, %34
  %128 = load i32, i32* @ICERR_OK, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %119, %113, %87, %73, %50, %32, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ICCVID_dump_BITMAPINFO(%struct.TYPE_9__*) #1

declare dso_local i32 @ICCVID_CheckMask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
