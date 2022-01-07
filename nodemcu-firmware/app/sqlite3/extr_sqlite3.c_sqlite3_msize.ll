; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_msize.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_msize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i8*)* }

@MEMTYPE_HEAP = common dso_local global i64 0, align 8
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_msize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i64, i64* @MEMTYPE_HEAP, align 8
  %5 = xor i64 %4, -1
  %6 = trunc i64 %5 to i32
  %7 = call i32 @sqlite3MemdebugNoType(i8* %3, i32 %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = load i64, i64* @MEMTYPE_HEAP, align 8
  %11 = call i32 @sqlite3MemdebugHasType(i8* %9, i64 %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 %16(i8* %17)
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  ret i32 %21
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3MemdebugNoType(i8*, i32) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
