; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_misc.c_grub_strtoull.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_misc.c_grub_strtoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRUB_ERR_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"overflow is detected\00", align 1
@GRUB_ERR_BAD_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unrecognized number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @grub_strtoull(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @grub_isspace(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %11

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %66

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 120
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  store i32 16, i32* %7, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %44, %41
  br label %65

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 48
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 55
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 8, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %57, %51, %48
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 10, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @grub_tolower(i8 signext %77)
  %79 = sub i64 %78, 48
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ugt i64 %80, 9
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, -39
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp uge i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %110

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %75
  store i32 1, i32* %9, align 4
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 -1, %93
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @grub_divmod64(i64 %94, i32 %95, i32 0)
  %97 = icmp ugt i64 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @GRUB_ERR_OUT_OF_RANGE, align 4
  %100 = call i32 @grub_error(i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %4, align 8
  br label %124

101:                                              ; preds = %91
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %102, %104
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %105, %106
  store i64 %107, i64* %8, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  br label %71

110:                                              ; preds = %89, %71
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @GRUB_ERR_BAD_NUMBER, align 4
  %115 = call i32 @grub_error(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %124

116:                                              ; preds = %110
  %117 = load i8**, i8*** %6, align 8
  %118 = icmp ne i8** %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i8*, i8** %5, align 8
  %121 = load i8**, i8*** %6, align 8
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %122, %113, %98
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i64 @grub_isspace(i8 signext) #1

declare dso_local i64 @grub_tolower(i8 signext) #1

declare dso_local i64 @grub_divmod64(i64, i32, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
