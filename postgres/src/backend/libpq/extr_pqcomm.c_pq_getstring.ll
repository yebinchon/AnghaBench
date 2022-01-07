; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_getstring.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_getstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqCommReadingMsg = common dso_local global i32 0, align 4
@PqRecvPointer = common dso_local global i32 0, align 4
@PqRecvLength = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@PqRecvBuffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_getstring(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @PqCommReadingMsg, align 4
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @resetStringInfo(i32 %7)
  br label %9

9:                                                ; preds = %51, %1
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i32, i32* @PqRecvPointer, align 4
  %12 = load i32, i32* @PqRecvLength, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = call i64 (...) @pq_recvbuf()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EOF, align 4
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %14
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* @PqRecvPointer, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %48, %20
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PqRecvLength, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i8*, i8** @PqRecvBuffer, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** @PqRecvBuffer, align 8
  %37 = load i32, i32* @PqRecvPointer, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PqRecvPointer, align 4
  %42 = sub nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = call i32 @appendBinaryStringInfo(i32 %35, i8* %39, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @PqRecvPointer, align 4
  store i32 0, i32* %2, align 4
  br label %62

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load i32, i32* %3, align 4
  %53 = load i8*, i8** @PqRecvBuffer, align 8
  %54 = load i32, i32* @PqRecvPointer, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* @PqRecvLength, align 4
  %58 = load i32, i32* @PqRecvPointer, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @appendBinaryStringInfo(i32 %52, i8* %56, i32 %59)
  %61 = load i32, i32* @PqRecvLength, align 4
  store i32 %61, i32* @PqRecvPointer, align 4
  br label %9

62:                                               ; preds = %34, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @resetStringInfo(i32) #1

declare dso_local i64 @pq_recvbuf(...) #1

declare dso_local i32 @appendBinaryStringInfo(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
