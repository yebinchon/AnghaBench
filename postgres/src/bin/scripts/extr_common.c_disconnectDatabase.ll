; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_disconnectDatabase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_disconnectDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PQTRANS_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disconnectDatabase(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @PQtransactionStatus(i32* %9)
  %11 = load i64, i64* @PQTRANS_ACTIVE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @PQgetCancel(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %20 = call i32 @PQcancel(i32* %18, i8* %19, i32 256)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @PQfreeCancel(i32* %21)
  br label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @PQfinish(i32* %25)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PQtransactionStatus(i32*) #1

declare dso_local i32* @PQgetCancel(i32*) #1

declare dso_local i32 @PQcancel(i32*, i8*, i32) #1

declare dso_local i32 @PQfreeCancel(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
