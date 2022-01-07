; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintQueryStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintQueryStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@pset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_HTML = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"</p>\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LASTOID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @PrintQueryStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintQueryStatus(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [16 x i8], align 16
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 4), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3, i32 0, i32 0), align 8
  %8 = load i64, i64* @PRINT_HTML, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 8
  %12 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @PQcmdStatus(i32* %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 8
  %16 = call i32 @html_escaped_print(i8* %14, i64 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 8
  %18 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %24

19:                                               ; preds = %6
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i8* @PQcmdStatus(i32* %21)
  %23 = call i32 @fprintf(i64 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %19, %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i8* @PQcmdStatus(i32* %30)
  %32 = call i32 @fprintf(i64 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @PQoidValue(i32* %35)
  %37 = trunc i64 %36 to i32
  %38 = call i32 @snprintf(i8* %34, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %41 = call i32 @SetVariable(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  ret void
}

declare dso_local i32 @fputs(i8*, i64) #1

declare dso_local i32 @html_escaped_print(i8*, i64) #1

declare dso_local i8* @PQcmdStatus(i32*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @PQoidValue(i32*) #1

declare dso_local i32 @SetVariable(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
