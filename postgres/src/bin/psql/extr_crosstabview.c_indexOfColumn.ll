; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_indexOfColumn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_indexOfColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\\crosstabview: column number %d is out of range 1..%d\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\\crosstabview: ambiguous column name: \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\\crosstabview: column name not found: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @indexOfColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indexOfColumn(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strspn(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @atoi(i8* %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @PQnfields(i32* %27)
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PQnfields(i32* %33)
  %35 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  store i32 -1, i32* %3, align 4
  br label %74

36:                                               ; preds = %25
  br label %72

37:                                               ; preds = %13, %2
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %40 = call i32 @dequote_downcase_identifier(i8* %38, i32 1, i32 %39)
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %62, %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @PQnfields(i32* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @PQfname(i32* %48, i32 %49)
  %51 = call i64 @strcmp(i8* %47, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 -1, i32* %3, align 4
  br label %74

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  store i32 -1, i32* %3, align 4
  br label %74

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %36
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %68, %56, %30
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @dequote_downcase_identifier(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @PQfname(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
