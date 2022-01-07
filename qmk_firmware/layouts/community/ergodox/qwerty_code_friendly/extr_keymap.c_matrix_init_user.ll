; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/qwerty_code_friendly/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/qwerty_code_friendly/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfq_word_lut_title_caps = common dso_local global i8* null, align 8
@cfq_word_lut = common dso_local global i8*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i8*, i8** @cfq_word_lut_title_caps, align 8
  store i8* %9, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %37, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 26
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i8***, i8**** @cfq_word_lut, align 8
  %15 = getelementptr inbounds i8**, i8*** %14, i64 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = load i8***, i8**** @cfq_word_lut, align 8
  %23 = getelementptr inbounds i8**, i8*** %22, i64 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %21, i8** %27, align 8
  br label %28

28:                                               ; preds = %35, %13
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  %31 = load i8, i8* %29, align 1
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %1, align 8
  store i8 %31, i8* %32, align 1
  %34 = icmp ne i8 %31, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %28

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %10

40:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %109, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 26
  br i1 %43, label %44, label %112

44:                                               ; preds = %41
  %45 = load i8***, i8**** @cfq_word_lut, align 8
  %46 = getelementptr inbounds i8**, i8*** %45, i64 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %108

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %102, %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sge i32 %63, 97
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 122
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ false, %60 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 65
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 90
  br label %82

82:                                               ; preds = %77, %70
  %83 = phi i1 [ false, %70 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 32
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  br label %96

96:                                               ; preds = %90, %87, %82
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ true, %96 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %6, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  br label %56

107:                                              ; preds = %56
  br label %108

108:                                              ; preds = %107, %44
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %41

112:                                              ; preds = %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
