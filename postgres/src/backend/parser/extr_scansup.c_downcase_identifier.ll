; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_scansup.c_downcase_identifier.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_scansup.c_downcase_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMEDATALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @downcase_identifier(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @palloc(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = call i32 (...) @pg_database_encoding_max_length()
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %62, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %12, align 1
  %29 = load i8, i8* %12, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load i8, i8* %12, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 90
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8, i8* %12, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %38, 32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  br label %56

41:                                               ; preds = %32, %23
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i8, i8* %12, align 1
  %46 = call i64 @IS_HIGHBIT_SET(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8, i8* %12, align 1
  %50 = call i64 @isupper(i8 zeroext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8, i8* %12, align 1
  %54 = call zeroext i8 @tolower(i8 zeroext %53)
  store i8 %54, i8* %12, align 1
  br label %55

55:                                               ; preds = %52, %48, %44, %41
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i8, i8* %12, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %19

65:                                               ; preds = %19
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @NAMEDATALEN, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @truncate_identifier(i8* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %73, %65
  %82 = load i8*, i8** %9, align 8
  ret i8* %82
}

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i64 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @truncate_identifier(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
