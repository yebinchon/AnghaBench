; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_info_cb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SSL: handshake start\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SSL: handshake done\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SSL: accept loop\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SSL: accept exit (%d)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SSL: connect loop\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SSL: connect exit (%d)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"SSL: read alert (0x%04x)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"SSL: write alert (0x%04x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_cb(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %44 [
    i32 130, label %8
    i32 131, label %12
    i32 134, label %16
    i32 135, label %20
    i32 132, label %25
    i32 133, label %29
    i32 129, label %34
    i32 128, label %39
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @DEBUG4, align 4
  %10 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @ereport(i32 %9, i32 %10)
  br label %44

12:                                               ; preds = %3
  %13 = load i32, i32* @DEBUG4, align 4
  %14 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %13, i32 %14)
  br label %44

16:                                               ; preds = %3
  %17 = load i32, i32* @DEBUG4, align 4
  %18 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %17, i32 %18)
  br label %44

20:                                               ; preds = %3
  %21 = load i32, i32* @DEBUG4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = call i32 @ereport(i32 %21, i32 %23)
  br label %44

25:                                               ; preds = %3
  %26 = load i32, i32* @DEBUG4, align 4
  %27 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %26, i32 %27)
  br label %44

29:                                               ; preds = %3
  %30 = load i32, i32* @DEBUG4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = call i32 @ereport(i32 %30, i32 %32)
  br label %44

34:                                               ; preds = %3
  %35 = load i32, i32* @DEBUG4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %35, i32 %37)
  br label %44

39:                                               ; preds = %3
  %40 = load i32, i32* @DEBUG4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %3, %39, %34, %29, %25, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
