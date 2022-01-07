; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_window_rating.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_window_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@WINDOW_PRIORITY_EXE = common dso_local global i32 0, align 4
@WINDOW_PRIORITY_CLASS = common dso_local global i32 0, align 4
@WINDOW_PRIORITY_TITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i8*, i32)* @window_rating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_rating(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dstr, align 4
  %15 = alloca %struct.dstr, align 4
  %16 = alloca %struct.dstr, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = bitcast %struct.dstr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = bitcast %struct.dstr* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = bitcast %struct.dstr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  store i32 2147483647, i32* %17, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @get_window_exe(%struct.dstr* %16, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32 2147483647, i32* %7, align 4
  br label %110

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @get_window_title(%struct.dstr* %15, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @get_window_class(%struct.dstr* %14, i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @dstr_cmpi(%struct.dstr* %14, i8* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %18, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @dstr_cmpi(%struct.dstr* %16, i8* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %19, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @dstr_cmpi(%struct.dstr* %15, i8* %41)
  %43 = call i32 @abs(i64 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %28
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @WINDOW_PRIORITY_EXE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 2147483647, i32* %17, align 4
  br label %59

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %20, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 2147483647
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %54, %53
  br label %105

60:                                               ; preds = %28
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @WINDOW_PRIORITY_CLASS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %20, align 4
  br label %70

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 2147483647, %69 ]
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 2147483647
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 4096
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %77, %74, %70
  br label %104

81:                                               ; preds = %60
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @WINDOW_PRIORITY_TITLE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* %20, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 2147483647
  store i32 %89, i32* %17, align 4
  br label %103

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @WINDOW_PRIORITY_EXE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %20, align 4
  br label %100

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 2147483647, %99 ]
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %100, %90
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %59
  %106 = call i32 @dstr_free(%struct.dstr* %14)
  %107 = call i32 @dstr_free(%struct.dstr* %15)
  %108 = call i32 @dstr_free(%struct.dstr* %16)
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %27
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_window_exe(%struct.dstr*, i32) #2

declare dso_local i32 @get_window_title(%struct.dstr*, i32) #2

declare dso_local i32 @get_window_class(%struct.dstr*, i32) #2

declare dso_local i64 @dstr_cmpi(%struct.dstr*, i8*) #2

declare dso_local i32 @abs(i64) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
