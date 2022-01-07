; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_elog_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_elog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i32*, i32 }

@ErrorContext = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"error occurred at %s:%d before error message processing is available\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(unknown file)\00", align 1
@errordata_stack_depth = common dso_local global i64 0, align 8
@ERRORDATA_STACK_SIZE = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ERRORDATA_STACK_SIZE exceeded\00", align 1
@errordata = common dso_local global %struct.TYPE_3__* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elog_start(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** @ErrorContext, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  br label %17

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %16 ]
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @write_stderr(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19)
  %21 = call i32 @exit(i32 2) #3
  unreachable

22:                                               ; preds = %3
  %23 = load i64, i64* @errordata_stack_depth, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @errordata_stack_depth, align 8
  %25 = load i64, i64* @ERRORDATA_STACK_SIZE, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  store i64 -1, i64* @errordata_stack_depth, align 8
  %28 = load i32, i32* @PANIC, align 4
  %29 = call i32 @errmsg_internal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @errordata, align 8
  %33 = load i64, i64* @errordata_stack_depth, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strrchr(i8* %38, i8 signext 47)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @errno, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** @ErrorContext, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  ret void
}

declare dso_local i32 @write_stderr(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
