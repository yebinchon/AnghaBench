; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_checkRef.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_checkRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"invalid page number %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"2nd reference to page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i8*)* @checkRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkRef(%struct.TYPE_6__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %36

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @checkAppendMsg(%struct.TYPE_6__* %18, i8* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32 1, i32* %4, align 4
  br label %36

22:                                               ; preds = %11
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @getPageReferenced(%struct.TYPE_6__* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @checkAppendMsg(%struct.TYPE_6__* %28, i8* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store i32 1, i32* %4, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @setPageReferenced(%struct.TYPE_6__* %33, i64 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %27, %17, %10
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @checkAppendMsg(%struct.TYPE_6__*, i8*, i8*, i64) #1

declare dso_local i64 @getPageReferenced(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @setPageReferenced(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
