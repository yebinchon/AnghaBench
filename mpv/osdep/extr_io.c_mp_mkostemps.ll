; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_io.c_mp_mkostemps.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_io.c_mp_mkostemps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%06zx\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_mkostemps(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [7 x i8], align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 6, %17
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 6, %24
  %26 = sext i32 %25 to i64
  %27 = sub i64 %23, %26
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %21
  %31 = phi i8* [ %28, %21 ], [ null, %29 ]
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = load i64, i64* @EINVAL, align 8
  store i64 %39, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %77

40:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @UINT32_MAX, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = call i64 (...) @rand()
  store i64 %46, i64* %11, align 8
  %47 = bitcast [7 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 7, i1 false)
  %48 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @snprintf(i8* %48, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %53 = call i32 @memcpy(i8* %51, i8* %52, i32 6)
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @O_RDWR, align 4
  %56 = load i32, i32* @O_CREAT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @O_EXCL, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @open(i8* %54, i32 %61, i32 384)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %45
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EEXIST, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %45
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %41

75:                                               ; preds = %41
  %76 = load i64, i64* @EEXIST, align 8
  store i64 %76, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %69, %38
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @rand(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
