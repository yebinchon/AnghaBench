; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_mic2latin_with_table.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_mic2latin_with_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_MULE_INTERNAL = common dso_local global i32 0, align 4
@HIGHBIT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic2latin_with_table(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  br label %16

16:                                               ; preds = %95, %6
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %13, align 1
  %22 = load i8, i8* %13, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @report_invalid_encoding(i32 %26, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i8, i8* %13, align 1
  %32 = call i32 @IS_HIGHBIT_SET(i8 zeroext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %13, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %95

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @pg_mic_mblen(i8* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @report_invalid_encoding(i32 %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %81, label %56

56:                                               ; preds = %53
  %57 = load i8, i8* %13, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @IS_HIGHBIT_SET(i8 zeroext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @HIGHBIT, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %68, i64 %76
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %14, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %67, %61, %56, %53
  %82 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @report_untranslatable_char(i32 %82, i32 %83, i8* %84, i32 %85)
  br label %96

87:                                               ; preds = %67
  %88 = load i8, i8* %14, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 2
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %87, %34
  br label %16

96:                                               ; preds = %81, %16
  %97 = load i8*, i8** %8, align 8
  store i8 0, i8* %97, align 1
  ret void
}

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i32 @pg_mic_mblen(i8*) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
