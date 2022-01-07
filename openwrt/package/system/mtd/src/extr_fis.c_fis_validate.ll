; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_fis.c_fis_validate.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_fis.c_fis_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fis_part = type { i64, i32 }
%struct.fis_image_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"FIS error: only the last partition can detect the size automatically\0A\00", align 1
@fis_erasesize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fis_validate(%struct.fis_part* %0, i32 %1, %struct.fis_part* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fis_part*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fis_part*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fis_image_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fis_part* %0, %struct.fis_part** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fis_part* %2, %struct.fis_part** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = call %struct.fis_image_desc* (...) @fis_open()
  store %struct.fis_image_desc* %14, %struct.fis_image_desc** %10, align 8
  %15 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %16 = icmp ne %struct.fis_image_desc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %109

18:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.fis_part*, %struct.fis_part** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.fis_part, %struct.fis_part* %25, i64 %27
  %29 = getelementptr inbounds %struct.fis_part, %struct.fis_part* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %106

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %41 = bitcast %struct.fis_image_desc* %40 to i8*
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* @fis_erasesize, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %96, %39
  %47 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %48 = bitcast %struct.fis_image_desc* %47 to i8*
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %46
  %52 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %53 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %61 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %51
  br label %99

68:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %75 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load %struct.fis_part*, %struct.fis_part** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.fis_part, %struct.fis_part* %79, i64 %81
  %83 = getelementptr inbounds %struct.fis_part, %struct.fis_part* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @strncmp(i8* %78, i8* %85, i32 8)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %96

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %69

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %88
  %97 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %98 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %97, i32 1
  store %struct.fis_image_desc* %98, %struct.fis_image_desc** %10, align 8
  br label %46

99:                                               ; preds = %67, %46
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %13, align 4
  br label %105

104:                                              ; preds = %99
  store i32 -1, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %32
  %107 = call i32 (...) @fis_close()
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %17
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.fis_image_desc* @fis_open(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fis_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
