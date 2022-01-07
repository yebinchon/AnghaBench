; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/procfile/extr_procfile.c_procfile_set_open_close.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/procfile/extr_procfile.c_procfile_set_open_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@PF_CHAR_IS_OPEN = common dso_local global i64 0, align 8
@PF_CHAR_IS_CLOSE = common dso_local global i64 0, align 8
@PF_CHAR_IS_WORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procfile_set_open_close(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %7, align 8
  store i32 256, i32* %8, align 4
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i64*, i64** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PF_CHAR_IS_OPEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i64*, i64** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PF_CHAR_IS_CLOSE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ true, %17 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* @PF_CHAR_IS_WORD, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  br label %13

45:                                               ; preds = %13
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %55, %52, %48, %45
  %61 = phi i1 [ true, %52 ], [ true, %48 ], [ true, %45 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %96

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %9, align 8
  br label %68

68:                                               ; preds = %72, %66
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i64, i64* @PF_CHAR_IS_OPEN, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %74, i64 %79
  store i64 %73, i64* %80, align 8
  br label %68

81:                                               ; preds = %68
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %9, align 8
  br label %83

83:                                               ; preds = %87, %81
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* @PF_CHAR_IS_CLOSE, align 8
  %89 = load i64*, i64** %7, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %89, i64 %94
  store i64 %88, i64* %95, align 8
  br label %83

96:                                               ; preds = %65, %83
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
