; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_peekbyte.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_peekbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PqCommReadingMsg = common dso_local global i32 0, align 4
@PqRecvPointer = common dso_local global i64 0, align 8
@PqRecvLength = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@PqRecvBuffer = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_peekbyte() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PqCommReadingMsg, align 4
  %3 = call i32 @Assert(i32 %2)
  br label %4

4:                                                ; preds = %13, %0
  %5 = load i64, i64* @PqRecvPointer, align 8
  %6 = load i64, i64* @PqRecvLength, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = call i64 (...) @pq_recvbuf()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @EOF, align 4
  store i32 %12, i32* %1, align 4
  br label %21

13:                                               ; preds = %8
  br label %4

14:                                               ; preds = %4
  %15 = load i64*, i64** @PqRecvBuffer, align 8
  %16 = load i64, i64* @PqRecvPointer, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i8
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pq_recvbuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
