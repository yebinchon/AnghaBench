; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_gindesc.c_desc_recompress_leaf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_gindesc.c_desc_recompress_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c" %d segments:\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" %d (add %d items)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" %d (delete)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" %d (insert)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" %d (replace)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c" %d unknown action %d ???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @desc_recompress_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_recompress_leaf(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = bitcast %struct.TYPE_3__* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %86, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = bitcast i8* %26 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = bitcast i8* %30 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %48

39:                                               ; preds = %36, %25
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @SizeOfGinPostingList(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @SHORTALIGN(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %39, %36
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @memcpy(i32* %9, i8* %52, i32 4)
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %55, i8** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %51, %48
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %80 [
    i32 131, label %63
    i32 130, label %68
    i32 129, label %72
    i32 128, label %76
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %85

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %85

72:                                               ; preds = %61
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %85

76:                                               ; preds = %61
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %85

80:                                               ; preds = %61
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83)
  br label %89

85:                                               ; preds = %76, %72, %68, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %19

89:                                               ; preds = %80, %19
  ret void
}

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @SizeOfGinPostingList(i32*) #1

declare dso_local i32 @SHORTALIGN(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
