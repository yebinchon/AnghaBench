; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_client_encoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_client_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Conversion between %s and %s is not supported.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot change \22client_encoding\22 now.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNICODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_client_encoding(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @pg_valid_client_encoding(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @pg_encoding_to_char(i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @PrepareClientEncoding(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = call i64 (...) @IsTransactionState()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %27 = call i32 @GUC_check_errcode(i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (...) @GetDatabaseEncodingName()
  %30 = call i32 (i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  br label %33

31:                                               ; preds = %22
  %32 = call i32 (i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  store i32 0, i32* %4, align 4
  br label %69

34:                                               ; preds = %16
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @strdup(i8* %49)
  %51 = load i8**, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %69

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %40, %34
  %58 = call i8* @malloc(i32 4)
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast i8* %67 to i32*
  store i32 %65, i32* %68, align 4
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %63, %55, %33, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @pg_valid_client_encoding(i8*) #1

declare dso_local i8* @pg_encoding_to_char(i32) #1

declare dso_local i64 @PrepareClientEncoding(i32) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @GUC_check_errcode(i32) #1

declare dso_local i32 @GUC_check_errdetail(i8*, ...) #1

declare dso_local i32 @GetDatabaseEncodingName(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
