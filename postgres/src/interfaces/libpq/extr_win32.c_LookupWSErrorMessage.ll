; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_win32.c_LookupWSErrorMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_win32.c_LookupWSErrorMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WSErrorEntry = type { i64, i64 }

@WSErrors = common dso_local global %struct.WSErrorEntry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @LookupWSErrorMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LookupWSErrorMessage(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.WSErrorEntry*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.WSErrorEntry*, %struct.WSErrorEntry** @WSErrors, align 8
  store %struct.WSErrorEntry* %7, %struct.WSErrorEntry** %6, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.WSErrorEntry*, %struct.WSErrorEntry** %6, align 8
  %10 = getelementptr inbounds %struct.WSErrorEntry, %struct.WSErrorEntry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.WSErrorEntry*, %struct.WSErrorEntry** %6, align 8
  %15 = getelementptr inbounds %struct.WSErrorEntry, %struct.WSErrorEntry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.WSErrorEntry*, %struct.WSErrorEntry** %6, align 8
  %22 = getelementptr inbounds %struct.WSErrorEntry, %struct.WSErrorEntry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @strcpy(i8* %20, i64 %23)
  store i32 1, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.WSErrorEntry*, %struct.WSErrorEntry** %6, align 8
  %28 = getelementptr inbounds %struct.WSErrorEntry, %struct.WSErrorEntry* %27, i32 1
  store %struct.WSErrorEntry* %28, %struct.WSErrorEntry** %6, align 8
  br label %8

29:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @strcpy(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
