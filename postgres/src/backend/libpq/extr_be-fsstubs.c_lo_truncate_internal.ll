; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-fsstubs.c_lo_truncate_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-fsstubs.c_lo_truncate_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@cookies_size = common dso_local global i64 0, align 8
@cookies = common dso_local global %struct.TYPE_4__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid large-object descriptor: %d\00", align 1
@IFS_WRLOCK = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"large object descriptor %d was not opened for writing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @lo_truncate_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_truncate_internal(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = icmp ult i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @cookies_size, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cookies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12, %8, %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 @ereport(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cookies, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFS_WRLOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %39 = call i32 @errcode(i32 %38)
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = call i32 @ereport(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @inv_truncate(%struct.TYPE_4__* %44, i32 %45)
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

declare dso_local i32 @inv_truncate(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
