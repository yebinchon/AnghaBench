; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_is_select_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_is_select_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_select_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_select_command(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @skip_white_space(i8* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %17

16:                                               ; preds = %5
  br label %18

17:                                               ; preds = %13
  br label %5

18:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isalpha(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %33 = call i64 @PQmblen(i8* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @pg_strncasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %55

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @pg_strncasecmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %49, %46
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %45
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i8* @skip_white_space(i8*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @PQmblen(i8*, i32) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
