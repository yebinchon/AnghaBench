; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_buffile.c_BufFileOpenShared.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_buffile.c_BufFileOpenShared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32, i32, i32* }

@MAXPGPATH = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"could not open temporary file \22%s\22 from BufFile \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BufFileOpenShared(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 16, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64* @palloc(i32 %18)
  store i64* %19, i64** %9, align 8
  br label %20

20:                                               ; preds = %51, %2
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %8, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64* @repalloc(i64* %28, i32 %32)
  store i64* %33, i64** %9, align 8
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @SharedSegmentName(i8* %14, i8* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @SharedFileSetOpen(i32* %38, i8* %14)
  %40 = load i64*, i64** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %20

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @ERROR, align 4
  %60 = call i32 (...) @errcode_for_file_access()
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %61)
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.TYPE_4__* @makeBufFileCommon(i32 %65)
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %5, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64* %67, i64** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i32* %72, i32** %74, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @pstrdup(i8* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  ret %struct.TYPE_4__* %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @palloc(i32) #2

declare dso_local i64* @repalloc(i64*, i32) #2

declare dso_local i32 @SharedSegmentName(i8*, i8*, i32) #2

declare dso_local i64 @SharedFileSetOpen(i32*, i8*) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_4__* @makeBufFileCommon(i32) #2

declare dso_local i32 @pstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
