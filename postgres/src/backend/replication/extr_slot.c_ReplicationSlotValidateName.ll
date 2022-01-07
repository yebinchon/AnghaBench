; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotValidateName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotValidateName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"replication slot name \22%s\22 is too short\00", align 1
@NAMEDATALEN = common dso_local global i64 0, align 8
@ERRCODE_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"replication slot name \22%s\22 is too long\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"replication slot name \22%s\22 contains invalid character\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"Replication slot names may only contain lower case letters, numbers, and the underscore character.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReplicationSlotValidateName(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @ereport(i32 %11, i32 %15)
  store i32 0, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* @NAMEDATALEN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ERRCODE_NAME_TOO_LONG, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  store i32 0, i32* %3, align 4
  br label %73

29:                                               ; preds = %17
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %69, %29
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 97
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 122
  br i1 %44, label %68, label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 57
  br i1 %54, label %68, label %55

55:                                               ; preds = %50, %45
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 95
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = call i32 @errhint(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %61, i32 %66)
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %55, %50, %40
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %31

72:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %60, %22, %10
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
