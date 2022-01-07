; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_draw_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_draw_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curx = common dso_local global i32 0, align 4
@cury = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, i8*, i32, i32)* @draw_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_row(i8 signext %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca [7 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %18 = load i8, i8* %6, align 1
  store i8 %18, i8* %17, align 1
  %19 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %19, align 1
  %20 = bitcast [7 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 7, i1 false)
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %67, %5
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 %41
  store i8 1, i8* %42, align 1
  br label %43

43:                                               ; preds = %39, %32, %24
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51, %43
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %21

70:                                               ; preds = %21
  %71 = load i32, i32* %13, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %139

73:                                               ; preds = %70
  %74 = load i32, i32* @curx, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  %79 = icmp sgt i32 %74, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @cury, align 4
  %86 = call i32 @send_goto_xy(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load i32, i32* @curx, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @cury, align 4
  %98 = call i32 @send_goto_xy(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i32, i32* @curx, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @send_goto_xy(i32 %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @curx, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @send_deletes(i32 %108)
  %110 = load i32, i32* @curx, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %111, %112
  %114 = sub nsw i32 %110, %113
  %115 = call i32 @send_backspaces(i32 %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %135, %99
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 @tetris_send_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %132

129:                                              ; preds = %121
  %130 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %131 = call i32 @tetris_send_string(i8* %130)
  br label %132

132:                                              ; preds = %129, %127
  %133 = load i32, i32* @curx, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @curx, align 4
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %117

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %70
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @send_goto_xy(i32, i32) #2

declare dso_local i32 @send_deletes(i32) #2

declare dso_local i32 @send_backspaces(i32) #2

declare dso_local i32 @tetris_send_string(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
