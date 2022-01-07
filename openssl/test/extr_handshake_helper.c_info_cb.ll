; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_info_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@SSL_CB_ALERT = common dso_local global i32 0, align 4
@ex_data_idx = common dso_local global i32 0, align 4
@SSL_CB_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_cb(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SSL_CB_ALERT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @ex_data_idx, align 4
  %15 = call i64 @SSL_get_ex_data(i32* %13, i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SSL_CB_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SSL_alert_type_string(i32 %25)
  %27 = call i64 @strcmp(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SSL_alert_desc_string(i32 %30)
  %32 = call i64 @strcmp(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %21
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %44

40:                                               ; preds = %12
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %3
  ret void
}

declare dso_local i64 @SSL_get_ex_data(i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SSL_alert_type_string(i32) #1

declare dso_local i32 @SSL_alert_desc_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
