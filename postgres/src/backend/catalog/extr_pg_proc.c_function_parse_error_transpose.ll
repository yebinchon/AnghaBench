; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_proc.c_function_parse_error_transpose.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_proc.c_function_parse_error_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@ActivePortal = common dso_local global %struct.TYPE_2__* null, align 8
@PORTAL_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @function_parse_error_transpose(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @geterrposition()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i32 (...) @getinternalerrposition()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %50

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ActivePortal, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ActivePortal, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORTAL_ACTIVE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ActivePortal, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @match_prosrc_to_query(i8* %32, i8* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @errposition(i32 %39)
  %41 = call i32 @internalerrposition(i32 0)
  %42 = call i32 @internalerrquery(i8* null)
  br label %49

43:                                               ; preds = %25
  %44 = call i32 @errposition(i32 0)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @internalerrposition(i32 %45)
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @internalerrquery(i8* %47)
  br label %49

49:                                               ; preds = %43, %38
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @geterrposition(...) #1

declare dso_local i32 @getinternalerrposition(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @match_prosrc_to_query(i8*, i8*, i32) #1

declare dso_local i32 @errposition(i32) #1

declare dso_local i32 @internalerrposition(i32) #1

declare dso_local i32 @internalerrquery(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
