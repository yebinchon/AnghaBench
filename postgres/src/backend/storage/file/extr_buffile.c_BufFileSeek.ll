; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_buffile.c_BufFileSeek.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_buffile.c_BufFileSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64, i32 }

@EOF = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid whence: %d\00", align 1
@MAX_PHYSICAL_FILESIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BufFileSeek(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %35 [
    i32 128, label %13
    i32 130, label %21
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EOF, align 4
  store i32 %17, i32* %5, align 4
  br label %141

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %11, align 8
  br label %40

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %11, align 8
  br label %40

35:                                               ; preds = %4
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EOF, align 4
  store i32 %39, i32* %5, align 4
  br label %141

40:                                               ; preds = %21, %18
  br label %41

41:                                               ; preds = %50, %40
  %42 = load i64, i64* %11, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @EOF, align 4
  store i32 %49, i32* %5, align 4
  br label %141

50:                                               ; preds = %44
  %51 = load i64, i64* @MAX_PHYSICAL_FILESIZE, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %11, align 8
  br label %41

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = icmp sle i64 %67, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %141

85:                                               ; preds = %66, %60, %54
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = call i64 @BufFileFlush(%struct.TYPE_4__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @EOF, align 4
  store i32 %90, i32* %5, align 4
  br label %141

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i64, i64* %11, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %10, align 4
  %103 = load i64, i64* @MAX_PHYSICAL_FILESIZE, align 8
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %100, %97, %91
  br label %105

105:                                              ; preds = %118, %104
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @MAX_PHYSICAL_FILESIZE, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @EOF, align 4
  store i32 %117, i32* %5, align 4
  br label %141

118:                                              ; preds = %109
  %119 = load i64, i64* @MAX_PHYSICAL_FILESIZE, align 8
  %120 = load i64, i64* %11, align 8
  %121 = sub nsw i64 %120, %119
  store i64 %121, i64* %11, align 8
  br label %105

122:                                              ; preds = %105
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @EOF, align 4
  store i32 %129, i32* %5, align 4
  br label %141

130:                                              ; preds = %122
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %130, %128, %116, %89, %76, %48, %35, %16
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @BufFileFlush(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
