; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqformat.c_pq_getmsgint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqformat.c_pq_getmsgint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported integer size %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_getmsgint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %27 [
    i32 1, label %10
    i32 2, label %15
    i32 4, label %21
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pq_copymsgbytes(i32 %11, i8* %6, i32 1)
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %5, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = bitcast i32* %7 to i8*
  %18 = call i32 @pq_copymsgbytes(i32 %16, i8* %17, i32 2)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pg_ntoh16(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = bitcast i32* %8 to i8*
  %24 = call i32 @pq_copymsgbytes(i32 %22, i8* %23, i32 4)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pg_ntoh32(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %21, %15, %10
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @pq_copymsgbytes(i32, i8*, i32) #1

declare dso_local i32 @pg_ntoh16(i32) #1

declare dso_local i32 @pg_ntoh32(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
