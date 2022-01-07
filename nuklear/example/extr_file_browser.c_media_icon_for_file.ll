; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_media_icon_for_file.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_media_icon_for_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_image = type { i32 }
%struct.media = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.file* }
%struct.TYPE_4__ = type { %struct.nk_image }
%struct.TYPE_3__ = type { %struct.nk_image* }
%struct.file = type { i8*, i64 }

@FILE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nk_image* (%struct.media*, i8*)* @media_icon_for_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nk_image* @media_icon_for_file(%struct.media* %0, i8* %1) #0 {
  %3 = alloca %struct.nk_image*, align 8
  %4 = alloca %struct.media*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i8*, align 8
  store %struct.media* %0, %struct.media** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 4)
  br label %15

15:                                               ; preds = %44, %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

34:                                               ; preds = %27, %24, %21
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %45

43:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %34
  br label %15

45:                                               ; preds = %42, %15
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %118, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @FILE_MAX, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  br i1 %54, label %55, label %121

55:                                               ; preds = %53
  %56 = load %struct.media*, %struct.media** %4, align 8
  %57 = getelementptr inbounds %struct.media, %struct.media* %56, i32 0, i32 2
  %58 = load %struct.file*, %struct.file** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.file, %struct.file* %58, i64 %60
  store %struct.file* %61, %struct.file** %10, align 8
  %62 = load %struct.file*, %struct.file** %10, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %11, align 8
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %89, %55
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %82, %85
  br label %87

87:                                               ; preds = %79, %74, %69, %66
  %88 = phi i1 [ false, %74 ], [ false, %69 ], [ false, %66 ], [ %86, %79 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  br label %66

94:                                               ; preds = %87
  %95 = load i8*, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load i8*, i8** %7, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.media*, %struct.media** %4, align 8
  %109 = getelementptr inbounds %struct.media, %struct.media* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load %struct.file*, %struct.file** %10, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load %struct.nk_image*, %struct.nk_image** %115, align 8
  store %struct.nk_image* %116, %struct.nk_image** %3, align 8
  br label %125

117:                                              ; preds = %102, %97, %94
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %46

121:                                              ; preds = %53
  %122 = load %struct.media*, %struct.media** %4, align 8
  %123 = getelementptr inbounds %struct.media, %struct.media* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store %struct.nk_image* %124, %struct.nk_image** %3, align 8
  br label %125

125:                                              ; preds = %121, %107
  %126 = load %struct.nk_image*, %struct.nk_image** %3, align 8
  ret %struct.nk_image* %126
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
