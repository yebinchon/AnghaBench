; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_proc.c_match_prosrc_to_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_proc.c_match_prosrc_to_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @match_prosrc_to_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_prosrc_to_query(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %94, %3
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 36
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @strncmp(i8* %32, i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %42, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %99

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @pg_mbstrlen_with_len(i8* %57, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %10, align 4
  br label %93

63:                                               ; preds = %41, %31, %23
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 39
  br i1 %70, label %71, label %92

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @match_prosrc_to_literal(i8* %72, i8* %77, i32 %78, i32* %12)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %99

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @pg_mbstrlen_with_len(i8* %86, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %85, %71, %63
  br label %93

93:                                               ; preds = %92, %56
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %17

97:                                               ; preds = %17
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %84, %55
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pg_mbstrlen_with_len(i8*, i32) #1

declare dso_local i64 @match_prosrc_to_literal(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
