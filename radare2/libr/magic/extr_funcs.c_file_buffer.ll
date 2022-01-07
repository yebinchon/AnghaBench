; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_funcs.c_file_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_funcs.c_file_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@R_MAGIC_MIME = common dso_local global i32 0, align 4
@R_MAGIC_MIME_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"application/x-empty\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"very short file (no magic)\00", align 1
@R_MAGIC_NO_CHECK_TAR = common dso_local global i32 0, align 4
@R_MAGIC_NO_CHECK_SOFT = common dso_local global i32 0, align 4
@BINTEST = common dso_local global i32 0, align 4
@R_MAGIC_NO_CHECK_ASCII = common dso_local global i32 0, align 4
@R_MAGIC_NO_CHECK_COMPRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_buffer(%struct.TYPE_8__* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %121

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @R_MAGIC_MIME, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @R_MAGIC_MIME_TYPE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %39 = call i32 @file_printf(%struct.TYPE_8__* %34, i8* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %121

42:                                               ; preds = %33, %28
  store i32 1, i32* %6, align 4
  br label %121

43:                                               ; preds = %17
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @R_MAGIC_MIME_TYPE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49, %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 @file_printf(%struct.TYPE_8__* %55, i8* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 -1, i32* %6, align 4
  br label %121

63:                                               ; preds = %54, %49
  store i32 1, i32* %6, align 4
  br label %121

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @R_MAGIC_NO_CHECK_TAR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @file_is_tar(%struct.TYPE_8__* %73, i8* %74, i64 %75)
  store i32 %76, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %72, %65
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @R_MAGIC_NO_CHECK_SOFT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* @BINTEST, align 4
  %90 = call i32 @file_softmagic(%struct.TYPE_8__* %86, i8* %87, i64 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %85, %78
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @R_MAGIC_NO_CHECK_ASCII, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @file_ascmagic(%struct.TYPE_8__* %100, i8* %101, i64 %102)
  store i32 %103, i32* %13, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %99, %92
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @R_MAGIC_MIME_TYPE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %105
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = call i32 @file_printf(%struct.TYPE_8__* %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %121

116:                                              ; preds = %108
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %85
  br label %119

119:                                              ; preds = %118, %72
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %113, %63, %62, %42, %41, %16
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @file_printf(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @file_is_tar(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @file_softmagic(%struct.TYPE_8__*, i8*, i64, i32) #1

declare dso_local i32 @file_ascmagic(%struct.TYPE_8__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
