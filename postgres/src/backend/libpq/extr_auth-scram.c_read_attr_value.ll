; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_read_attr_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_read_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"malformed SCRAM message\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Expected attribute \22%c\22 but found \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Expected character \22=\22 for attribute \22%c\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8)* @read_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_attr_value(i8** %0, i8 signext %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i8, i8* %4, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @sanitize_char(i8 signext %22)
  %24 = call i32 (i8*, i8, ...) @errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 signext %20, i32 %23)
  %25 = call i32 @ereport(i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %15, %2
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 61
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i8, i8* %4, align 1
  %39 = call i32 (i8*, i8, ...) @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8 signext %38)
  %40 = call i32 @ereport(i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %57, %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %45

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8**, i8*** %3, align 8
  store i8* %67, i8** %68, align 8
  br label %72

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = load i8**, i8*** %3, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8 signext, ...) #1

declare dso_local i32 @sanitize_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
