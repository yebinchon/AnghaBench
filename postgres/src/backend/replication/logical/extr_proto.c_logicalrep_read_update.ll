; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_read_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_read_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"expected action 'N', 'O' or 'K', got %c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"expected action 'N', got %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logicalrep_read_update(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pq_getmsgint(i32 %11, i32 4)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call signext i8 @pq_getmsgbyte(i32 %13)
  store i8 %14, i8* %9, align 1
  %15 = load i8, i8* %9, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 75
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i8, i8* %9, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 79
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8, i8* %9, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 78
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i8, i8* %9, align 1
  %29 = call i32 @elog(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8 signext %28)
  br label %30

30:                                               ; preds = %26, %22, %18, %4
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 75
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 79
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @logicalrep_read_tuple(i32 %39, i32* %40)
  %42 = load i32*, i32** %6, align 8
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call signext i8 @pq_getmsgbyte(i32 %43)
  store i8 %44, i8* %9, align 1
  br label %47

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 78
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i8, i8* %9, align 1
  %54 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8 signext %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @logicalrep_read_tuple(i32 %56, i32* %57)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @pq_getmsgint(i32, i32) #1

declare dso_local signext i8 @pq_getmsgbyte(i32) #1

declare dso_local i32 @elog(i32, i8*, i8 signext) #1

declare dso_local i32 @logicalrep_read_tuple(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
