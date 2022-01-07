; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_dump_imgfmt_desc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_dump_imgfmt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_imgfmt_desc = type { i32, i64**, i32, i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_rgba\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%d planes %dx%d %d/%d [%s] (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_dump_imgfmt_desc(%struct.ra* %0, %struct.ra_imgfmt_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_imgfmt_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_imgfmt_desc* %1, %struct.ra_imgfmt_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast [80 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 80, i1 false)
  %14 = bitcast [80 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 80, i1 false)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %89, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %18 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %26 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %25, i32 80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %28 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %27, i32 80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %21
  %30 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %30, i8 0, i64 5, i1 false)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %51, %29
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %36 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %35, i32 0, i32 1
  %37 = load i64**, i64*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %37, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.1, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 %49
  store i8 %47, i8* %50, align 1
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %31

54:                                               ; preds = %31
  store i32 3, i32* %12, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 95
  br label %65

65:                                               ; preds = %58, %55
  %66 = phi i1 [ false, %55 ], [ %64, %58 ]
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 %69
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %12, align 4
  br label %55

74:                                               ; preds = %65
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %76 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %77 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %75, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %79 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %80 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %79, i32 0, i32 6
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, i32, i8*, ...) @mp_snprintf_cat(i8* %78, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %15

92:                                               ; preds = %15
  %93 = load %struct.ra*, %struct.ra** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %96 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %99 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %102 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %105 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %108 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %112 = call i32 @MP_MSG(%struct.ra* %93, i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %100, i32 %103, i32 %106, i32 %109, i8* %110, i8* %111)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_snprintf_cat(i8*, i32, i8*, ...) #2

declare dso_local i32 @MP_MSG(%struct.ra*, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
