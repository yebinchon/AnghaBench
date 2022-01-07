; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ProcessKeepaliveMsg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ProcessKeepaliveMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32*)*, i32 (...)* }

@.str = private unnamed_addr constant [31 x i8] c"streaming header too small: %d\00", align 1
@still_sending = common dso_local global i64 0, align 8
@reportFlushPosition = common dso_local global i64 0, align 8
@lastFlushPosition = common dso_local global i64 0, align 8
@walfile = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %s\00", align 1
@current_walfile_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i8*, i32, i64, i32*)* @ProcessKeepaliveMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessKeepaliveMsg(i32* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = add nsw i32 %17, 8
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %14, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %7, align 4
  br label %83

28:                                               ; preds = %6
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %28
  %38 = load i64, i64* @still_sending, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = load i64, i64* @reportFlushPosition, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i64, i64* @lastFlushPosition, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i32*, i32** @walfile, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64 (i32*)*, i64 (i32*)** %54, align 8
  %56 = load i32*, i32** @walfile, align 8
  %57 = call i64 %55(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load i32, i32* @current_walfile_name, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32 (...)*, i32 (...)** %64, align 8
  %66 = call i32 (...) %65()
  %67 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %66)
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %50
  %70 = load i64, i64* %12, align 8
  store i64 %70, i64* @lastFlushPosition, align 8
  br label %71

71:                                               ; preds = %69, %47, %43, %40
  %72 = call i32 (...) @feGetCurrentTimestamp()
  store i32 %72, i32* %16, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @sendFeedback(i32* %73, i64 %74, i32 %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %83

79:                                               ; preds = %71
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %37, %28
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %78, %25
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @pg_log_fatal(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @feGetCurrentTimestamp(...) #1

declare dso_local i32 @sendFeedback(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
