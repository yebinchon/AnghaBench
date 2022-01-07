; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_RestoreBlockImage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_RestoreBlockImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }

@BKPIMAGE_IS_COMPRESSED = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"invalid compressed image at %X/%X, block %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RestoreBlockImage(%struct.TYPE_6__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %124

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %34
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BKPIMAGE_IS_COMPRESSED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %30
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* @BLCKSZ, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = call i64 @pglz_decompress(i8* %46, i32 %49, i8* %51, i64 %56, i32 1)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %45
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 32
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @report_invalid_record(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i64 %68)
  store i32 0, i32* %4, align 4
  br label %124

70:                                               ; preds = %45
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %70, %30
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i64, i64* @BLCKSZ, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  br label %123

83:                                               ; preds = %73
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @memcpy(i8* %84, i8* %85, i64 %88)
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @MemSet(i8* %94, i32 0, i64 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = getelementptr inbounds i8, i8* %99, i64 %106
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i64, i64* @BLCKSZ, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = sub nsw i64 %113, %120
  %122 = call i32 @memcpy(i8* %107, i8* %112, i64 %121)
  br label %123

123:                                              ; preds = %83, %78
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %59, %29, %19
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @pglz_decompress(i8*, i32, i8*, i64, i32) #1

declare dso_local i32 @report_invalid_record(%struct.TYPE_6__*, i8*, i32, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @MemSet(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
