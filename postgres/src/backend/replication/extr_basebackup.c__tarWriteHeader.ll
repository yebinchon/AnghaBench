; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c__tarWriteHeader.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c__tarWriteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"file name too long for tar format: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"symbolic link target too long for tar format: file name \22%s\22, target \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unrecognized tar error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.stat*, i32)* @_tarWriteHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_tarWriteHeader(i8* %0, i8* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.stat*, %struct.stat** %7, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.stat*, %struct.stat** %7, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stat*, %struct.stat** %7, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stat*, %struct.stat** %7, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stat*, %struct.stat** %7, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tarCreateHeader(i8* %14, i8* %15, i8* %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 130, label %35
    i32 128, label %40
  ]

34:                                               ; preds = %13
  br label %50

35:                                               ; preds = %13
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %36, i32 %38)
  br label %50

40:                                               ; preds = %13
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %50

46:                                               ; preds = %13
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %40, %35, %34
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %52 = call i32 @pq_putmessage(i8 signext 100, i8* %51, i32 512)
  br label %53

53:                                               ; preds = %50, %4
  ret i32 512
}

declare dso_local i32 @tarCreateHeader(i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pq_putmessage(i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
