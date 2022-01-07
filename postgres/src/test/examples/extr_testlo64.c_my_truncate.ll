; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo64.c_my_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo64.c_my_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INV_READ = common dso_local global i32 0, align 4
@INV_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot open large object %u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error in lo_truncate64: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @my_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_truncate(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @INV_READ, align 4
  %11 = load i32, i32* @INV_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @lo_open(i32* %8, i32 %9, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @lo_truncate64(i32* %21, i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @PQerrorMessage(i32* %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @lo_close(i32* %32, i32 %33)
  ret void
}

declare dso_local i32 @lo_open(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @lo_truncate64(i32*, i32, i32) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @lo_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
